package io.agora.common.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes16-dex2jar.jar:io/agora/common/annotation/NonNull.class */
public @interface NonNull {
}
