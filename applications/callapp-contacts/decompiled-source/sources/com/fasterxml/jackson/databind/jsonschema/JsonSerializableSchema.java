package com.fasterxml.jackson.databind.jsonschema;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema.class */
public @interface JsonSerializableSchema {
    public static final String NO_VALUE = "##irrelevant";

    String id() default "";

    @Deprecated
    String schemaItemDefinition() default "##irrelevant";

    @Deprecated
    String schemaObjectPropertiesDefinition() default "##irrelevant";

    String schemaType() default "any";
}
