package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonMapFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.IOException;
import java.util.HashSet;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/MapSerializer.class */
public class MapSerializer extends ContainerSerializer<Map<?, ?>> implements ContextualSerializer {
    public static final JavaType UNSPECIFIED_TYPE = TypeFactory.unknownType();
    public PropertySerializerMap _dynamicValueSerializers;
    public final Object _filterId;
    public final HashSet<String> _ignoredEntries;
    public JsonSerializer<Object> _keySerializer;
    public final JavaType _keyType;
    public final BeanProperty _property;
    public final boolean _sortKeys;
    public final Object _suppressableValue;
    public JsonSerializer<Object> _valueSerializer;
    public final JavaType _valueType;
    public final boolean _valueTypeIsStatic;
    public final TypeSerializer _valueTypeSerializer;

    public MapSerializer(MapSerializer mapSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, HashSet<String> hashSet) {
        super(Map.class, false);
        this._ignoredEntries = hashSet;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = beanProperty;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        this._suppressableValue = mapSerializer._suppressableValue;
    }

    public MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer, Object obj) {
        super(Map.class, false);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = mapSerializer._property;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        this._suppressableValue = obj == JsonInclude.Include.NON_ABSENT ? this._valueType.isReferenceType() ? JsonInclude.Include.NON_EMPTY : JsonInclude.Include.NON_NULL : obj;
    }

    public MapSerializer(MapSerializer mapSerializer, Object obj, boolean z) {
        super(Map.class, false);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = mapSerializer._property;
        this._filterId = obj;
        this._sortKeys = z;
        this._suppressableValue = mapSerializer._suppressableValue;
    }

    public MapSerializer(HashSet<String> hashSet, JavaType javaType, JavaType javaType2, boolean z, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        super(Map.class, false);
        this._ignoredEntries = hashSet;
        this._keyType = javaType;
        this._valueType = javaType2;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
        this._property = null;
        this._filterId = null;
        this._sortKeys = false;
        this._suppressableValue = null;
    }

    public static MapSerializer construct(String[] strArr, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2, Object obj) {
        JavaType javaType2;
        JavaType javaType3;
        HashSet arrayToSet = (strArr == null || strArr.length == 0) ? null : ArrayBuilders.arrayToSet(strArr);
        if (javaType == null) {
            javaType3 = UNSPECIFIED_TYPE;
            javaType2 = javaType3;
        } else {
            javaType3 = javaType.getKeyType();
            javaType2 = javaType.getContentType();
        }
        if (!z) {
            z = javaType2 != null && javaType2.isFinal();
        } else if (javaType2.getRawClass() == Object.class) {
            z = false;
        }
        MapSerializer mapSerializer = new MapSerializer(arrayToSet, javaType3, javaType2, z, typeSerializer, jsonSerializer, jsonSerializer2);
        MapSerializer mapSerializer2 = mapSerializer;
        if (obj != null) {
            mapSerializer2 = mapSerializer.withFilterId(obj);
        }
        return mapSerializer2;
    }

    public void _ensureOverride() {
        if (MapSerializer.class != MapSerializer.class) {
            throw new IllegalStateException("Missing override in class " + MapSerializer.class.getName());
        }
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

    public Map<?, ?> _orderEntries(Map<?, ?> map) {
        return map instanceof SortedMap ? map : new TreeMap(map);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public MapSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        if (this._valueTypeSerializer == typeSerializer) {
            return this;
        }
        _ensureOverride();
        return new MapSerializer(this, typeSerializer, (Object) null);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonMapFormatVisitor expectMapFormat = jsonFormatVisitorWrapper == null ? null : jsonFormatVisitorWrapper.expectMapFormat(javaType);
        if (expectMapFormat != null) {
            expectMapFormat.keyFormat(this._keySerializer, this._keyType);
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                jsonSerializer2 = _findAndAddDynamic(this._dynamicValueSerializers, this._valueType, jsonFormatVisitorWrapper.getProvider());
            }
            expectMapFormat.valueFormat(jsonSerializer2, this._valueType);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<?> jsonSerializer2;
        boolean z;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        JsonSerializer<Object> jsonSerializer3 = null;
        AnnotatedMember member = beanProperty == null ? null : beanProperty.getMember();
        Object obj = this._suppressableValue;
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
        JsonInclude.Include include = obj;
        if (beanProperty != null) {
            JsonInclude.Include contentInclusion = beanProperty.findPropertyInclusion(serializerProvider.getConfig(), Map.class).getContentInclusion();
            include = obj;
            if (contentInclusion != null) {
                include = obj;
                if (contentInclusion != JsonInclude.Include.USE_DEFAULTS) {
                    include = contentInclusion;
                }
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
        JsonSerializer<?> findKeySerializer2 = jsonSerializer5 == null ? serializerProvider.findKeySerializer(this._keyType, beanProperty) : serializerProvider.handleSecondaryContextualization(jsonSerializer5, beanProperty);
        HashSet<String> hashSet = this._ignoredEntries;
        if (annotationIntrospector == null || member == null) {
            z = false;
        } else {
            String[] findPropertiesToIgnore = annotationIntrospector.findPropertiesToIgnore(member, true);
            hashSet = hashSet;
            if (findPropertiesToIgnore != null) {
                HashSet<String> hashSet2 = hashSet == null ? new HashSet<>() : new HashSet<>(hashSet);
                int length = findPropertiesToIgnore.length;
                int i = 0;
                while (true) {
                    hashSet = hashSet2;
                    if (i >= length) {
                        break;
                    }
                    hashSet2.add(findPropertiesToIgnore[i]);
                    i++;
                }
            }
            Boolean findSerializationSortAlphabetically = annotationIntrospector.findSerializationSortAlphabetically(member);
            z = false;
            if (findSerializationSortAlphabetically != null) {
                z = false;
                if (findSerializationSortAlphabetically.booleanValue()) {
                    z = true;
                }
            }
        }
        MapSerializer withResolved = withResolved(beanProperty, findKeySerializer2, jsonSerializer2, hashSet, z);
        MapSerializer mapSerializer = withResolved;
        if (include != this._suppressableValue) {
            mapSerializer = withResolved.withContentInclusion(include);
        }
        MapSerializer mapSerializer2 = mapSerializer;
        if (beanProperty != null) {
            AnnotatedMember member2 = beanProperty.getMember();
            mapSerializer2 = mapSerializer;
            if (member2 != null) {
                Object findFilterId = annotationIntrospector.findFilterId(member2);
                mapSerializer2 = mapSerializer;
                if (findFilterId != null) {
                    mapSerializer2 = mapSerializer.withFilterId(findFilterId);
                }
            }
        }
        return mapSerializer2;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Map<?, ?> map) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        Object obj = this._suppressableValue;
        if (obj == null || obj == JsonInclude.Include.ALWAYS) {
            return false;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            for (Object obj2 : map.values()) {
                if (!(obj2 == null || jsonSerializer.isEmpty(serializerProvider, obj2))) {
                    return false;
                }
            }
            return true;
        }
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        for (Object obj3 : map.values()) {
            if (obj3 != null) {
                Class<?> cls = obj3.getClass();
                JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                propertySerializerMap = propertySerializerMap;
                JsonSerializer<Object> jsonSerializer2 = serializerFor;
                if (serializerFor == null) {
                    try {
                        jsonSerializer2 = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                        propertySerializerMap = this._dynamicValueSerializers;
                    } catch (JsonMappingException e) {
                        return false;
                    }
                }
                if (!jsonSerializer2.isEmpty(serializerProvider, obj3)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
        if (r12.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS) != false) goto L_0x0056;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serialize(java.util.Map<?, ?> r10, com.fasterxml.jackson.core.JsonGenerator r11, com.fasterxml.jackson.databind.SerializerProvider r12) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r11
            r0.writeStartObject()
            r0 = r11
            r1 = r10
            r0.setCurrentValue(r1)
            r0 = r10
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x00aa
            r0 = r9
            java.lang.Object r0 = r0._suppressableValue
            r13 = r0
            r0 = r13
            com.fasterxml.jackson.annotation.JsonInclude$Include r1 = com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS
            if (r0 != r1) goto L_0x0026
            r0 = 0
            r14 = r0
            goto L_0x0042
        L_0x0026:
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0042
            r0 = r13
            r14 = r0
            r0 = r12
            com.fasterxml.jackson.databind.SerializationFeature r1 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_NULL_MAP_VALUES
            boolean r0 = r0.isEnabled(r1)
            if (r0 != 0) goto L_0x0042
            com.fasterxml.jackson.annotation.JsonInclude$Include r0 = com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL
            r14 = r0
        L_0x0042:
            r0 = r9
            boolean r0 = r0._sortKeys
            if (r0 != 0) goto L_0x0056
            r0 = r10
            r13 = r0
            r0 = r12
            com.fasterxml.jackson.databind.SerializationFeature r1 = com.fasterxml.jackson.databind.SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS
            boolean r0 = r0.isEnabled(r1)
            if (r0 == 0) goto L_0x005d
        L_0x0056:
            r0 = r9
            r1 = r10
            java.util.Map r0 = r0._orderEntries(r1)
            r13 = r0
        L_0x005d:
            r0 = r9
            java.lang.Object r0 = r0._filterId
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x007b
            r0 = r9
            r1 = r13
            r2 = r11
            r3 = r12
            r4 = r9
            r5 = r12
            r6 = r10
            r7 = r13
            com.fasterxml.jackson.databind.ser.PropertyFilter r4 = r4.findPropertyFilter(r5, r6, r7)
            r5 = r14
            r0.serializeFilteredFields(r1, r2, r3, r4, r5)
            goto L_0x00aa
        L_0x007b:
            r0 = r14
            if (r0 == 0) goto L_0x008d
            r0 = r9
            r1 = r13
            r2 = r11
            r3 = r12
            r4 = r14
            r0.serializeOptionalFields(r1, r2, r3, r4)
            goto L_0x00aa
        L_0x008d:
            r0 = r9
            com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r0 = r0._valueSerializer
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00a2
            r0 = r9
            r1 = r13
            r2 = r11
            r3 = r12
            r4 = r10
            r0.serializeFieldsUsing(r1, r2, r3, r4)
            goto L_0x00aa
        L_0x00a2:
            r0 = r9
            r1 = r13
            r2 = r11
            r3 = r12
            r0.serializeFields(r1, r2, r3)
        L_0x00aa:
            r0 = r11
            r0.writeEndObject()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serialize(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider):void");
    }

    public void serializeFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (this._valueTypeSerializer != null) {
            serializeTypedFields(map, jsonGenerator, serializerProvider, null);
            return;
        }
        JsonSerializer<Object> jsonSerializer = this._keySerializer;
        HashSet<String> hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object value = entry.getValue();
            Object key = entry.getKey();
            if (key == null) {
                serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
            } else if (hashSet == null || !hashSet.contains(key)) {
                jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
            }
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            } else {
                Class<?> cls = value.getClass();
                JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                propertySerializerMap = propertySerializerMap;
                JsonSerializer<Object> jsonSerializer2 = serializerFor;
                if (serializerFor == null) {
                    jsonSerializer2 = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                    propertySerializerMap = this._dynamicValueSerializers;
                }
                try {
                    jsonSerializer2.serialize(value, jsonGenerator, serializerProvider);
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, map, "" + key);
                    throw null;
                }
            }
        }
    }

    public void serializeFieldsUsing(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        JsonSerializer<Object> jsonSerializer2 = this._keySerializer;
        HashSet<String> hashSet = this._ignoredEntries;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (hashSet == null || !hashSet.contains(key)) {
                if (key == null) {
                    serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer2.serialize(key, jsonGenerator, serializerProvider);
                }
                Object value = entry.getValue();
                if (value == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else if (typeSerializer == null) {
                    try {
                        jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, map, "" + key);
                        throw null;
                    }
                } else {
                    jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        }
    }

    public void serializeFilteredFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyFilter propertyFilter, Object obj) throws IOException {
        JsonSerializer<Object> defaultNullValueSerializer;
        HashSet<String> hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        MapProperty mapProperty = new MapProperty(this._valueTypeSerializer, this._property);
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (hashSet == null || !hashSet.contains(key)) {
                JsonSerializer<Object> findNullKeySerializer = key == null ? serializerProvider.findNullKeySerializer(this._keyType, this._property) : this._keySerializer;
                Object value = entry.getValue();
                if (value != null) {
                    JsonSerializer<Object> jsonSerializer = this._valueSerializer;
                    PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
                    JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
                    if (jsonSerializer == null) {
                        Class<?> cls = value.getClass();
                        jsonSerializer2 = propertySerializerMap.serializerFor(cls);
                        if (jsonSerializer2 == null) {
                            jsonSerializer2 = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                            propertySerializerMap2 = this._dynamicValueSerializers;
                        } else {
                            propertySerializerMap2 = propertySerializerMap;
                        }
                    }
                    propertySerializerMap = propertySerializerMap2;
                    defaultNullValueSerializer = jsonSerializer2;
                    if (obj == JsonInclude.Include.NON_EMPTY) {
                        propertySerializerMap = propertySerializerMap2;
                        defaultNullValueSerializer = jsonSerializer2;
                        if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                            propertySerializerMap = propertySerializerMap2;
                        }
                    }
                    mapProperty.reset(key, findNullKeySerializer, defaultNullValueSerializer);
                    propertyFilter.serializeAsField(value, jsonGenerator, serializerProvider, mapProperty);
                } else if (obj != null) {
                    continue;
                } else {
                    defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                    mapProperty.reset(key, findNullKeySerializer, defaultNullValueSerializer);
                    try {
                        propertyFilter.serializeAsField(value, jsonGenerator, serializerProvider, mapProperty);
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, map, "" + key);
                        throw null;
                    }
                }
            }
        }
    }

    public void serializeOptionalFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        JsonSerializer<Object> findNullKeySerializer;
        JsonSerializer<Object> defaultNullValueSerializer;
        if (this._valueTypeSerializer != null) {
            serializeTypedFields(map, jsonGenerator, serializerProvider, obj);
            return;
        }
        HashSet<String> hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
            } else if (hashSet == null || !hashSet.contains(key)) {
                findNullKeySerializer = this._keySerializer;
            }
            Object value = entry.getValue();
            if (value != null) {
                JsonSerializer<Object> jsonSerializer = this._valueSerializer;
                PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
                JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
                if (jsonSerializer == null) {
                    Class<?> cls = value.getClass();
                    jsonSerializer2 = propertySerializerMap.serializerFor(cls);
                    if (jsonSerializer2 == null) {
                        jsonSerializer2 = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                        propertySerializerMap2 = this._dynamicValueSerializers;
                    } else {
                        propertySerializerMap2 = propertySerializerMap;
                    }
                }
                propertySerializerMap = propertySerializerMap2;
                defaultNullValueSerializer = jsonSerializer2;
                if (obj == JsonInclude.Include.NON_EMPTY) {
                    propertySerializerMap = propertySerializerMap2;
                    defaultNullValueSerializer = jsonSerializer2;
                    if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                        propertySerializerMap = propertySerializerMap2;
                    }
                }
                findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                defaultNullValueSerializer.serialize(value, jsonGenerator, serializerProvider);
            } else if (obj != null) {
                continue;
            } else {
                defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                try {
                    findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                    defaultNullValueSerializer.serialize(value, jsonGenerator, serializerProvider);
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, map, "" + key);
                    throw null;
                }
            }
        }
    }

    public void serializeTypedFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        JsonSerializer<Object> findNullKeySerializer;
        JsonSerializer<Object> defaultNullValueSerializer;
        HashSet<String> hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
            } else if (hashSet == null || !hashSet.contains(key)) {
                findNullKeySerializer = this._keySerializer;
            }
            Object value = entry.getValue();
            if (value != null) {
                Class<?> cls = value.getClass();
                JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                if (serializerFor == null) {
                    serializerFor = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                    propertySerializerMap = this._dynamicValueSerializers;
                }
                propertySerializerMap = propertySerializerMap;
                defaultNullValueSerializer = serializerFor;
                if (obj == JsonInclude.Include.NON_EMPTY) {
                    propertySerializerMap = propertySerializerMap;
                    defaultNullValueSerializer = serializerFor;
                    if (serializerFor.isEmpty(serializerProvider, value)) {
                        continue;
                    }
                }
                findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                defaultNullValueSerializer.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
            } else if (obj != null) {
                continue;
            } else {
                defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                propertySerializerMap = propertySerializerMap;
                findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                try {
                    defaultNullValueSerializer.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, map, "" + key);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r12.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS) != false) goto L_0x005c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeWithType(java.util.Map<?, ?> r10, com.fasterxml.jackson.core.JsonGenerator r11, com.fasterxml.jackson.databind.SerializerProvider r12, com.fasterxml.jackson.databind.jsontype.TypeSerializer r13) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r13
            r1 = r10
            r2 = r11
            r0.writeTypePrefixForObject(r1, r2)
            r0 = r11
            r1 = r10
            r0.setCurrentValue(r1)
            r0 = r10
            r14 = r0
            r0 = r10
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x00b0
            r0 = r9
            java.lang.Object r0 = r0._suppressableValue
            r14 = r0
            r0 = r14
            com.fasterxml.jackson.annotation.JsonInclude$Include r1 = com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS
            if (r0 != r1) goto L_0x002c
            r0 = 0
            r15 = r0
            goto L_0x0048
        L_0x002c:
            r0 = r14
            r15 = r0
            r0 = r14
            if (r0 != 0) goto L_0x0048
            r0 = r14
            r15 = r0
            r0 = r12
            com.fasterxml.jackson.databind.SerializationFeature r1 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_NULL_MAP_VALUES
            boolean r0 = r0.isEnabled(r1)
            if (r0 != 0) goto L_0x0048
            com.fasterxml.jackson.annotation.JsonInclude$Include r0 = com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL
            r15 = r0
        L_0x0048:
            r0 = r9
            boolean r0 = r0._sortKeys
            if (r0 != 0) goto L_0x005c
            r0 = r10
            r14 = r0
            r0 = r12
            com.fasterxml.jackson.databind.SerializationFeature r1 = com.fasterxml.jackson.databind.SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS
            boolean r0 = r0.isEnabled(r1)
            if (r0 == 0) goto L_0x0063
        L_0x005c:
            r0 = r9
            r1 = r10
            java.util.Map r0 = r0._orderEntries(r1)
            r14 = r0
        L_0x0063:
            r0 = r9
            java.lang.Object r0 = r0._filterId
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0081
            r0 = r9
            r1 = r14
            r2 = r11
            r3 = r12
            r4 = r9
            r5 = r12
            r6 = r10
            r7 = r14
            com.fasterxml.jackson.databind.ser.PropertyFilter r4 = r4.findPropertyFilter(r5, r6, r7)
            r5 = r15
            r0.serializeFilteredFields(r1, r2, r3, r4, r5)
            goto L_0x00b0
        L_0x0081:
            r0 = r15
            if (r0 == 0) goto L_0x0093
            r0 = r9
            r1 = r14
            r2 = r11
            r3 = r12
            r4 = r15
            r0.serializeOptionalFields(r1, r2, r3, r4)
            goto L_0x00b0
        L_0x0093:
            r0 = r9
            com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r0 = r0._valueSerializer
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00a8
            r0 = r9
            r1 = r14
            r2 = r11
            r3 = r12
            r4 = r10
            r0.serializeFieldsUsing(r1, r2, r3, r4)
            goto L_0x00b0
        L_0x00a8:
            r0 = r9
            r1 = r14
            r2 = r11
            r3 = r12
            r0.serializeFields(r1, r2, r3)
        L_0x00b0:
            r0 = r13
            r1 = r14
            r2 = r11
            r0.writeTypeSuffixForObject(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serializeWithType(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.jsontype.TypeSerializer):void");
    }

    public MapSerializer withContentInclusion(Object obj) {
        if (obj == this._suppressableValue) {
            return this;
        }
        _ensureOverride();
        return new MapSerializer(this, this._valueTypeSerializer, obj);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public MapSerializer withFilterId(Object obj) {
        if (this._filterId == obj) {
            return this;
        }
        _ensureOverride();
        return new MapSerializer(this, obj, this._sortKeys);
    }

    public MapSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, HashSet<String> hashSet, boolean z) {
        _ensureOverride();
        MapSerializer mapSerializer = new MapSerializer(this, beanProperty, jsonSerializer, jsonSerializer2, hashSet);
        if (z != mapSerializer._sortKeys) {
            mapSerializer = new MapSerializer(mapSerializer, this._filterId, z);
        }
        return mapSerializer;
    }
}
