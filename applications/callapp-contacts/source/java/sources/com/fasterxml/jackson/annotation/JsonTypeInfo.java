package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonTypeInfo.class */
public @interface JsonTypeInfo {

    /* renamed from: com.fasterxml.jackson.annotation.JsonTypeInfo$As */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonTypeInfo$As.class */
    public enum EnumC10517As {
        PROPERTY,
        WRAPPER_OBJECT,
        WRAPPER_ARRAY,
        EXTERNAL_PROPERTY,
        EXISTING_PROPERTY
    }

    /* renamed from: com.fasterxml.jackson.annotation.JsonTypeInfo$Id */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonTypeInfo$Id.class */
    public enum EnumC10518Id {
        NONE(null),
        CLASS("@class"),
        MINIMAL_CLASS("@c"),
        NAME("@type"),
        DEDUCTION(null),
        CUSTOM(null);
        
        private final String _defaultPropertyName;

        EnumC10518Id(String str) {
            this._defaultPropertyName = str;
        }

        public final String getDefaultPropertyName() {
            return this._defaultPropertyName;
        }
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/JsonTypeInfo$None.class */
    public static abstract class None {
    }

    Class<?> defaultImpl() default JsonTypeInfo.class;

    EnumC10517As include() default EnumC10517As.PROPERTY;

    String property() default "";

    EnumC10518Id use();

    boolean visible() default false;
}
