package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonPropertyOrder.class */
public @interface JsonPropertyOrder {
    boolean alphabetic() default false;

    String[] value() default {};
}
