package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.util.Map;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/MapEntrySerializer.class */
public class MapEntrySerializer extends ContainerSerializer<Map.Entry<?, ?>> implements ContextualSerializer {
    public PropertySerializerMap _dynamicValueSerializers;
    public final JavaType _entryType;
    public JsonSerializer<Object> _keySerializer;
    public final JavaType _keyType;
    public final BeanProperty _property;
    public JsonSerializer<Object> _valueSerializer;
    public final JavaType _valueType;
    public final boolean _valueTypeIsStatic;
    public final TypeSerializer _valueTypeSerializer;

    public MapEntrySerializer(JavaType javaType, JavaType javaType2, JavaType javaType3, boolean z, TypeSerializer typeSerializer, BeanProperty beanProperty) {
        super(javaType);
        this._entryType = javaType;
        this._keyType = javaType2;
        this._valueType = javaType3;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializer;
        this._property = beanProperty;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
    }

    public MapEntrySerializer(MapEntrySerializer mapEntrySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        super(Map.class, false);
        this._entryType = mapEntrySerializer._entryType;
        this._keyType = mapEntrySerializer._keyType;
        this._valueType = mapEntrySerializer._valueType;
        this._valueTypeIsStatic = mapEntrySerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapEntrySerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = mapEntrySerializer._dynamicValueSerializers;
        this._property = mapEntrySerializer._property;
    }

    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        PropertySerializerMap propertySerializerMap2 = findAndAddSecondarySerializer.map;
        if (propertySerializerMap != propertySerializerMap2) {
            this._dynamicValueSerializers = propertySerializerMap2;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(cls, serializerProvider, this._property);
        PropertySerializerMap propertySerializerMap2 = findAndAddSecondarySerializer.map;
        if (propertySerializerMap != propertySerializerMap2) {
            this._dynamicValueSerializers = propertySerializerMap2;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new MapEntrySerializer(this, this._property, typeSerializer, this._keySerializer, this._valueSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<?> jsonSerializer2;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        JsonSerializer<Object> jsonSerializer3 = null;
        AnnotatedMember member = beanProperty == null ? null : beanProperty.getMember();
        if (member == null || annotationIntrospector == null) {
            jsonSerializer = null;
        } else {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member);
            JsonSerializer<Object> serializerInstance = findKeySerializer != null ? serializerProvider.serializerInstance(member, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
            jsonSerializer = serializerInstance;
            if (findContentSerializer != null) {
                jsonSerializer3 = serializerProvider.serializerInstance(member, findContentSerializer);
                jsonSerializer = serializerInstance;
            }
        }
        JsonSerializer<Object> jsonSerializer4 = jsonSerializer3;
        if (jsonSerializer3 == null) {
            jsonSerializer4 = this._valueSerializer;
        }
        JsonSerializer<?> findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer4);
        if (findConvertingContentSerializer == null) {
            jsonSerializer2 = findConvertingContentSerializer;
            if (this._valueTypeIsStatic) {
                jsonSerializer2 = findConvertingContentSerializer;
                if (!this._valueType.isJavaLangObject()) {
                    jsonSerializer2 = serializerProvider.findValueSerializer(this._valueType, beanProperty);
                }
            }
        } else {
            jsonSerializer2 = serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
        }
        JsonSerializer<Object> jsonSerializer5 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer5 = this._keySerializer;
        }
        return withResolved(beanProperty, jsonSerializer5 == null ? serializerProvider.findKeySerializer(this._keyType, beanProperty) : serializerProvider.handleSecondaryContextualization(jsonSerializer5, beanProperty), jsonSerializer2);
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Map.Entry<?, ?> entry) {
        return entry == null;
    }

    public void serialize(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject();
        jsonGenerator.setCurrentValue(entry);
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            serializeUsing(entry, jsonGenerator, serializerProvider, jsonSerializer);
        } else {
            serializeDynamic(entry, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndObject();
    }

    public void serializeDynamic(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        JsonSerializer<Object> jsonSerializer = this._keySerializer;
        boolean isEnabled = serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES);
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        Object value = entry.getValue();
        Object key = entry.getKey();
        if (key == null) {
            serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
        } else if (!(!isEnabled) || value != null) {
            jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
        } else {
            return;
        }
        if (value == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
            return;
        }
        Class<?> cls = value.getClass();
        JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
        JsonSerializer<Object> jsonSerializer2 = serializerFor;
        if (serializerFor == null) {
            jsonSerializer2 = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
        }
        try {
            if (typeSerializer == null) {
                jsonSerializer2.serialize(value, jsonGenerator, serializerProvider);
            } else {
                jsonSerializer2.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, entry, "" + key);
            throw null;
        }
    }

    public void serializeUsing(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
        JsonSerializer<Object> jsonSerializer2 = this._keySerializer;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        boolean isEnabled = serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES);
        Object value = entry.getValue();
        Object key = entry.getKey();
        if (key == null) {
            serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
        } else if (!(!isEnabled) || value != null) {
            jsonSerializer2.serialize(key, jsonGenerator, serializerProvider);
        } else {
            return;
        }
        if (value == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
            return;
        }
        try {
            if (typeSerializer == null) {
                jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
            } else {
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, entry, "" + key);
            throw null;
        }
    }

    public void serializeWithType(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        typeSerializer.writeTypePrefixForObject(entry, jsonGenerator);
        jsonGenerator.setCurrentValue(entry);
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            serializeUsing(entry, jsonGenerator, serializerProvider, jsonSerializer);
        } else {
            serializeDynamic(entry, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForObject(entry, jsonGenerator);
    }

    public MapEntrySerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        return new MapEntrySerializer(this, beanProperty, this._valueTypeSerializer, jsonSerializer, jsonSerializer2);
    }
}
