package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter.class */
public abstract class VirtualBeanPropertyWriter extends BeanPropertyWriter implements Serializable {
    public VirtualBeanPropertyWriter() {
    }

    public VirtualBeanPropertyWriter(BeanPropertyDefinition beanPropertyDefinition, Annotations annotations, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, JavaType javaType2, JsonInclude.Value value) {
        super(beanPropertyDefinition, beanPropertyDefinition.getPrimaryMember(), annotations, javaType, jsonSerializer, typeSerializer, javaType2, _suppressNulls(value), _suppressableValue(value));
    }

    public static boolean _suppressNulls(JsonInclude.Value value) {
        if (value == null) {
            return false;
        }
        JsonInclude.Include valueInclusion = value.getValueInclusion();
        boolean z = false;
        if (valueInclusion != JsonInclude.Include.ALWAYS) {
            z = false;
            if (valueInclusion != JsonInclude.Include.USE_DEFAULTS) {
                z = true;
            }
        }
        return z;
    }

    public static Object _suppressableValue(JsonInclude.Value value) {
        if (value == null) {
            return false;
        }
        JsonInclude.Include valueInclusion = value.getValueInclusion();
        if (valueInclusion == JsonInclude.Include.ALWAYS || valueInclusion == JsonInclude.Include.NON_NULL || valueInclusion == JsonInclude.Include.USE_DEFAULTS) {
            return null;
        }
        return BeanPropertyWriter.MARKER_FOR_EMPTY;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        Object value = value(obj, jsonGenerator, serializerProvider);
        if (value == null) {
            JsonSerializer<Object> jsonSerializer = this._nullSerializer;
            if (jsonSerializer != null) {
                jsonSerializer.serialize(null, jsonGenerator, serializerProvider);
            } else {
                jsonGenerator.writeNull();
            }
        } else {
            JsonSerializer<Object> jsonSerializer2 = this._serializer;
            JsonSerializer<Object> jsonSerializer3 = jsonSerializer2;
            if (jsonSerializer2 == null) {
                Class<?> cls = value.getClass();
                PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                jsonSerializer3 = propertySerializerMap.serializerFor(cls);
                if (jsonSerializer3 == null) {
                    jsonSerializer3 = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                }
            }
            Object obj2 = this._suppressableValue;
            if (obj2 != null) {
                if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj2) {
                    if (jsonSerializer3.isEmpty(serializerProvider, value)) {
                        serializeAsPlaceholder(obj, jsonGenerator, serializerProvider);
                        return;
                    }
                } else if (obj2.equals(value)) {
                    serializeAsPlaceholder(obj, jsonGenerator, serializerProvider);
                    return;
                }
            }
            if (value != obj || !_handleSelfReference(obj, jsonGenerator, serializerProvider, jsonSerializer3)) {
                TypeSerializer typeSerializer = this._typeSerializer;
                if (typeSerializer == null) {
                    jsonSerializer3.serialize(value, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer3.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        Object value = value(obj, jsonGenerator, serializerProvider);
        if (value != null) {
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
            Object obj2 = this._suppressableValue;
            if (obj2 != null) {
                if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj2) {
                    if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                        return;
                    }
                } else if (obj2.equals(value)) {
                    return;
                }
            }
            if (value != obj || !_handleSelfReference(obj, jsonGenerator, serializerProvider, jsonSerializer2)) {
                jsonGenerator.writeFieldName(this._name);
                TypeSerializer typeSerializer = this._typeSerializer;
                if (typeSerializer == null) {
                    jsonSerializer2.serialize(value, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer2.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        } else if (this._nullSerializer != null) {
            jsonGenerator.writeFieldName(this._name);
            this._nullSerializer.serialize(null, jsonGenerator, serializerProvider);
        }
    }

    public abstract Object value(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception;

    public abstract VirtualBeanPropertyWriter withConfig(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType);
}
