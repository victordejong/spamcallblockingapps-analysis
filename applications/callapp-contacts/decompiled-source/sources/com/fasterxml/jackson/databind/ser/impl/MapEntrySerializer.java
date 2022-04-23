package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.BeanUtil;
import java.io.IOException;
import java.util.Map;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/MapEntrySerializer.class */
public class MapEntrySerializer extends ContainerSerializer<Map.Entry<?, ?>> implements ContextualSerializer {
    public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;
    protected PropertySerializerMap _dynamicValueSerializers;
    protected final JavaType _entryType;
    protected JsonSerializer<Object> _keySerializer;
    protected final JavaType _keyType;
    protected final BeanProperty _property;
    protected final boolean _suppressNulls;
    protected final Object _suppressableValue;
    protected JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final boolean _valueTypeIsStatic;
    protected final TypeSerializer _valueTypeSerializer;

    /* renamed from: com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/MapEntrySerializer$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public MapEntrySerializer(JavaType javaType, JavaType javaType2, JavaType javaType3, boolean z, TypeSerializer typeSerializer, BeanProperty beanProperty) {
        super(javaType);
        this._entryType = javaType;
        this._keyType = javaType2;
        this._valueType = javaType3;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializer;
        this._property = beanProperty;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
        this._suppressableValue = null;
        this._suppressNulls = false;
    }

    @Deprecated
    protected MapEntrySerializer(MapEntrySerializer mapEntrySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        this(mapEntrySerializer, beanProperty, typeSerializer, jsonSerializer, jsonSerializer2, mapEntrySerializer._suppressableValue, mapEntrySerializer._suppressNulls);
    }

    protected MapEntrySerializer(MapEntrySerializer mapEntrySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, Object obj, boolean z) {
        super(Map.class, false);
        this._entryType = mapEntrySerializer._entryType;
        this._keyType = mapEntrySerializer._keyType;
        this._valueType = mapEntrySerializer._valueType;
        this._valueTypeIsStatic = mapEntrySerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapEntrySerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
        this._property = mapEntrySerializer._property;
        this._suppressableValue = obj;
        this._suppressNulls = z;
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicValueSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(cls, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicValueSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new MapEntrySerializer(this, this._property, typeSerializer, this._keySerializer, this._valueSerializer, this._suppressableValue, this._suppressNulls);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<Object> jsonSerializer2;
        JsonInclude.Value findPropertyInclusion;
        JsonInclude.Include contentInclusion;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        AnnotatedMember member = beanProperty == null ? null : beanProperty.getMember();
        if (member == null || annotationIntrospector == null) {
            jsonSerializer2 = null;
            jsonSerializer = null;
        } else {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member);
            jsonSerializer = findKeySerializer != null ? serializerProvider.serializerInstance(member, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
            jsonSerializer2 = findContentSerializer != null ? serializerProvider.serializerInstance(member, findContentSerializer) : null;
        }
        JsonSerializer<Object> jsonSerializer3 = jsonSerializer2;
        if (jsonSerializer2 == null) {
            jsonSerializer3 = this._valueSerializer;
        }
        JsonSerializer<?> findContextualConvertingSerializer = findContextualConvertingSerializer(serializerProvider, beanProperty, jsonSerializer3);
        JsonSerializer<?> jsonSerializer4 = findContextualConvertingSerializer;
        if (findContextualConvertingSerializer == null) {
            jsonSerializer4 = findContextualConvertingSerializer;
            if (this._valueTypeIsStatic) {
                jsonSerializer4 = findContextualConvertingSerializer;
                if (!this._valueType.isJavaLangObject()) {
                    jsonSerializer4 = serializerProvider.findContentValueSerializer(this._valueType, beanProperty);
                }
            }
        }
        JsonSerializer<Object> jsonSerializer5 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer5 = this._keySerializer;
        }
        JsonSerializer<?> findKeySerializer2 = jsonSerializer5 == null ? serializerProvider.findKeySerializer(this._keyType, beanProperty) : serializerProvider.handleSecondaryContextualization(jsonSerializer5, beanProperty);
        Object obj = this._suppressableValue;
        boolean z = this._suppressNulls;
        if (beanProperty != null && (findPropertyInclusion = beanProperty.findPropertyInclusion(serializerProvider.getConfig(), null)) != null && (contentInclusion = findPropertyInclusion.getContentInclusion()) != JsonInclude.Include.USE_DEFAULTS) {
            int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[contentInclusion.ordinal()];
            if (i == 1) {
                Object defaultValue = BeanUtil.getDefaultValue(this._valueType);
                obj = defaultValue;
                if (defaultValue != null) {
                    obj = defaultValue;
                    if (defaultValue.getClass().isArray()) {
                        obj = ArrayBuilders.getArrayComparator(defaultValue);
                    }
                }
            } else if (i == 2) {
                obj = null;
                if (this._valueType.isReferenceType()) {
                    obj = MARKER_FOR_EMPTY;
                }
            } else if (i == 3) {
                obj = MARKER_FOR_EMPTY;
            } else if (i != 4) {
                obj = null;
                if (i != 5) {
                    obj = null;
                    z = false;
                }
            } else {
                Object includeFilterInstance = serializerProvider.includeFilterInstance(null, findPropertyInclusion.getContentFilter());
                if (includeFilterInstance == null) {
                    obj = includeFilterInstance;
                } else {
                    z = serializerProvider.includeFilterSuppressNulls(includeFilterInstance);
                    obj = includeFilterInstance;
                }
            }
            z = true;
        }
        return withResolved(beanProperty, findKeySerializer2, jsonSerializer4, obj, z);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JsonSerializer<?> getContentSerializer() {
        return this._valueSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this._valueType;
    }

    public boolean hasSingleElement(Map.Entry<?, ?> entry) {
        return true;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Map.Entry<?, ?> entry) {
        Object value = entry.getValue();
        if (value == null) {
            return this._suppressNulls;
        }
        if (this._suppressableValue == null) {
            return false;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            Class<?> cls = value.getClass();
            jsonSerializer2 = this._dynamicValueSerializers.serializerFor(cls);
            if (jsonSerializer2 == null) {
                try {
                    jsonSerializer2 = _findAndAddDynamic(this._dynamicValueSerializers, cls, serializerProvider);
                } catch (JsonMappingException e) {
                    return false;
                }
            }
        }
        Object obj = this._suppressableValue;
        return obj == MARKER_FOR_EMPTY ? jsonSerializer2.isEmpty(serializerProvider, value) : obj.equals(value);
    }

    public void serialize(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject(entry);
        serializeDynamic(entry, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndObject();
    }

    protected void serializeDynamic(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        JsonSerializer<Object> jsonSerializer;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        Object key = entry.getKey();
        JsonSerializer<Object> findNullKeySerializer = key == null ? serializerProvider.findNullKeySerializer(this._keyType, this._property) : this._keySerializer;
        Object value = entry.getValue();
        if (value != null) {
            JsonSerializer<Object> jsonSerializer2 = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer3 = jsonSerializer2;
            if (jsonSerializer2 == null) {
                Class<?> cls = value.getClass();
                jsonSerializer3 = this._dynamicValueSerializers.serializerFor(cls);
                if (jsonSerializer3 == null) {
                    jsonSerializer3 = this._valueType.hasGenericTypes() ? _findAndAddDynamic(this._dynamicValueSerializers, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(this._dynamicValueSerializers, cls, serializerProvider);
                }
            }
            Object obj = this._suppressableValue;
            jsonSerializer = jsonSerializer3;
            if (obj != null) {
                if (obj != MARKER_FOR_EMPTY || !jsonSerializer3.isEmpty(serializerProvider, value)) {
                    jsonSerializer = jsonSerializer3;
                    if (this._suppressableValue.equals(value)) {
                        return;
                    }
                } else {
                    return;
                }
            }
        } else if (!this._suppressNulls) {
            jsonSerializer = serializerProvider.getDefaultNullValueSerializer();
        } else {
            return;
        }
        findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
        try {
            if (typeSerializer == null) {
                jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
            } else {
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, entry, String.valueOf(key));
        }
    }

    public void serializeWithType(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        jsonGenerator.setCurrentValue(entry);
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(entry, JsonToken.START_OBJECT));
        serializeDynamic(entry, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }

    public MapEntrySerializer withContentInclusion(Object obj, boolean z) {
        return (this._suppressableValue == obj && this._suppressNulls == z) ? this : new MapEntrySerializer(this, this._property, this._valueTypeSerializer, this._keySerializer, this._valueSerializer, obj, z);
    }

    public MapEntrySerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, Object obj, boolean z) {
        return new MapEntrySerializer(this, beanProperty, this._valueTypeSerializer, jsonSerializer, jsonSerializer2, obj, z);
    }
}
