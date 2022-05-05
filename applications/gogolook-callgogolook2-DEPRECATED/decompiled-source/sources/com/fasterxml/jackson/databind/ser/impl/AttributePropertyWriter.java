package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import com.fasterxml.jackson.databind.util.Annotations;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter.class */
public class AttributePropertyWriter extends VirtualBeanPropertyWriter {
    public final String _attrName;

    public AttributePropertyWriter(String str, BeanPropertyDefinition beanPropertyDefinition, Annotations annotations, JavaType javaType) {
        this(str, beanPropertyDefinition, annotations, javaType, beanPropertyDefinition.findInclusion());
    }

    public AttributePropertyWriter(String str, BeanPropertyDefinition beanPropertyDefinition, Annotations annotations, JavaType javaType, JsonInclude.Value value) {
        super(beanPropertyDefinition, annotations, javaType, null, null, null, value);
        this._attrName = str;
    }

    public static AttributePropertyWriter construct(String str, BeanPropertyDefinition beanPropertyDefinition, Annotations annotations, JavaType javaType) {
        return new AttributePropertyWriter(str, beanPropertyDefinition, annotations, javaType);
    }

    @Override // com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter
    public Object value(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        return serializerProvider.getAttribute(this._attrName);
    }

    @Override // com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter
    public VirtualBeanPropertyWriter withConfig(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType) {
        throw new IllegalStateException("Should not be called on this type");
    }
}
