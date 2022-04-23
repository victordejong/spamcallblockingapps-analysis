package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
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
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/MapSerializer.class */
public class MapSerializer extends ContainerSerializer<Map<?, ?>> implements ContextualSerializer {
    private static final long serialVersionUID = 1;
    protected PropertySerializerMap _dynamicValueSerializers;
    protected final Object _filterId;
    protected final Set<String> _ignoredEntries;
    protected final Set<String> _includedEntries;
    protected final IgnorePropertiesUtil.Checker _inclusionChecker;
    protected JsonSerializer<Object> _keySerializer;
    protected final JavaType _keyType;
    protected final BeanProperty _property;
    protected final boolean _sortKeys;
    protected final boolean _suppressNulls;
    protected final Object _suppressableValue;
    protected JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final boolean _valueTypeIsStatic;
    protected final TypeSerializer _valueTypeSerializer;
    protected static final JavaType UNSPECIFIED_TYPE = TypeFactory.unknownType();
    public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;

    /* renamed from: com.fasterxml.jackson.databind.ser.std.MapSerializer$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/MapSerializer$1.class */
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

    @Deprecated
    protected MapSerializer(MapSerializer mapSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, Set<String> set) {
        this(mapSerializer, beanProperty, jsonSerializer, jsonSerializer2, set, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r9.isEmpty() != false) goto L_0x001a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected MapSerializer(com.fasterxml.jackson.databind.ser.std.MapSerializer r5, com.fasterxml.jackson.databind.BeanProperty r6, com.fasterxml.jackson.databind.JsonSerializer<?> r7, com.fasterxml.jackson.databind.JsonSerializer<?> r8, java.util.Set<java.lang.String> r9, java.util.Set<java.lang.String> r10) {
        /*
            r4 = this;
            r0 = r4
            java.lang.Class<java.util.Map> r1 = java.util.Map.class
            r2 = 0
            r0.<init>(r1, r2)
            r0 = r9
            if (r0 == 0) goto L_0x001a
            r0 = r9
            r11 = r0
            r0 = r9
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001d
        L_0x001a:
            r0 = 0
            r11 = r0
        L_0x001d:
            r0 = r4
            r1 = r11
            r0._ignoredEntries = r1
            r0 = r4
            r1 = r10
            r0._includedEntries = r1
            r0 = r4
            r1 = r5
            com.fasterxml.jackson.databind.JavaType r1 = r1._keyType
            r0._keyType = r1
            r0 = r4
            r1 = r5
            com.fasterxml.jackson.databind.JavaType r1 = r1._valueType
            r0._valueType = r1
            r0 = r4
            r1 = r5
            boolean r1 = r1._valueTypeIsStatic
            r0._valueTypeIsStatic = r1
            r0 = r4
            r1 = r5
            com.fasterxml.jackson.databind.jsontype.TypeSerializer r1 = r1._valueTypeSerializer
            r0._valueTypeSerializer = r1
            r0 = r4
            r1 = r7
            r0._keySerializer = r1
            r0 = r4
            r1 = r8
            r0._valueSerializer = r1
            r0 = r4
            com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap r1 = com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.emptyForProperties()
            r0._dynamicValueSerializers = r1
            r0 = r4
            r1 = r6
            r0._property = r1
            r0 = r4
            r1 = r5
            java.lang.Object r1 = r1._filterId
            r0._filterId = r1
            r0 = r4
            r1 = r5
            boolean r1 = r1._sortKeys
            r0._sortKeys = r1
            r0 = r4
            r1 = r5
            java.lang.Object r1 = r1._suppressableValue
            r0._suppressableValue = r1
            r0 = r4
            r1 = r5
            boolean r1 = r1._suppressNulls
            r0._suppressNulls = r1
            r0 = r4
            r1 = r11
            r2 = r10
            com.fasterxml.jackson.databind.util.IgnorePropertiesUtil$Checker r1 = com.fasterxml.jackson.databind.util.IgnorePropertiesUtil.buildCheckerIfNeeded(r1, r2)
            r0._inclusionChecker = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.<init>(com.fasterxml.jackson.databind.ser.std.MapSerializer, com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.JsonSerializer, java.util.Set, java.util.Set):void");
    }

    @Deprecated
    protected MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer, Object obj) {
        this(mapSerializer, typeSerializer, obj, false);
    }

    protected MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer, Object obj, boolean z) {
        super(Map.class, false);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._includedEntries = mapSerializer._includedEntries;
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
        this._suppressableValue = obj;
        this._suppressNulls = z;
        this._inclusionChecker = mapSerializer._inclusionChecker;
    }

    protected MapSerializer(MapSerializer mapSerializer, Object obj, boolean z) {
        super(Map.class, false);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._includedEntries = mapSerializer._includedEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
        this._property = mapSerializer._property;
        this._filterId = obj;
        this._sortKeys = z;
        this._suppressableValue = mapSerializer._suppressableValue;
        this._suppressNulls = mapSerializer._suppressNulls;
        this._inclusionChecker = mapSerializer._inclusionChecker;
    }

    @Deprecated
    protected MapSerializer(Set<String> set, JavaType javaType, JavaType javaType2, boolean z, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        this(set, null, javaType, javaType2, z, typeSerializer, jsonSerializer, jsonSerializer2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r5.isEmpty() != false) goto L_0x0017;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected MapSerializer(java.util.Set<java.lang.String> r5, java.util.Set<java.lang.String> r6, com.fasterxml.jackson.databind.JavaType r7, com.fasterxml.jackson.databind.JavaType r8, boolean r9, com.fasterxml.jackson.databind.jsontype.TypeSerializer r10, com.fasterxml.jackson.databind.JsonSerializer<?> r11, com.fasterxml.jackson.databind.JsonSerializer<?> r12) {
        /*
            r4 = this;
            r0 = r4
            java.lang.Class<java.util.Map> r1 = java.util.Map.class
            r2 = 0
            r0.<init>(r1, r2)
            r0 = r5
            if (r0 == 0) goto L_0x0017
            r0 = r5
            r13 = r0
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001a
        L_0x0017:
            r0 = 0
            r13 = r0
        L_0x001a:
            r0 = r4
            r1 = r13
            r0._ignoredEntries = r1
            r0 = r4
            r1 = r6
            r0._includedEntries = r1
            r0 = r4
            r1 = r7
            r0._keyType = r1
            r0 = r4
            r1 = r8
            r0._valueType = r1
            r0 = r4
            r1 = r9
            r0._valueTypeIsStatic = r1
            r0 = r4
            r1 = r10
            r0._valueTypeSerializer = r1
            r0 = r4
            r1 = r11
            r0._keySerializer = r1
            r0 = r4
            r1 = r12
            r0._valueSerializer = r1
            r0 = r4
            com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap r1 = com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.emptyForProperties()
            r0._dynamicValueSerializers = r1
            r0 = r4
            r1 = 0
            r0._property = r1
            r0 = r4
            r1 = 0
            r0._filterId = r1
            r0 = r4
            r1 = 0
            r0._sortKeys = r1
            r0 = r4
            r1 = 0
            r0._suppressableValue = r1
            r0 = r4
            r1 = 0
            r0._suppressNulls = r1
            r0 = r4
            r1 = r13
            r2 = r6
            com.fasterxml.jackson.databind.util.IgnorePropertiesUtil$Checker r1 = com.fasterxml.jackson.databind.util.IgnorePropertiesUtil.buildCheckerIfNeeded(r1, r2)
            r0._inclusionChecker = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.<init>(java.util.Set, java.util.Set, com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.JavaType, boolean, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.JsonSerializer):void");
    }

    private final JsonSerializer<Object> _findSerializer(SerializerProvider serializerProvider, Object obj) throws JsonMappingException {
        Class<?> cls = obj.getClass();
        JsonSerializer<Object> serializerFor = this._dynamicValueSerializers.serializerFor(cls);
        return serializerFor != null ? serializerFor : this._valueType.hasGenericTypes() ? _findAndAddDynamic(this._dynamicValueSerializers, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(this._dynamicValueSerializers, cls, serializerProvider);
    }

    public static MapSerializer construct(Set<String> set, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2, Object obj) {
        return construct(set, null, javaType, z, typeSerializer, jsonSerializer, jsonSerializer2, obj);
    }

    public static MapSerializer construct(Set<String> set, Set<String> set2, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2, Object obj) {
        JavaType javaType2;
        JavaType javaType3;
        if (javaType == null) {
            javaType3 = UNSPECIFIED_TYPE;
            javaType2 = javaType3;
        } else {
            javaType3 = javaType.getKeyType();
            javaType2 = javaType.hasRawClass(Properties.class) ? TypeFactory.unknownType() : javaType.getContentType();
        }
        if (!z) {
            z = false;
            if (javaType2 != null) {
                z = false;
                if (javaType2.isFinal()) {
                    z = true;
                }
            }
        } else if (javaType2.getRawClass() == Object.class) {
            z = false;
        }
        MapSerializer mapSerializer = new MapSerializer(set, set2, javaType3, javaType2, z, typeSerializer, jsonSerializer, jsonSerializer2);
        MapSerializer mapSerializer2 = mapSerializer;
        if (obj != null) {
            mapSerializer2 = mapSerializer.withFilterId(obj);
        }
        return mapSerializer2;
    }

    @Deprecated
    public static MapSerializer construct(String[] strArr, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2, Object obj) {
        return construct(ArrayBuilders.arrayToSet(strArr), javaType, z, typeSerializer, jsonSerializer, jsonSerializer2, obj);
    }

    @Deprecated
    protected void _ensureOverride() {
        _ensureOverride("N/A");
    }

    protected void _ensureOverride(String str) {
        ClassUtil.verifyMustOverride(MapSerializer.class, this, str);
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

    protected boolean _hasNullKey(Map<?, ?> map) {
        return (map instanceof HashMap) && map.containsKey(null);
    }

    protected Map<?, ?> _orderEntries(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (map instanceof SortedMap) {
            return map;
        }
        if (!_hasNullKey(map)) {
            return new TreeMap(map);
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                _writeNullKeyedEntry(jsonGenerator, serializerProvider, entry.getValue());
            } else {
                treeMap.put(key, entry.getValue());
            }
        }
        return treeMap;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public MapSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        if (this._valueTypeSerializer == typeSerializer) {
            return this;
        }
        _ensureOverride("_withValueTypeSerializer");
        return new MapSerializer(this, typeSerializer, this._suppressableValue, this._suppressNulls);
    }

    protected void _writeNullKeyedEntry(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<Object> findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
        if (obj != null) {
            JsonSerializer<Object> jsonSerializer2 = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer3 = jsonSerializer2;
            if (jsonSerializer2 == null) {
                jsonSerializer3 = _findSerializer(serializerProvider, obj);
            }
            Object obj2 = this._suppressableValue;
            if (obj2 == MARKER_FOR_EMPTY) {
                jsonSerializer = jsonSerializer3;
                if (jsonSerializer3.isEmpty(serializerProvider, obj)) {
                    return;
                }
            } else {
                jsonSerializer = jsonSerializer3;
                if (obj2 != null) {
                    jsonSerializer = jsonSerializer3;
                    if (obj2.equals(obj)) {
                        return;
                    }
                }
            }
        } else if (!this._suppressNulls) {
            jsonSerializer = serializerProvider.getDefaultNullValueSerializer();
        } else {
            return;
        }
        try {
            findNullKeySerializer.serialize(null, jsonGenerator, serializerProvider);
            jsonSerializer.serialize(obj, jsonGenerator, serializerProvider);
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, obj, "");
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonMapFormatVisitor expectMapFormat = jsonFormatVisitorWrapper.expectMapFormat(javaType);
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
        JsonSerializer<Object> jsonSerializer2;
        boolean z;
        HashSet hashSet;
        HashSet hashSet2;
        Boolean feature;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        Object obj = null;
        AnnotatedMember member = beanProperty == null ? null : beanProperty.getMember();
        if (_neitherNull(member, annotationIntrospector)) {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member);
            jsonSerializer = findKeySerializer != null ? serializerProvider.serializerInstance(member, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
            jsonSerializer2 = findContentSerializer != null ? serializerProvider.serializerInstance(member, findContentSerializer) : null;
        } else {
            jsonSerializer = null;
            jsonSerializer2 = null;
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
        Set<String> set = this._ignoredEntries;
        Set<String> set2 = this._includedEntries;
        boolean z2 = false;
        if (_neitherNull(member, annotationIntrospector)) {
            SerializationConfig config = serializerProvider.getConfig();
            Set<String> findIgnoredForSerialization = annotationIntrospector.findPropertyIgnoralByName(config, member).findIgnoredForSerialization();
            hashSet2 = set;
            if (_nonEmpty(findIgnoredForSerialization)) {
                HashSet hashSet3 = set == null ? new HashSet() : new HashSet(set);
                Iterator<String> it2 = findIgnoredForSerialization.iterator();
                while (true) {
                    hashSet2 = hashSet3;
                    if (!it2.hasNext()) {
                        break;
                    }
                    hashSet3.add(it2.next());
                }
            }
            Set<String> included = annotationIntrospector.findPropertyInclusionByName(config, member).getIncluded();
            hashSet = set2;
            if (included != null) {
                HashSet hashSet4 = set2 == null ? new HashSet() : new HashSet(set2);
                Iterator<String> it3 = included.iterator();
                while (true) {
                    hashSet = hashSet4;
                    if (!it3.hasNext()) {
                        break;
                    }
                    hashSet4.add(it3.next());
                }
            }
            z = Boolean.TRUE.equals(annotationIntrospector.findSerializationSortAlphabetically(member));
        } else {
            hashSet2 = set;
            hashSet = set2;
            z = false;
        }
        JsonFormat.Value findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, Map.class);
        if (!(findFormatOverrides == null || (feature = findFormatOverrides.getFeature(JsonFormat.Feature.WRITE_SORTED_MAP_ENTRIES)) == null)) {
            z = feature.booleanValue();
        }
        MapSerializer withResolved = withResolved(beanProperty, findKeySerializer2, jsonSerializer4, hashSet2, hashSet, z);
        MapSerializer mapSerializer = withResolved;
        if (member != null) {
            Object findFilterId = annotationIntrospector.findFilterId(member);
            mapSerializer = withResolved;
            if (findFilterId != null) {
                mapSerializer = withResolved.withFilterId(findFilterId);
            }
        }
        JsonInclude.Value findIncludeOverrides = findIncludeOverrides(serializerProvider, beanProperty, Map.class);
        MapSerializer mapSerializer2 = mapSerializer;
        if (findIncludeOverrides != null) {
            JsonInclude.Include contentInclusion = findIncludeOverrides.getContentInclusion();
            mapSerializer2 = mapSerializer;
            if (contentInclusion != JsonInclude.Include.USE_DEFAULTS) {
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
                        mapSerializer2 = mapSerializer.withContentInclusion(obj, z2);
                    }
                } else {
                    Object includeFilterInstance = serializerProvider.includeFilterInstance(null, findIncludeOverrides.getContentFilter());
                    if (includeFilterInstance == null) {
                        obj = includeFilterInstance;
                    } else {
                        z2 = serializerProvider.includeFilterSuppressNulls(includeFilterInstance);
                        obj = includeFilterInstance;
                        mapSerializer2 = mapSerializer.withContentInclusion(obj, z2);
                    }
                }
                z2 = true;
                mapSerializer2 = mapSerializer.withContentInclusion(obj, z2);
            }
        }
        return mapSerializer2;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JsonSerializer<?> getContentSerializer() {
        return this._valueSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this._valueType;
    }

    public JsonSerializer<?> getKeySerializer() {
        return this._keySerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("object", true);
    }

    public boolean hasSingleElement(Map<?, ?> map) {
        return map.size() == 1;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Map<?, ?> map) {
        if (map.isEmpty()) {
            return true;
        }
        Object obj = this._suppressableValue;
        if (obj == null && !this._suppressNulls) {
            return false;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        boolean z = MARKER_FOR_EMPTY == obj;
        if (jsonSerializer != null) {
            for (Object obj2 : map.values()) {
                if (obj2 == null) {
                    if (!this._suppressNulls) {
                        return false;
                    }
                } else if (z) {
                    if (!jsonSerializer.isEmpty(serializerProvider, obj2)) {
                        return false;
                    }
                } else if (obj == null || !obj.equals(map)) {
                    return false;
                }
            }
            return true;
        }
        for (Object obj3 : map.values()) {
            if (obj3 != null) {
                try {
                    JsonSerializer<Object> _findSerializer = _findSerializer(serializerProvider, obj3);
                    if (z) {
                        if (!_findSerializer.isEmpty(serializerProvider, obj3)) {
                            return false;
                        }
                    } else if (obj == null || !obj.equals(map)) {
                        return false;
                    }
                } catch (JsonMappingException e) {
                    return false;
                }
            } else if (!this._suppressNulls) {
                return false;
            }
        }
        return true;
    }

    public void serialize(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject(map);
        serializeWithoutTypeInfo(map, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndObject();
    }

    public void serializeFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Exception e;
        Object obj = null;
        if (this._valueTypeSerializer != null) {
            serializeTypedFields(map, jsonGenerator, serializerProvider, null);
            return;
        }
        JsonSerializer<Object> jsonSerializer = this._keySerializer;
        try {
            Iterator<Map.Entry<?, ?>> it2 = map.entrySet().iterator();
            Object obj2 = null;
            while (true) {
                obj = obj2;
                try {
                    if (it2.hasNext()) {
                        Map.Entry<?, ?> next = it2.next();
                        Object value = next.getValue();
                        Object key = next.getKey();
                        if (key == null) {
                            serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
                        } else {
                            IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
                            if (checker != null) {
                                obj2 = key;
                                if (!checker.shouldIgnore(key)) {
                                }
                            }
                            jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
                        }
                        if (value == null) {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                            obj2 = key;
                        } else {
                            JsonSerializer<Object> jsonSerializer2 = this._valueSerializer;
                            JsonSerializer<Object> jsonSerializer3 = jsonSerializer2;
                            if (jsonSerializer2 == null) {
                                jsonSerializer3 = _findSerializer(serializerProvider, value);
                            }
                            jsonSerializer3.serialize(value, jsonGenerator, serializerProvider);
                            obj2 = key;
                        }
                    } else {
                        return;
                    }
                } catch (Exception e2) {
                    e = e2;
                    wrapAndThrow(serializerProvider, e, map, String.valueOf(obj));
                    return;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public void serializeFieldsUsing(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        JsonSerializer<Object> jsonSerializer2 = this._keySerializer;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
            if (checker == null || !checker.shouldIgnore(key)) {
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
                        wrapAndThrow(serializerProvider, e, map, String.valueOf(key));
                    }
                } else {
                    jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        }
    }

    public void serializeFilteredAnyProperties(SerializerProvider serializerProvider, JsonGenerator jsonGenerator, Object obj, Map<?, ?> map, PropertyFilter propertyFilter, Object obj2) throws IOException {
        JsonSerializer<Object> defaultNullValueSerializer;
        MapProperty mapProperty = new MapProperty(this._valueTypeSerializer, this._property);
        boolean z = MARKER_FOR_EMPTY == obj2;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
            if (checker == null || !checker.shouldIgnore(key)) {
                JsonSerializer<Object> findNullKeySerializer = key == null ? serializerProvider.findNullKeySerializer(this._keyType, this._property) : this._keySerializer;
                Object value = entry.getValue();
                if (value != null) {
                    JsonSerializer<Object> jsonSerializer = this._valueSerializer;
                    JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
                    if (jsonSerializer == null) {
                        jsonSerializer2 = _findSerializer(serializerProvider, value);
                    }
                    if (z) {
                        defaultNullValueSerializer = jsonSerializer2;
                        if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                        }
                    } else {
                        defaultNullValueSerializer = jsonSerializer2;
                        if (obj2 != null) {
                            if (!obj2.equals(value)) {
                                defaultNullValueSerializer = jsonSerializer2;
                            }
                        }
                    }
                } else if (!this._suppressNulls) {
                    defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                }
                mapProperty.reset(key, value, findNullKeySerializer, defaultNullValueSerializer);
                try {
                    propertyFilter.serializeAsField(obj, jsonGenerator, serializerProvider, mapProperty);
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, map, String.valueOf(key));
                }
            }
        }
    }

    public void serializeFilteredFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyFilter propertyFilter, Object obj) throws IOException {
        JsonSerializer<Object> defaultNullValueSerializer;
        MapProperty mapProperty = new MapProperty(this._valueTypeSerializer, this._property);
        boolean z = MARKER_FOR_EMPTY == obj;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
            if (checker == null || !checker.shouldIgnore(key)) {
                JsonSerializer<Object> findNullKeySerializer = key == null ? serializerProvider.findNullKeySerializer(this._keyType, this._property) : this._keySerializer;
                Object value = entry.getValue();
                if (value != null) {
                    JsonSerializer<Object> jsonSerializer = this._valueSerializer;
                    JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
                    if (jsonSerializer == null) {
                        jsonSerializer2 = _findSerializer(serializerProvider, value);
                    }
                    if (z) {
                        defaultNullValueSerializer = jsonSerializer2;
                        if (jsonSerializer2.isEmpty(serializerProvider, value)) {
                        }
                    } else {
                        defaultNullValueSerializer = jsonSerializer2;
                        if (obj != null) {
                            if (!obj.equals(value)) {
                                defaultNullValueSerializer = jsonSerializer2;
                            }
                        }
                    }
                } else if (!this._suppressNulls) {
                    defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                }
                mapProperty.reset(key, value, findNullKeySerializer, defaultNullValueSerializer);
                try {
                    propertyFilter.serializeAsField(map, jsonGenerator, serializerProvider, mapProperty);
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, map, String.valueOf(key));
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:13|(2:44|15)(2:16|(1:20)(2:55|54))|21|(3:50|23|(2:49|25)(2:56|54))(5:48|26|(1:28)|29|(3:53|31|(2:57|54))(3:51|33|(2:35|(2:52|37)(2:58|54))))|42|38|59|54|11) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f8, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00fa, code lost:
        wrapAndThrow(r9, r13, r7, java.lang.String.valueOf(r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeOptionalFields(java.util.Map<?, ?> r7, com.fasterxml.jackson.core.JsonGenerator r8, com.fasterxml.jackson.databind.SerializerProvider r9, java.lang.Object r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serializeOptionalFields(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider, java.lang.Object):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:9|(2:44|11)(2:12|(1:16)(2:54|53))|17|(3:49|19|(2:45|21)(2:55|53))(5:46|22|(1:24)|25|(3:52|27|(2:56|53)(1:48))(3:47|29|(1:50)(2:31|(2:51|33)(2:57|53))))|34|39|35|58|53|7) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00eb, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ed, code lost:
        wrapAndThrow(r9, r13, r7, java.lang.String.valueOf(r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeTypedFields(java.util.Map<?, ?> r7, com.fasterxml.jackson.core.JsonGenerator r8, com.fasterxml.jackson.databind.SerializerProvider r9, java.lang.Object r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serializeTypedFields(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider, java.lang.Object):void");
    }

    public void serializeWithType(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        jsonGenerator.setCurrentValue(map);
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(map, JsonToken.START_OBJECT));
        serializeWithoutTypeInfo(map, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
        if (r10.isEnabled(com.fasterxml.jackson.databind.SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS) != false) goto L_0x001d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeWithoutTypeInfo(java.util.Map<?, ?> r8, com.fasterxml.jackson.core.JsonGenerator r9, com.fasterxml.jackson.databind.SerializerProvider r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0084
            r0 = r7
            boolean r0 = r0._sortKeys
            if (r0 != 0) goto L_0x001d
            r0 = r8
            r11 = r0
            r0 = r10
            com.fasterxml.jackson.databind.SerializationFeature r1 = com.fasterxml.jackson.databind.SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS
            boolean r0 = r0.isEnabled(r1)
            if (r0 == 0) goto L_0x0026
        L_0x001d:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            java.util.Map r0 = r0._orderEntries(r1, r2, r3)
            r11 = r0
        L_0x0026:
            r0 = r7
            java.lang.Object r0 = r0._filterId
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x004a
            r0 = r7
            r1 = r10
            r2 = r8
            r3 = r11
            com.fasterxml.jackson.databind.ser.PropertyFilter r0 = r0.findPropertyFilter(r1, r2, r3)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x004a
            r0 = r7
            r1 = r11
            r2 = r9
            r3 = r10
            r4 = r8
            r5 = r7
            java.lang.Object r5 = r5._suppressableValue
            r0.serializeFilteredFields(r1, r2, r3, r4, r5)
            return
        L_0x004a:
            r0 = r7
            java.lang.Object r0 = r0._suppressableValue
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x007b
            r0 = r7
            boolean r0 = r0._suppressNulls
            if (r0 == 0) goto L_0x005d
            goto L_0x007b
        L_0x005d:
            r0 = r7
            com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> r0 = r0._valueSerializer
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0070
            r0 = r7
            r1 = r11
            r2 = r9
            r3 = r10
            r4 = r8
            r0.serializeFieldsUsing(r1, r2, r3, r4)
            return
        L_0x0070:
            r0 = r7
            r1 = r11
            r2 = r9
            r3 = r10
            r0.serializeFields(r1, r2, r3)
            goto L_0x0084
        L_0x007b:
            r0 = r7
            r1 = r11
            r2 = r9
            r3 = r10
            r4 = r8
            r0.serializeOptionalFields(r1, r2, r3, r4)
        L_0x0084:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serializeWithoutTypeInfo(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.SerializerProvider):void");
    }

    @Deprecated
    public MapSerializer withContentInclusion(Object obj) {
        return new MapSerializer(this, this._valueTypeSerializer, obj, this._suppressNulls);
    }

    public MapSerializer withContentInclusion(Object obj, boolean z) {
        if (obj == this._suppressableValue && z == this._suppressNulls) {
            return this;
        }
        _ensureOverride("withContentInclusion");
        return new MapSerializer(this, this._valueTypeSerializer, obj, z);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public MapSerializer withFilterId(Object obj) {
        if (this._filterId == obj) {
            return this;
        }
        _ensureOverride("withFilterId");
        return new MapSerializer(this, obj, this._sortKeys);
    }

    public MapSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, Set<String> set, Set<String> set2, boolean z) {
        _ensureOverride("withResolved");
        MapSerializer mapSerializer = new MapSerializer(this, beanProperty, jsonSerializer, jsonSerializer2, set, set2);
        MapSerializer mapSerializer2 = mapSerializer;
        if (z != mapSerializer._sortKeys) {
            mapSerializer2 = new MapSerializer(mapSerializer, this._filterId, z);
        }
        return mapSerializer2;
    }

    public MapSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, Set<String> set, boolean z) {
        return withResolved(beanProperty, jsonSerializer, jsonSerializer2, set, null, z);
    }
}
