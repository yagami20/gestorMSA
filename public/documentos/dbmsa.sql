-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2019 a las 21:02:34
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbmsa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacions`
--

CREATE TABLE `aplicacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `DesApp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoSW` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaReproduc` date NOT NULL,
  `fotoApp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examinar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arch_planos`
--

CREATE TABLE `arch_planos` (
  `id` int(10) UNSIGNED NOT NULL,
  `TipoArchivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DesArchP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaGener` date NOT NULL,
  `objPlano` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoObjP` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autors`
--

CREATE TABLE `autors` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombreA` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombreC` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codQR` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_contenidos`
--

CREATE TABLE `caja_contenidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idContenido` int(10) UNSIGNED NOT NULL,
  `idCaja` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_kits`
--

CREATE TABLE `contenido_kits` (
  `id` int(10) UNSIGNED NOT NULL,
  `piezaArmar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrucciones` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tutoDigital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enlaceWeb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoMateria` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCaja` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grafico3ds`
--

CREATE TABLE `grafico3ds` (
  `id` int(10) UNSIGNED NOT NULL,
  `fechaCreacion` date NOT NULL,
  `Desgraf3D` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obj3D` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoSW` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoObj` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kit_steams`
--

CREATE TABLE `kit_steams` (
  `id` int(10) UNSIGNED NOT NULL,
  `aplicabilidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `planos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idContenido` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_05_20_210745_create_roles_table', 1),
(6, '2019_05_20_211044_create_role_user_table', 1),
(7, '2019_06_06_181129_create_cajas_table', 1),
(8, '2019_06_06_181323_create_contenido_kits_table', 1),
(9, '2019_06_06_181406_create_caja_contenidos_table', 1),
(10, '2019_06_06_181455_create_kit_steams_table', 1),
(11, '2019_06_06_181630_create_aplicacions_table', 1),
(12, '2019_06_06_181659_create_arch_planos_table', 1),
(13, '2019_06_06_181728_create_grafico3ds_table', 1),
(14, '2019_06_06_181801_create_notificacion_ps_table', 1),
(15, '2019_06_06_181827_create_autors_table', 1),
(16, '2019_06_06_181906_create_productos_table', 1),
(17, '2019_10_22_033155_create_tarjetas_p_ps_table', 1),
(18, '2019_10_22_033342_create_patentes_pr_ps_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_ps`
--

CREATE TABLE `notificacion_ps` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaNotf` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('marlonmosquera_2005@hotmail.com', '$2y$10$ybXd5zjkVbLEhad2F0.Gv.fvPL4GqgfuuDOOnEpgKKdNzX/wGlq86', '2019-11-19 00:42:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patentes_pr_ps`
--

CREATE TABLE `patentes_pr_ps` (
  `id` int(10) UNSIGNED NOT NULL,
  `TituloPatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ClasePatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AutorsPatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaPatent` date NOT NULL,
  `DocPatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AppPatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ComprovPatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SolicPatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CertifPatent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombreP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idGraf3D` int(10) UNSIGNED NOT NULL,
  `idarchPlano` int(10) UNSIGNED NOT NULL,
  `idApp` int(10) UNSIGNED NOT NULL,
  `idKit` int(10) UNSIGNED NOT NULL,
  `idAutor` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrador', '2019-11-17 05:00:00', '2019-11-18 05:00:00'),
(2, 'docent', 'Docente', '2019-11-18 05:00:00', '2019-11-18 05:00:00'),
(3, 'user', 'Estudiante', '2019-11-18 05:00:00', '2019-11-18 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-11-18 05:00:00', '2019-11-18 05:00:00'),
(2, 3, 2, NULL, NULL),
(3, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_p_ps`
--

CREATE TABLE `tarjetas_p_ps` (
  `id` int(10) UNSIGNED NOT NULL,
  `DesTarjet` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QRTarjet` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NombTarj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaCreacT` date NOT NULL,
  `fotoApp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examinar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaNac` date NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `cedula`, `direccion`, `genero`, `fechaNac`, `foto`, `pais`, `ciudad`, `estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Marlon Mosquera', 'marlonmosquera_2005@hotmail.com', '$2y$10$537SA9zAtSlHT1nbI0lHR.kOsd.n7NAwbSb2LJDRWOL1jf8iUKuJ6', '1719615245', 'av. Milton Reyes y Luis Urdaneta', 'M', '1989-12-01', '1574106512admin.png', 'Ecuador', 'Riobamba', '1', 'GWaxPGEb534u6I3TQYqfxbCJSMTVyEgAmHBnF9NcCwkQ1Cg2FOiBUE7LobIC', '2019-11-19 00:48:32', '2019-11-19 00:48:32'),
(3, 'Adriana Velasquez', 'adryvelaz@hotmail.com', '$2y$10$M3mCDY1RR3lHqRyAufLwZuAGLmHOmrURKyxuHvlDTitLf1ONmjgRi', '1639621245', 'Av. Milton Reyes y Luis Urdaneta', 'F', '1990-12-01', '1574106860157171640114650599_1330282113649629_6199036931112058738_n.jpg', 'Ecuador', 'Quito', '1', 'HoDB5LdxMSbGeT2UjyT8y6WrYivPJ2Q7evFOwnyYD2paJp5bUtX0zb35VOuo', '2019-11-19 00:54:20', '2019-11-19 00:54:20'),
(4, 'Juan Perez', 'juanP@hotmail.com', '$2y$10$PqiRFbPYOUVKMKssc5khF.U32v21D28M77oukZ0YQMc2AhMjAZ/mS', '1721617245', 'av. Milton Reyes y Luis Urdaneta', 'M', '1987-12-01', '1574107159user.jpg', 'Ecuador', 'Quito', '1', NULL, '2019-11-19 00:59:19', '2019-11-19 00:59:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacions`
--
ALTER TABLE `aplicacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `arch_planos`
--
ALTER TABLE `arch_planos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autors`
--
ALTER TABLE `autors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja_contenidos`
--
ALTER TABLE `caja_contenidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caja_contenidos_idcontenido_foreign` (`idContenido`),
  ADD KEY `caja_contenidos_idcaja_foreign` (`idCaja`);

--
-- Indices de la tabla `contenido_kits`
--
ALTER TABLE `contenido_kits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contenido_kits_idcaja_foreign` (`idCaja`);

--
-- Indices de la tabla `grafico3ds`
--
ALTER TABLE `grafico3ds`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kit_steams`
--
ALTER TABLE `kit_steams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kit_steams_idcontenido_foreign` (`idContenido`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificacion_ps`
--
ALTER TABLE `notificacion_ps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `patentes_pr_ps`
--
ALTER TABLE `patentes_pr_ps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_idgraf3d_foreign` (`idGraf3D`),
  ADD KEY `productos_idarchplano_foreign` (`idarchPlano`),
  ADD KEY `productos_idapp_foreign` (`idApp`),
  ADD KEY `productos_idkit_foreign` (`idKit`),
  ADD KEY `productos_idautor_foreign` (`idAutor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjetas_p_ps`
--
ALTER TABLE `tarjetas_p_ps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicacions`
--
ALTER TABLE `aplicacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `arch_planos`
--
ALTER TABLE `arch_planos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autors`
--
ALTER TABLE `autors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja_contenidos`
--
ALTER TABLE `caja_contenidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenido_kits`
--
ALTER TABLE `contenido_kits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grafico3ds`
--
ALTER TABLE `grafico3ds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `kit_steams`
--
ALTER TABLE `kit_steams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `notificacion_ps`
--
ALTER TABLE `notificacion_ps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `patentes_pr_ps`
--
ALTER TABLE `patentes_pr_ps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tarjetas_p_ps`
--
ALTER TABLE `tarjetas_p_ps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja_contenidos`
--
ALTER TABLE `caja_contenidos`
  ADD CONSTRAINT `caja_contenidos_idcaja_foreign` FOREIGN KEY (`idCaja`) REFERENCES `cajas` (`id`),
  ADD CONSTRAINT `caja_contenidos_idcontenido_foreign` FOREIGN KEY (`idContenido`) REFERENCES `contenido_kits` (`id`);

--
-- Filtros para la tabla `contenido_kits`
--
ALTER TABLE `contenido_kits`
  ADD CONSTRAINT `contenido_kits_idcaja_foreign` FOREIGN KEY (`idCaja`) REFERENCES `cajas` (`id`);

--
-- Filtros para la tabla `kit_steams`
--
ALTER TABLE `kit_steams`
  ADD CONSTRAINT `kit_steams_idcontenido_foreign` FOREIGN KEY (`idContenido`) REFERENCES `contenido_kits` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_idapp_foreign` FOREIGN KEY (`idApp`) REFERENCES `aplicacions` (`id`),
  ADD CONSTRAINT `productos_idarchplano_foreign` FOREIGN KEY (`idarchPlano`) REFERENCES `arch_planos` (`id`),
  ADD CONSTRAINT `productos_idautor_foreign` FOREIGN KEY (`idAutor`) REFERENCES `autors` (`id`),
  ADD CONSTRAINT `productos_idgraf3d_foreign` FOREIGN KEY (`idGraf3D`) REFERENCES `grafico3ds` (`id`),
  ADD CONSTRAINT `productos_idkit_foreign` FOREIGN KEY (`idKit`) REFERENCES `kit_steams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
