package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedStringListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IteratorSerializer;
import com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringArraySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.AtomicReferenceSerializer;
import com.fasterxml.jackson.databind.ser.std.BooleanSerializer;
import com.fasterxml.jackson.databind.ser.std.ByteBufferSerializer;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.CollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSetSerializer;
import com.fasterxml.jackson.databind.ser.std.InetAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.InetSocketAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.IterableSerializer;
import com.fasterxml.jackson.databind.ser.std.JsonValueSerializer;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializers;
import com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer;
import com.fasterxml.jackson.databind.ser.std.SerializableSerializer;
import com.fasterxml.jackson.databind.ser.std.StdArraySerializers;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers;
import com.fasterxml.jackson.databind.ser.std.StdKeySerializers;
import com.fasterxml.jackson.databind.ser.std.StringSerializer;
import com.fasterxml.jackson.databind.ser.std.TimeZoneSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fasterxml.jackson.databind.ser.std.TokenBufferSerializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/BasicSerializerFactory.class */
public abstract class BasicSerializerFactory extends SerializerFactory implements Serializable {
    protected static final HashMap<String, JsonSerializer<?>> _concrete;
    protected static final HashMap<String, Class<? extends JsonSerializer<?>>> _concreteLazy;
    protected final SerializerFactoryConfig _factoryConfig;

    /* renamed from: com.fasterxml.jackson.databind.ser.BasicSerializerFactory$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/BasicSerializerFactory$1.class */
    public static /* synthetic */ class C105541 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0077 -> B:37:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007b -> B:33:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007f -> B:47:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0083 -> B:41:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0087 -> B:35:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008b -> B:14:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008f -> B:45:0x0060). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0093 -> B:39:0x006b). Please submit an issue!!! */
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
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.USE_DEFAULTS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            int[] iArr2 = new int[JsonFormat.Shape.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = iArr2;
            try {
                iArr2[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    static {
        HashMap<String, Class<? extends JsonSerializer<?>>> hashMap = new HashMap<>();
        HashMap<String, JsonSerializer<?>> hashMap2 = new HashMap<>();
        hashMap2.put(String.class.getName(), new StringSerializer());
        ToStringSerializer toStringSerializer = ToStringSerializer.instance;
        hashMap2.put(StringBuffer.class.getName(), toStringSerializer);
        hashMap2.put(StringBuilder.class.getName(), toStringSerializer);
        hashMap2.put(Character.class.getName(), toStringSerializer);
        hashMap2.put(Character.TYPE.getName(), toStringSerializer);
        NumberSerializers.addAll(hashMap2);
        hashMap2.put(Boolean.TYPE.getName(), new BooleanSerializer(true));
        hashMap2.put(Boolean.class.getName(), new BooleanSerializer(false));
        hashMap2.put(BigInteger.class.getName(), new NumberSerializer(BigInteger.class));
        hashMap2.put(BigDecimal.class.getName(), new NumberSerializer(BigDecimal.class));
        hashMap2.put(Calendar.class.getName(), CalendarSerializer.instance);
        hashMap2.put(Date.class.getName(), DateSerializer.instance);
        for (Map.Entry<Class<?>, Object> entry : StdJdkSerializers.all()) {
            Object value = entry.getValue();
            if (value instanceof JsonSerializer) {
                hashMap2.put(entry.getKey().getName(), (JsonSerializer) value);
            } else {
                hashMap.put(entry.getKey().getName(), (Class) value);
            }
        }
        hashMap.put(TokenBuffer.class.getName(), TokenBufferSerializer.class);
        _concrete = hashMap2;
        _concreteLazy = hashMap;
    }

    public BasicSerializerFactory(SerializerFactoryConfig serializerFactoryConfig) {
        this._factoryConfig = serializerFactoryConfig == null ? new SerializerFactoryConfig() : serializerFactoryConfig;
    }

    protected MapSerializer _checkMapContentInclusion(SerializerProvider serializerProvider, BeanDescription beanDescription, MapSerializer mapSerializer) throws JsonMappingException {
        boolean z;
        Object obj;
        JavaType contentType = mapSerializer.getContentType();
        JsonInclude.Value _findInclusionWithContent = _findInclusionWithContent(serializerProvider, beanDescription, contentType, Map.class);
        JsonInclude.Include contentInclusion = _findInclusionWithContent == null ? JsonInclude.Include.USE_DEFAULTS : _findInclusionWithContent.getContentInclusion();
        if (contentInclusion == JsonInclude.Include.USE_DEFAULTS || contentInclusion == JsonInclude.Include.ALWAYS) {
            return !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? mapSerializer.withContentInclusion(null, true) : mapSerializer;
        }
        int i = C105541.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[contentInclusion.ordinal()];
        if (i == 1) {
            Object defaultValue = BeanUtil.getDefaultValue(contentType);
            z = true;
            obj = defaultValue;
            if (defaultValue != null) {
                z = true;
                obj = defaultValue;
                if (defaultValue.getClass().isArray()) {
                    obj = ArrayBuilders.getArrayComparator(defaultValue);
                    z = true;
                }
            }
        } else if (i == 2) {
            z = true;
            obj = null;
            if (contentType.isReferenceType()) {
                obj = MapSerializer.MARKER_FOR_EMPTY;
                z = true;
            }
        } else if (i == 3) {
            obj = MapSerializer.MARKER_FOR_EMPTY;
            z = true;
        } else if (i != 4) {
            z = true;
            obj = null;
        } else {
            Object includeFilterInstance = serializerProvider.includeFilterInstance(null, _findInclusionWithContent.getContentFilter());
            if (includeFilterInstance == null) {
                z = true;
                obj = includeFilterInstance;
            } else {
                z = serializerProvider.includeFilterSuppressNulls(includeFilterInstance);
                obj = includeFilterInstance;
            }
        }
        return mapSerializer.withContentInclusion(obj, z);
    }

    protected JsonSerializer<Object> _findContentSerializer(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findContentSerializer = serializerProvider.getAnnotationIntrospector().findContentSerializer(annotated);
        if (findContentSerializer != null) {
            return serializerProvider.serializerInstance(annotated, findContentSerializer);
        }
        return null;
    }

    protected JsonInclude.Value _findInclusionWithContent(SerializerProvider serializerProvider, BeanDescription beanDescription, JavaType javaType, Class<?> cls) throws JsonMappingException {
        SerializationConfig config = serializerProvider.getConfig();
        JsonInclude.Value defaultPropertyInclusion = config.getDefaultPropertyInclusion(cls, beanDescription.findPropertyInclusion(config.getDefaultPropertyInclusion()));
        JsonInclude.Value defaultPropertyInclusion2 = config.getDefaultPropertyInclusion(javaType.getRawClass(), null);
        JsonInclude.Value value = defaultPropertyInclusion;
        if (defaultPropertyInclusion2 != null) {
            int i = C105541.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[defaultPropertyInclusion2.getValueInclusion().ordinal()];
            if (i != 4) {
                value = defaultPropertyInclusion;
                if (i != 6) {
                    value = defaultPropertyInclusion.withContentInclusion(defaultPropertyInclusion2.getValueInclusion());
                }
            } else {
                value = defaultPropertyInclusion.withContentFilter(defaultPropertyInclusion2.getContentFilter());
            }
        }
        return value;
    }

    protected JsonSerializer<Object> _findKeySerializer(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findKeySerializer = serializerProvider.getAnnotationIntrospector().findKeySerializer(annotated);
        if (findKeySerializer != null) {
            return serializerProvider.serializerInstance(annotated, findKeySerializer);
        }
        return null;
    }

    protected JsonSerializer<?> buildArraySerializer(SerializerProvider serializerProvider, ArrayType arrayType, BeanDescription beanDescription, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        SerializationConfig config = serializerProvider.getConfig();
        Iterator<Serializers> it2 = customSerializers().iterator();
        StringArraySerializer stringArraySerializer = null;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            JsonSerializer<?> findArraySerializer = it2.next().findArraySerializer(config, arrayType, beanDescription, typeSerializer, jsonSerializer);
            stringArraySerializer = findArraySerializer;
            if (findArraySerializer != null) {
                stringArraySerializer = findArraySerializer;
                break;
            }
        }
        ObjectArraySerializer objectArraySerializer = stringArraySerializer;
        if (stringArraySerializer == null) {
            Class<?> rawClass = arrayType.getRawClass();
            if (jsonSerializer == null || ClassUtil.isJacksonStdImpl(jsonSerializer)) {
                stringArraySerializer = String[].class == rawClass ? StringArraySerializer.instance : StdArraySerializers.findStandardImpl(rawClass);
            }
            objectArraySerializer = stringArraySerializer;
            if (stringArraySerializer == null) {
                objectArraySerializer = new ObjectArraySerializer(arrayType.getContentType(), z, typeSerializer, jsonSerializer);
            }
        }
        JsonSerializer<?> jsonSerializer2 = objectArraySerializer;
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it3 = this._factoryConfig.serializerModifiers().iterator();
            while (true) {
                jsonSerializer2 = objectArraySerializer;
                if (!it3.hasNext()) {
                    break;
                }
                objectArraySerializer = it3.next().modifyArraySerializer(config, arrayType, beanDescription, objectArraySerializer);
            }
        }
        return jsonSerializer2;
    }

    protected JsonSerializer<?> buildAtomicReferenceSerializer(SerializerProvider serializerProvider, ReferenceType referenceType, BeanDescription beanDescription, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        boolean z2;
        Object obj;
        JavaType referencedType = referenceType.getReferencedType();
        JsonInclude.Value _findInclusionWithContent = _findInclusionWithContent(serializerProvider, beanDescription, referencedType, AtomicReference.class);
        JsonInclude.Include contentInclusion = _findInclusionWithContent == null ? JsonInclude.Include.USE_DEFAULTS : _findInclusionWithContent.getContentInclusion();
        if (contentInclusion == JsonInclude.Include.USE_DEFAULTS || contentInclusion == JsonInclude.Include.ALWAYS) {
            z2 = false;
            obj = null;
        } else {
            int i = C105541.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[contentInclusion.ordinal()];
            if (i == 1) {
                Object defaultValue = BeanUtil.getDefaultValue(referencedType);
                z2 = true;
                obj = defaultValue;
                if (defaultValue != null) {
                    z2 = true;
                    obj = defaultValue;
                    if (defaultValue.getClass().isArray()) {
                        obj = ArrayBuilders.getArrayComparator(defaultValue);
                        z2 = true;
                    }
                }
            } else if (i == 2) {
                z2 = true;
                obj = null;
                if (referencedType.isReferenceType()) {
                    obj = MapSerializer.MARKER_FOR_EMPTY;
                    z2 = true;
                }
            } else if (i == 3) {
                obj = MapSerializer.MARKER_FOR_EMPTY;
                z2 = true;
            } else if (i != 4) {
                z2 = true;
                obj = null;
            } else {
                Object includeFilterInstance = serializerProvider.includeFilterInstance(null, _findInclusionWithContent.getContentFilter());
                if (includeFilterInstance == null) {
                    z2 = true;
                    obj = includeFilterInstance;
                } else {
                    z2 = serializerProvider.includeFilterSuppressNulls(includeFilterInstance);
                    obj = includeFilterInstance;
                }
            }
        }
        return new AtomicReferenceSerializer(referenceType, z, typeSerializer, jsonSerializer).withContentInclusion(obj, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected JsonSerializer<?> buildCollectionSerializer(SerializerProvider serializerProvider, CollectionType collectionType, BeanDescription beanDescription, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        ContainerSerializer<?> containerSerializer;
        IndexedStringListSerializer indexedStringListSerializer;
        SerializationConfig config = serializerProvider.getConfig();
        Iterator<Serializers> it2 = customSerializers().iterator();
        ContainerSerializer<?> containerSerializer2 = null;
        do {
            containerSerializer = containerSerializer2;
            if (!it2.hasNext()) {
                break;
            }
            containerSerializer = it2.next().findCollectionSerializer(config, collectionType, beanDescription, typeSerializer, jsonSerializer);
            containerSerializer2 = containerSerializer;
        } while (containerSerializer == null);
        ContainerSerializer<?> containerSerializer3 = containerSerializer;
        if (containerSerializer == null) {
            JsonSerializer<?> findSerializerByAnnotations = findSerializerByAnnotations(serializerProvider, collectionType, beanDescription);
            containerSerializer3 = findSerializerByAnnotations;
            if (findSerializerByAnnotations == null) {
                if (beanDescription.findExpectedFormat(null).getShape() == JsonFormat.Shape.OBJECT) {
                    return null;
                }
                Class<?> rawClass = collectionType.getRawClass();
                if (EnumSet.class.isAssignableFrom(rawClass)) {
                    JavaType contentType = collectionType.getContentType();
                    if (!contentType.isEnumImplType()) {
                        contentType = null;
                    }
                    containerSerializer3 = buildEnumSetSerializer(contentType);
                } else {
                    Class<?> rawClass2 = collectionType.getContentType().getRawClass();
                    if (!isIndexedList(rawClass)) {
                        indexedStringListSerializer = findSerializerByAnnotations;
                        if (rawClass2 == String.class) {
                            indexedStringListSerializer = findSerializerByAnnotations;
                            if (ClassUtil.isJacksonStdImpl(jsonSerializer)) {
                                indexedStringListSerializer = StringCollectionSerializer.instance;
                            }
                        }
                    } else if (rawClass2 == String.class) {
                        indexedStringListSerializer = findSerializerByAnnotations;
                        if (ClassUtil.isJacksonStdImpl(jsonSerializer)) {
                            indexedStringListSerializer = IndexedStringListSerializer.instance;
                        }
                    } else {
                        indexedStringListSerializer = buildIndexedListSerializer(collectionType.getContentType(), z, typeSerializer, jsonSerializer);
                    }
                    containerSerializer3 = indexedStringListSerializer;
                    if (indexedStringListSerializer == null) {
                        containerSerializer3 = buildCollectionSerializer(collectionType.getContentType(), z, typeSerializer, jsonSerializer);
                    }
                }
            }
        }
        ContainerSerializer<?> containerSerializer4 = containerSerializer3;
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it3 = this._factoryConfig.serializerModifiers().iterator();
            ContainerSerializer<?> containerSerializer5 = containerSerializer3;
            while (true) {
                containerSerializer4 = containerSerializer5;
                if (!it3.hasNext()) {
                    break;
                }
                containerSerializer5 = it3.next().modifyCollectionSerializer(config, collectionType, beanDescription, containerSerializer5);
            }
        }
        return containerSerializer4;
    }

    public ContainerSerializer<?> buildCollectionSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return new CollectionSerializer(javaType, z, typeSerializer, jsonSerializer);
    }

    public JsonSerializer<?> buildContainerSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer;
        SerializationConfig config = serializerProvider.getConfig();
        if (!z && javaType.useStaticType() && (!javaType.isContainerType() || !javaType.getContentType().isJavaLangObject())) {
            z = true;
        }
        TypeSerializer createTypeSerializer = createTypeSerializer(config, javaType.getContentType());
        if (createTypeSerializer != null) {
            z = false;
        }
        JsonSerializer<Object> _findContentSerializer = _findContentSerializer(serializerProvider, beanDescription.getClassInfo());
        JsonSerializer<?> jsonSerializer2 = null;
        JsonSerializer<?> jsonSerializer3 = null;
        if (javaType.isMapLikeType()) {
            MapLikeType mapLikeType = (MapLikeType) javaType;
            JsonSerializer<Object> _findKeySerializer = _findKeySerializer(serializerProvider, beanDescription.getClassInfo());
            if (mapLikeType instanceof MapType) {
                return buildMapSerializer(serializerProvider, (MapType) mapLikeType, beanDescription, z, _findKeySerializer, createTypeSerializer, _findContentSerializer);
            }
            Iterator<Serializers> it2 = customSerializers().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                JsonSerializer<?> findMapLikeSerializer = it2.next().findMapLikeSerializer(config, mapLikeType, beanDescription, _findKeySerializer, createTypeSerializer, _findContentSerializer);
                jsonSerializer3 = findMapLikeSerializer;
                if (findMapLikeSerializer != null) {
                    jsonSerializer3 = findMapLikeSerializer;
                    break;
                }
            }
            JsonSerializer<?> jsonSerializer4 = jsonSerializer3;
            if (jsonSerializer3 == null) {
                jsonSerializer4 = findSerializerByAnnotations(serializerProvider, javaType, beanDescription);
            }
            JsonSerializer<?> jsonSerializer5 = jsonSerializer4;
            if (jsonSerializer4 != null) {
                jsonSerializer5 = jsonSerializer4;
                if (this._factoryConfig.hasSerializerModifiers()) {
                    Iterator<BeanSerializerModifier> it3 = this._factoryConfig.serializerModifiers().iterator();
                    while (true) {
                        jsonSerializer5 = jsonSerializer4;
                        if (!it3.hasNext()) {
                            break;
                        }
                        jsonSerializer4 = it3.next().modifyMapLikeSerializer(config, mapLikeType, beanDescription, jsonSerializer4);
                    }
                }
            }
            return jsonSerializer5;
        } else if (!javaType.isCollectionLikeType()) {
            if (!javaType.isArrayType()) {
                return null;
            }
            return buildArraySerializer(serializerProvider, (ArrayType) javaType, beanDescription, z, createTypeSerializer, _findContentSerializer);
        } else {
            CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
            if (collectionLikeType instanceof CollectionType) {
                return buildCollectionSerializer(serializerProvider, (CollectionType) collectionLikeType, beanDescription, z, createTypeSerializer, _findContentSerializer);
            }
            Iterator<Serializers> it4 = customSerializers().iterator();
            while (true) {
                if (!it4.hasNext()) {
                    jsonSerializer = jsonSerializer2;
                    break;
                }
                jsonSerializer2 = it4.next().findCollectionLikeSerializer(config, collectionLikeType, beanDescription, createTypeSerializer, _findContentSerializer);
                if (jsonSerializer2 != null) {
                    jsonSerializer = jsonSerializer2;
                    break;
                }
            }
            JsonSerializer<?> jsonSerializer6 = jsonSerializer;
            if (jsonSerializer == null) {
                jsonSerializer6 = findSerializerByAnnotations(serializerProvider, javaType, beanDescription);
            }
            JsonSerializer<?> jsonSerializer7 = jsonSerializer6;
            if (jsonSerializer6 != null) {
                jsonSerializer7 = jsonSerializer6;
                if (this._factoryConfig.hasSerializerModifiers()) {
                    Iterator<BeanSerializerModifier> it5 = this._factoryConfig.serializerModifiers().iterator();
                    while (true) {
                        jsonSerializer7 = jsonSerializer6;
                        if (!it5.hasNext()) {
                            break;
                        }
                        jsonSerializer6 = it5.next().modifyCollectionLikeSerializer(config, collectionLikeType, beanDescription, jsonSerializer6);
                    }
                }
            }
            return jsonSerializer7;
        }
    }

    protected JsonSerializer<?> buildEnumSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonFormat.Value findExpectedFormat = beanDescription.findExpectedFormat(null);
        if (findExpectedFormat.getShape() == JsonFormat.Shape.OBJECT) {
            ((BasicBeanDescription) beanDescription).removeProperty("declaringClass");
            return null;
        }
        EnumSerializer construct = EnumSerializer.construct(javaType.getRawClass(), serializationConfig, beanDescription, findExpectedFormat);
        EnumSerializer enumSerializer = construct;
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it2 = this._factoryConfig.serializerModifiers().iterator();
            while (true) {
                enumSerializer = construct;
                if (!it2.hasNext()) {
                    break;
                }
                construct = it2.next().modifyEnumSerializer(serializationConfig, javaType, beanDescription, construct);
            }
        }
        return enumSerializer;
    }

    public JsonSerializer<?> buildEnumSetSerializer(JavaType javaType) {
        return new EnumSetSerializer(javaType);
    }

    public ContainerSerializer<?> buildIndexedListSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return new IndexedListSerializer(javaType, z, typeSerializer, jsonSerializer);
    }

    protected JsonSerializer<?> buildIterableSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2) throws JsonMappingException {
        return new IterableSerializer(javaType2, z, createTypeSerializer(serializationConfig, javaType2));
    }

    protected JsonSerializer<?> buildIteratorSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2) throws JsonMappingException {
        return new IteratorSerializer(javaType2, z, createTypeSerializer(serializationConfig, javaType2));
    }

    protected JsonSerializer<?> buildMapEntrySerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2, JavaType javaType3) throws JsonMappingException {
        boolean z2;
        Object obj;
        if (JsonFormat.Value.merge(beanDescription.findExpectedFormat(null), serializerProvider.getDefaultPropertyFormat(Map.Entry.class)).getShape() == JsonFormat.Shape.OBJECT) {
            return null;
        }
        MapEntrySerializer mapEntrySerializer = new MapEntrySerializer(javaType3, javaType2, javaType3, z, createTypeSerializer(serializerProvider.getConfig(), javaType3), null);
        JavaType contentType = mapEntrySerializer.getContentType();
        JsonInclude.Value _findInclusionWithContent = _findInclusionWithContent(serializerProvider, beanDescription, contentType, Map.Entry.class);
        JsonInclude.Include contentInclusion = _findInclusionWithContent == null ? JsonInclude.Include.USE_DEFAULTS : _findInclusionWithContent.getContentInclusion();
        if (contentInclusion == JsonInclude.Include.USE_DEFAULTS || contentInclusion == JsonInclude.Include.ALWAYS) {
            return mapEntrySerializer;
        }
        int i = C105541.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[contentInclusion.ordinal()];
        if (i == 1) {
            Object defaultValue = BeanUtil.getDefaultValue(contentType);
            obj = defaultValue;
            z2 = true;
            if (defaultValue != null) {
                obj = defaultValue;
                z2 = true;
                if (defaultValue.getClass().isArray()) {
                    obj = ArrayBuilders.getArrayComparator(defaultValue);
                    z2 = true;
                }
            }
        } else if (i == 2) {
            obj = null;
            z2 = true;
            if (contentType.isReferenceType()) {
                obj = MapSerializer.MARKER_FOR_EMPTY;
                z2 = true;
            }
        } else if (i == 3) {
            obj = MapSerializer.MARKER_FOR_EMPTY;
            z2 = true;
        } else if (i != 4) {
            obj = null;
            z2 = true;
        } else {
            Object includeFilterInstance = serializerProvider.includeFilterInstance(null, _findInclusionWithContent.getContentFilter());
            if (includeFilterInstance == null) {
                obj = includeFilterInstance;
                z2 = true;
            } else {
                z2 = serializerProvider.includeFilterSuppressNulls(includeFilterInstance);
                obj = includeFilterInstance;
            }
        }
        return mapEntrySerializer.withContentInclusion(obj, z2);
    }

    protected JsonSerializer<?> buildMapSerializer(SerializerProvider serializerProvider, MapType mapType, BeanDescription beanDescription, boolean z, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer2) throws JsonMappingException {
        MapSerializer mapSerializer;
        if (beanDescription.findExpectedFormat(null).getShape() == JsonFormat.Shape.OBJECT) {
            return null;
        }
        SerializationConfig config = serializerProvider.getConfig();
        Iterator<Serializers> it2 = customSerializers().iterator();
        MapSerializer mapSerializer2 = null;
        do {
            mapSerializer = mapSerializer2;
            if (!it2.hasNext()) {
                break;
            }
            mapSerializer = it2.next().findMapSerializer(config, mapType, beanDescription, jsonSerializer, typeSerializer, jsonSerializer2);
            mapSerializer2 = mapSerializer;
        } while (mapSerializer == null);
        MapSerializer mapSerializer3 = mapSerializer;
        if (mapSerializer == null) {
            JsonSerializer<?> findSerializerByAnnotations = findSerializerByAnnotations(serializerProvider, mapType, beanDescription);
            mapSerializer3 = findSerializerByAnnotations;
            if (findSerializerByAnnotations == null) {
                Object findFilterId = findFilterId(config, beanDescription);
                JsonIgnoreProperties.Value defaultPropertyIgnorals = config.getDefaultPropertyIgnorals(Map.class, beanDescription.getClassInfo());
                Set<String> findIgnoredForSerialization = defaultPropertyIgnorals == null ? null : defaultPropertyIgnorals.findIgnoredForSerialization();
                JsonIncludeProperties.Value defaultPropertyInclusions = config.getDefaultPropertyInclusions(Map.class, beanDescription.getClassInfo());
                mapSerializer3 = _checkMapContentInclusion(serializerProvider, beanDescription, MapSerializer.construct(findIgnoredForSerialization, defaultPropertyInclusions == null ? null : defaultPropertyInclusions.getIncluded(), mapType, z, typeSerializer, jsonSerializer, jsonSerializer2, findFilterId));
            }
        }
        JsonSerializer<?> jsonSerializer3 = mapSerializer3;
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it3 = this._factoryConfig.serializerModifiers().iterator();
            while (true) {
                jsonSerializer3 = mapSerializer3;
                if (!it3.hasNext()) {
                    break;
                }
                mapSerializer3 = it3.next().modifyMapSerializer(config, mapType, beanDescription, mapSerializer3);
            }
        }
        return jsonSerializer3;
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    @Deprecated
    public JsonSerializer<Object> createKeySerializer(SerializationConfig serializationConfig, JavaType javaType, JsonSerializer<Object> jsonSerializer) {
        BeanDescription introspect = serializationConfig.introspect(javaType);
        JsonSerializer<?> jsonSerializer2 = null;
        if (this._factoryConfig.hasKeySerializers()) {
            Iterator<Serializers> it2 = this._factoryConfig.keySerializers().iterator();
            jsonSerializer2 = null;
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                JsonSerializer<?> findSerializer = it2.next().findSerializer(serializationConfig, javaType, introspect);
                jsonSerializer2 = findSerializer;
                if (findSerializer != null) {
                    jsonSerializer2 = findSerializer;
                    break;
                }
            }
        }
        if (jsonSerializer2 == null) {
            jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                JsonSerializer<Object> stdKeySerializer = StdKeySerializers.getStdKeySerializer(serializationConfig, javaType.getRawClass(), false);
                jsonSerializer2 = stdKeySerializer;
                if (stdKeySerializer == null) {
                    jsonSerializer2 = StdKeySerializers.getFallbackKeySerializer(serializationConfig, javaType.getRawClass());
                }
            }
        }
        JsonSerializer<?> jsonSerializer3 = jsonSerializer2;
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it3 = this._factoryConfig.serializerModifiers().iterator();
            while (true) {
                jsonSerializer3 = jsonSerializer2;
                if (!it3.hasNext()) {
                    break;
                }
                jsonSerializer2 = it3.next().modifyKeySerializer(serializationConfig, javaType, introspect, jsonSerializer2);
            }
        }
        return jsonSerializer3;
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public JsonSerializer<Object> createKeySerializer(SerializerProvider serializerProvider, JavaType javaType, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        JsonValueSerializer jsonValueSerializer;
        SerializationConfig config = serializerProvider.getConfig();
        BeanDescription introspect = config.introspect(javaType);
        if (this._factoryConfig.hasKeySerializers()) {
            Iterator<Serializers> it2 = this._factoryConfig.keySerializers().iterator();
            jsonValueSerializer = null;
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                JsonSerializer<?> findSerializer = it2.next().findSerializer(config, javaType, introspect);
                jsonValueSerializer = findSerializer;
                if (findSerializer != null) {
                    jsonValueSerializer = findSerializer;
                    break;
                }
            }
        } else {
            jsonValueSerializer = null;
        }
        if (jsonValueSerializer == null) {
            JsonSerializer<?> _findKeySerializer = _findKeySerializer(serializerProvider, introspect.getClassInfo());
            jsonValueSerializer = _findKeySerializer;
            if (_findKeySerializer == null) {
                jsonValueSerializer = jsonSerializer;
                if (jsonSerializer == null) {
                    JsonSerializer<Object> stdKeySerializer = StdKeySerializers.getStdKeySerializer(config, javaType.getRawClass(), false);
                    jsonValueSerializer = stdKeySerializer;
                    if (stdKeySerializer == null) {
                        AnnotatedMember findJsonKeyAccessor = introspect.findJsonKeyAccessor();
                        AnnotatedMember annotatedMember = findJsonKeyAccessor;
                        if (findJsonKeyAccessor == null) {
                            annotatedMember = introspect.findJsonValueAccessor();
                        }
                        if (annotatedMember != null) {
                            JsonSerializer<Object> createKeySerializer = createKeySerializer(serializerProvider, annotatedMember.getType(), jsonSerializer);
                            if (config.canOverrideAccessModifiers()) {
                                ClassUtil.checkAndFixAccess(annotatedMember.getMember(), config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                            }
                            jsonValueSerializer = new JsonValueSerializer(annotatedMember, null, createKeySerializer);
                        } else {
                            jsonValueSerializer = StdKeySerializers.getFallbackKeySerializer(config, javaType.getRawClass());
                        }
                    }
                }
            }
        }
        JsonSerializer<?> jsonSerializer2 = jsonValueSerializer;
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it3 = this._factoryConfig.serializerModifiers().iterator();
            while (true) {
                jsonSerializer2 = jsonValueSerializer;
                if (!it3.hasNext()) {
                    break;
                }
                jsonValueSerializer = it3.next().modifyKeySerializer(config, javaType, introspect, jsonValueSerializer);
            }
        }
        return jsonSerializer2;
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public TypeSerializer createTypeSerializer(SerializationConfig serializationConfig, JavaType javaType) {
        Collection<NamedType> collection;
        AnnotatedClass classInfo = serializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder<?> findTypeResolver = serializationConfig.getAnnotationIntrospector().findTypeResolver(serializationConfig, classInfo, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = serializationConfig.getDefaultTyper(javaType);
            collection = null;
        } else {
            collection = serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, classInfo);
        }
        if (findTypeResolver == null) {
            return null;
        }
        return findTypeResolver.buildTypeSerializer(serializationConfig, javaType, collection);
    }

    protected abstract Iterable<Serializers> customSerializers();

    protected Converter<Object, Object> findConverter(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findSerializationConverter = serializerProvider.getAnnotationIntrospector().findSerializationConverter(annotated);
        if (findSerializationConverter == null) {
            return null;
        }
        return serializerProvider.converterInstance(annotated, findSerializationConverter);
    }

    protected JsonSerializer<?> findConvertingSerializer(SerializerProvider serializerProvider, Annotated annotated, JsonSerializer<?> jsonSerializer) throws JsonMappingException {
        Converter<Object, Object> findConverter = findConverter(serializerProvider, annotated);
        return findConverter == null ? jsonSerializer : new StdDelegatingSerializer(findConverter, findConverter.getOutputType(serializerProvider.getTypeFactory()), jsonSerializer);
    }

    public Object findFilterId(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        return serializationConfig.getAnnotationIntrospector().findFilterId(beanDescription.getClassInfo());
    }

    protected JsonSerializer<?> findOptionalStdSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findSerializer(serializerProvider.getConfig(), javaType, beanDescription);
    }

    public JsonSerializer<?> findReferenceSerializer(SerializerProvider serializerProvider, ReferenceType referenceType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        JavaType contentType = referenceType.getContentType();
        TypeSerializer typeSerializer = (TypeSerializer) contentType.getTypeHandler();
        SerializationConfig config = serializerProvider.getConfig();
        TypeSerializer typeSerializer2 = typeSerializer;
        if (typeSerializer == null) {
            typeSerializer2 = createTypeSerializer(config, contentType);
        }
        JsonSerializer<Object> jsonSerializer = (JsonSerializer) contentType.getValueHandler();
        for (Serializers serializers : customSerializers()) {
            JsonSerializer<?> findReferenceSerializer = serializers.findReferenceSerializer(config, referenceType, beanDescription, typeSerializer2, jsonSerializer);
            if (findReferenceSerializer != null) {
                return findReferenceSerializer;
            }
        }
        if (referenceType.isTypeOrSubTypeOf(AtomicReference.class)) {
            return buildAtomicReferenceSerializer(serializerProvider, referenceType, beanDescription, z, typeSerializer2, jsonSerializer);
        }
        return null;
    }

    public final JsonSerializer<?> findSerializerByAddonType(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (Iterator.class.isAssignableFrom(rawClass)) {
            JavaType[] findTypeParameters = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterator.class);
            return buildIteratorSerializer(serializationConfig, javaType, beanDescription, z, (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0]);
        } else if (Iterable.class.isAssignableFrom(rawClass)) {
            JavaType[] findTypeParameters2 = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterable.class);
            return buildIterableSerializer(serializationConfig, javaType, beanDescription, z, (findTypeParameters2 == null || findTypeParameters2.length != 1) ? TypeFactory.unknownType() : findTypeParameters2[0]);
        } else if (!CharSequence.class.isAssignableFrom(rawClass)) {
            return null;
        } else {
            return ToStringSerializer.instance;
        }
    }

    public final JsonSerializer<?> findSerializerByAnnotations(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        if (JsonSerializable.class.isAssignableFrom(javaType.getRawClass())) {
            return SerializableSerializer.instance;
        }
        AnnotatedMember findJsonValueAccessor = beanDescription.findJsonValueAccessor();
        if (findJsonValueAccessor == null) {
            return null;
        }
        if (serializerProvider.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(findJsonValueAccessor.getMember(), serializerProvider.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        JavaType type = findJsonValueAccessor.getType();
        JsonSerializer<Object> findSerializerFromAnnotation = findSerializerFromAnnotation(serializerProvider, findJsonValueAccessor);
        JsonSerializer<Object> jsonSerializer = findSerializerFromAnnotation;
        if (findSerializerFromAnnotation == null) {
            jsonSerializer = (JsonSerializer) type.getValueHandler();
        }
        TypeSerializer typeSerializer = (TypeSerializer) type.getTypeHandler();
        TypeSerializer typeSerializer2 = typeSerializer;
        if (typeSerializer == null) {
            typeSerializer2 = createTypeSerializer(serializerProvider.getConfig(), type);
        }
        return new JsonValueSerializer(findJsonValueAccessor, typeSerializer2, jsonSerializer);
    }

    public final JsonSerializer<?> findSerializerByLookup(JavaType javaType, SerializationConfig serializationConfig, BeanDescription beanDescription, boolean z) {
        Class<? extends JsonSerializer<?>> cls;
        String name = javaType.getRawClass().getName();
        JsonSerializer<?> jsonSerializer = _concrete.get(name);
        return (jsonSerializer != null || (cls = _concreteLazy.get(name)) == null) ? jsonSerializer : (JsonSerializer) ClassUtil.createInstance(cls, false);
    }

    public final JsonSerializer<?> findSerializerByPrimaryType(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        if (javaType.isEnumType()) {
            return buildEnumSerializer(serializerProvider.getConfig(), javaType, beanDescription);
        }
        Class<?> rawClass = javaType.getRawClass();
        JsonSerializer<?> findOptionalStdSerializer = findOptionalStdSerializer(serializerProvider, javaType, beanDescription, z);
        if (findOptionalStdSerializer != null) {
            return findOptionalStdSerializer;
        }
        if (Calendar.class.isAssignableFrom(rawClass)) {
            return CalendarSerializer.instance;
        }
        if (Date.class.isAssignableFrom(rawClass)) {
            return DateSerializer.instance;
        }
        if (Map.Entry.class.isAssignableFrom(rawClass)) {
            JavaType findSuperType = javaType.findSuperType(Map.Entry.class);
            return buildMapEntrySerializer(serializerProvider, javaType, beanDescription, z, findSuperType.containedTypeOrUnknown(0), findSuperType.containedTypeOrUnknown(1));
        } else if (ByteBuffer.class.isAssignableFrom(rawClass)) {
            return new ByteBufferSerializer();
        } else {
            if (InetAddress.class.isAssignableFrom(rawClass)) {
                return new InetAddressSerializer();
            }
            if (InetSocketAddress.class.isAssignableFrom(rawClass)) {
                return new InetSocketAddressSerializer();
            }
            if (TimeZone.class.isAssignableFrom(rawClass)) {
                return new TimeZoneSerializer();
            }
            if (Charset.class.isAssignableFrom(rawClass)) {
                return ToStringSerializer.instance;
            }
            if (!Number.class.isAssignableFrom(rawClass)) {
                return null;
            }
            int i = C105541.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[beanDescription.findExpectedFormat(null).getShape().ordinal()];
            if (i == 1) {
                return ToStringSerializer.instance;
            }
            if (i != 2 && i != 3) {
                return NumberSerializer.instance;
            }
            return null;
        }
    }

    public JsonSerializer<Object> findSerializerFromAnnotation(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findSerializer = serializerProvider.getAnnotationIntrospector().findSerializer(annotated);
        if (findSerializer == null) {
            return null;
        }
        return findConvertingSerializer(serializerProvider, annotated, serializerProvider.serializerInstance(annotated, findSerializer));
    }

    protected boolean isIndexedList(Class<?> cls) {
        return RandomAccess.class.isAssignableFrom(cls);
    }

    public boolean usesStaticTyping(SerializationConfig serializationConfig, BeanDescription beanDescription, TypeSerializer typeSerializer) {
        if (typeSerializer != null) {
            return false;
        }
        JsonSerialize.Typing findSerializationTyping = serializationConfig.getAnnotationIntrospector().findSerializationTyping(beanDescription.getClassInfo());
        return (findSerializationTyping == null || findSerializationTyping == JsonSerialize.Typing.DEFAULT_TYPING) ? serializationConfig.isEnabled(MapperFeature.USE_STATIC_TYPING) : findSerializationTyping == JsonSerialize.Typing.STATIC;
    }
}
