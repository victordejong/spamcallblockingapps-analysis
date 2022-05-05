package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonProperty.class */
public @interface JsonProperty {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonProperty$Access.class */
    public enum Access {
        AUTO,
        READ_ONLY,
        WRITE_ONLY,
        READ_WRITE
    }

    Access access() default Access.AUTO;

    String defaultValue() default "";

    int index() default -1;

    boolean required() default false;

    String value() default "";
}
