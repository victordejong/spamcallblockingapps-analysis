package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter.class */
public abstract class VirtualBeanPropertyWriter extends BeanPropertyWriter implements Serializable {
    protected VirtualBeanPropertyWriter() {
    }

    protected VirtualBeanPropertyWriter(BeanPropertyDefinition beanPropertyDefinition, Annotations annotations, JavaType javaType) {
        this(beanPropertyDefinition, annotations, javaType, null, null, null, beanPropertyDefinition.findInclusion());
    }

    @Deprecated
    protected VirtualBeanPropertyWriter(BeanPropertyDefinition beanPropertyDefinition, Annotations annotations, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, JavaType javaType2, JsonInclude.Value value) {
        this(beanPropertyDefinition, annotations, javaType, jsonSerializer, typeSerializer, javaType2, value, null);
    }

    public VirtualBeanPropertyWriter(BeanPropertyDefinition beanPropertyDefinition, Annotations annotations, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, JavaType javaType2, JsonInclude.Value value, Class<?>[] clsArr) {
        super(beanPropertyDefinition, beanPropertyDefinition.getPrimaryMember(), annotations, javaType, jsonSerializer, typeSerializer, javaType2, _suppressNulls(value), _suppressableValue(value), clsArr);
    }

    public VirtualBeanPropertyWriter(VirtualBeanPropertyWriter virtualBeanPropertyWriter) {
        super(virtualBeanPropertyWriter);
    }

    protected VirtualBeanPropertyWriter(VirtualBeanPropertyWriter virtualBeanPropertyWriter, PropertyName propertyName) {
        super(virtualBeanPropertyWriter, propertyName);
    }

    protected static boolean _suppressNulls(JsonInclude.Value value) {
        JsonInclude.Include valueInclusion;
        return (value == null || (valueInclusion = value.getValueInclusion()) == JsonInclude.Include.ALWAYS || valueInclusion == JsonInclude.Include.USE_DEFAULTS) ? false : true;
    }

    protected static Object _suppressableValue(JsonInclude.Value value) {
        if (value == null) {
            return Boolean.FALSE;
        }
        JsonInclude.Include valueInclusion = value.getValueInclusion();
        if (valueInclusion != JsonInclude.Include.ALWAYS && valueInclusion != JsonInclude.Include.NON_NULL && valueInclusion != JsonInclude.Include.USE_DEFAULTS) {
            return MARKER_FOR_EMPTY;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        Object value = value(obj, jsonGenerator, serializerProvider);
        if (value == null) {
            if (this._nullSerializer != null) {
                this._nullSerializer.serialize(null, jsonGenerator, serializerProvider);
                return;
            } else {
                jsonGenerator.writeNull();
                return;
            }
        }
        JsonSerializer<Object> jsonSerializer = this._serializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            Class<?> cls = value.getClass();
            PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
            jsonSerializer2 = propertySerializerMap.serializerFor(cls);
            if (jsonSerializer2 == null) {
                jsonSerializer2 = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
            }
        }
        if (this._suppressableValue != null) {
            if (MARKER_FOR_EMPTY == this._suppressableValue) {
                if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                    serializeAsPlaceholder(obj, jsonGenerator, serializerProvider);
                    return;
                }
            } else if (this._suppressableValue.equals(value)) {
                serializeAsPlaceholder(obj, jsonGenerator, serializerProvider);
                return;
            }
        }
        if (value == obj && _handleSelfReference(obj, jsonGenerator, serializerProvider, jsonSerializer2)) {
            return;
        }
        if (this._typeSerializer == null) {
            jsonSerializer2.serialize(value, jsonGenerator, serializerProvider);
        } else {
            jsonSerializer2.serializeWithType(value, jsonGenerator, serializerProvider, this._typeSerializer);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        Object value = value(obj, jsonGenerator, serializerProvider);
        if (value == null) {
            if (this._nullSerializer == null) {
                return;
            }
            jsonGenerator.writeFieldName(this._name);
            this._nullSerializer.serialize(null, jsonGenerator, serializerProvider);
            return;
        }
        JsonSerializer<Object> jsonSerializer = this._serializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            Class<?> cls = value.getClass();
            PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
            jsonSerializer2 = propertySerializerMap.serializerFor(cls);
            if (jsonSerializer2 == null) {
                jsonSerializer2 = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
            }
        }
        if (this._suppressableValue != null) {
            if (MARKER_FOR_EMPTY == this._suppressableValue) {
                if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                    return;
                }
            } else if (this._suppressableValue.equals(value)) {
                return;
            }
        }
        if (value == obj && _handleSelfReference(obj, jsonGenerator, serializerProvider, jsonSerializer2)) {
            return;
        }
        jsonGenerator.writeFieldName(this._name);
        if (this._typeSerializer == null) {
            jsonSerializer2.serialize(value, jsonGenerator, serializerProvider);
        } else {
            jsonSerializer2.serializeWithType(value, jsonGenerator, serializerProvider, this._typeSerializer);
        }
    }

    protected abstract Object value(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception;

    public abstract VirtualBeanPropertyWriter withConfig(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType);
}
