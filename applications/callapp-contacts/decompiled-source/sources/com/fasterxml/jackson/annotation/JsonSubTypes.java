package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonSubTypes.class */
public @interface JsonSubTypes {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonSubTypes$Type.class */
    public @interface Type {
        String name() default "";

        String[] names() default {};

        Class<?> value();
    }

    Type[] value();
}
