package com.google.auto.value;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:com/google/auto/value/AutoValue.class */
public @interface AutoValue {

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes-dex2jar.jar:com/google/auto/value/AutoValue$Builder.class */
    public @interface Builder {
    }

    @Target({ElementType.TYPE, ElementType.METHOD})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes-dex2jar.jar:com/google/auto/value/AutoValue$CopyAnnotations.class */
    public @interface CopyAnnotations {
        Class<? extends Annotation>[] exclude() default {};
    }
}
