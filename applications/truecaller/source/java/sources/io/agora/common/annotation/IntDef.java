package io.agora.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes16-dex2jar.jar:io/agora/common/annotation/IntDef.class */
public @interface IntDef {
    boolean flag() default false;

    long[] value() default {};
}
