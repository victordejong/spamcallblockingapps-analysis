package com.fasterxml.jackson.databind.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/annotation/JsonPOJOBuilder.class */
public @interface JsonPOJOBuilder {
    public static final String DEFAULT_BUILD_METHOD = "build";
    public static final String DEFAULT_WITH_PREFIX = "with";

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value.class */
    public static class Value {
        public final String buildMethodName;
        public final String withPrefix;

        public Value(JsonPOJOBuilder jsonPOJOBuilder) {
            this(jsonPOJOBuilder.buildMethodName(), jsonPOJOBuilder.withPrefix());
        }

        public Value(String str, String str2) {
            this.buildMethodName = str;
            this.withPrefix = str2;
        }
    }

    String buildMethodName() default "build";

    String withPrefix() default "with";
}
