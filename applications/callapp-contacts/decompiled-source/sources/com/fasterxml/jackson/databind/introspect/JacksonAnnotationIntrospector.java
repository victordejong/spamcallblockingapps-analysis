package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JacksonAnnotationsInside;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonEnumDefaultValue;
import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreType;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonKey;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonMerge;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonRawValue;
import com.fasterxml.jackson.annotation.JsonRootName;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeId;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonUnwrapped;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonAppend;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver;
import com.fasterxml.jackson.databind.annotation.JsonTypeResolver;
import com.fasterxml.jackson.databind.annotation.JsonValueInstantiator;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.ext.Java7Support;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.AttributePropertyWriter;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.LRUMap;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector.class */
public class JacksonAnnotationIntrospector extends AnnotationIntrospector implements Serializable {
    private static final Java7Support _java7Helper;
    protected transient LRUMap<Class<?>, Boolean> _annotationsInside = new LRUMap<>(48, 48);
    protected boolean _cfgConstructorPropertiesImpliesCreator = true;
    private static final Class<? extends Annotation>[] ANNOTATIONS_TO_INFER_SER = {JsonSerialize.class, JsonView.class, JsonFormat.class, JsonTypeInfo.class, JsonRawValue.class, JsonUnwrapped.class, JsonBackReference.class, JsonManagedReference.class};
    private static final Class<? extends Annotation>[] ANNOTATIONS_TO_INFER_DESER = {JsonDeserialize.class, JsonView.class, JsonFormat.class, JsonTypeInfo.class, JsonUnwrapped.class, JsonBackReference.class, JsonManagedReference.class, JsonMerge.class};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonSerialize.Inclusion.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion = iArr;
            try {
                iArr[JsonSerialize.Inclusion.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.NON_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.NON_DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.NON_EMPTY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[JsonSerialize.Inclusion.DEFAULT_INCLUSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    static {
        Java7Support java7Support;
        try {
            java7Support = Java7Support.instance();
        } catch (Throwable th) {
            java7Support = null;
        }
        _java7Helper = java7Support;
    }

    private final Boolean _findSortAlpha(Annotated annotated) {
        JsonPropertyOrder jsonPropertyOrder = (JsonPropertyOrder) _findAnnotation(annotated, JsonPropertyOrder.class);
        if (jsonPropertyOrder == null || !jsonPropertyOrder.alphabetic()) {
            return null;
        }
        return Boolean.TRUE;
    }

    private boolean _primitiveAndWrapper(JavaType javaType, Class<?> cls) {
        return javaType.isPrimitive() ? javaType.hasRawClass(ClassUtil.primitiveType(cls)) : cls.isPrimitive() && cls == ClassUtil.primitiveType(javaType.getRawClass());
    }

    private boolean _primitiveAndWrapper(Class<?> cls, Class<?> cls2) {
        return cls.isPrimitive() ? cls == ClassUtil.primitiveType(cls2) : cls2.isPrimitive() && cls2 == ClassUtil.primitiveType(cls);
    }

    private JsonInclude.Value _refinePropertyInclusion(Annotated annotated, JsonInclude.Value value) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize != null) {
            int i = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[jsonSerialize.include().ordinal()];
            if (i == 1) {
                return value.withValueInclusion(JsonInclude.Include.ALWAYS);
            }
            if (i == 2) {
                return value.withValueInclusion(JsonInclude.Include.NON_NULL);
            }
            if (i == 3) {
                return value.withValueInclusion(JsonInclude.Include.NON_DEFAULT);
            }
            if (i == 4) {
                return value.withValueInclusion(JsonInclude.Include.NON_EMPTY);
            }
        }
        return value;
    }

    protected Class<?> _classIfExplicit(Class<?> cls) {
        if (cls == null || ClassUtil.isBogusClass(cls)) {
            return null;
        }
        return cls;
    }

    protected Class<?> _classIfExplicit(Class<?> cls, Class<?> cls2) {
        Class<?> _classIfExplicit = _classIfExplicit(cls);
        if (_classIfExplicit == null || _classIfExplicit == cls2) {
            return null;
        }
        return _classIfExplicit;
    }

    protected StdTypeResolverBuilder _constructNoTypeResolverBuilder() {
        return StdTypeResolverBuilder.noTypeInfoBuilder();
    }

    protected StdTypeResolverBuilder _constructStdTypeResolverBuilder() {
        return new StdTypeResolverBuilder();
    }

    protected BeanPropertyWriter _constructVirtualProperty(JsonAppend.Attr attr, MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType) {
        PropertyMetadata propertyMetadata = attr.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        String value = attr.value();
        PropertyName _propertyName = _propertyName(attr.propName(), attr.propNamespace());
        PropertyName propertyName = _propertyName;
        if (!_propertyName.hasSimpleName()) {
            propertyName = PropertyName.construct(value);
        }
        return AttributePropertyWriter.construct(value, SimpleBeanPropertyDefinition.construct(mapperConfig, new VirtualAnnotatedMember(annotatedClass, annotatedClass.getRawType(), value, javaType), propertyName, propertyMetadata, attr.include()), annotatedClass.getAnnotations(), javaType);
    }

    protected BeanPropertyWriter _constructVirtualProperty(JsonAppend.Prop prop, MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
        PropertyMetadata propertyMetadata = prop.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        PropertyName _propertyName = _propertyName(prop.name(), prop.namespace());
        JavaType constructType = mapperConfig.constructType(prop.type());
        SimpleBeanPropertyDefinition construct = SimpleBeanPropertyDefinition.construct(mapperConfig, new VirtualAnnotatedMember(annotatedClass, annotatedClass.getRawType(), _propertyName.getSimpleName(), constructType), _propertyName, propertyMetadata, prop.include());
        Class<? extends VirtualBeanPropertyWriter> value = prop.value();
        HandlerInstantiator handlerInstantiator = mapperConfig.getHandlerInstantiator();
        VirtualBeanPropertyWriter virtualPropertyWriterInstance = handlerInstantiator == null ? null : handlerInstantiator.virtualPropertyWriterInstance(mapperConfig, value);
        VirtualBeanPropertyWriter virtualBeanPropertyWriter = virtualPropertyWriterInstance;
        if (virtualPropertyWriterInstance == null) {
            virtualBeanPropertyWriter = (VirtualBeanPropertyWriter) ClassUtil.createInstance(value, mapperConfig.canOverrideAccessModifiers());
        }
        return virtualBeanPropertyWriter.withConfig(mapperConfig, annotatedClass, construct, constructType);
    }

    protected PropertyName _findConstructorName(Annotated annotated) {
        Java7Support java7Support;
        PropertyName findConstructorName;
        if (!(annotated instanceof AnnotatedParameter)) {
            return null;
        }
        AnnotatedParameter annotatedParameter = (AnnotatedParameter) annotated;
        if (annotatedParameter.getOwner() == null || (java7Support = _java7Helper) == null || (findConstructorName = java7Support.findConstructorName(annotatedParameter)) == null) {
            return null;
        }
        return findConstructorName;
    }

    protected TypeResolverBuilder<?> _findTypeResolver(MapperConfig<?> mapperConfig, Annotated annotated, JavaType javaType) {
        TypeResolverBuilder<?> typeResolverBuilder;
        JsonTypeInfo jsonTypeInfo = (JsonTypeInfo) _findAnnotation(annotated, JsonTypeInfo.class);
        JsonTypeResolver jsonTypeResolver = (JsonTypeResolver) _findAnnotation(annotated, JsonTypeResolver.class);
        TypeIdResolver typeIdResolver = null;
        if (jsonTypeResolver != null) {
            if (jsonTypeInfo == null) {
                return null;
            }
            typeResolverBuilder = mapperConfig.typeResolverBuilderInstance(annotated, jsonTypeResolver.value());
        } else if (jsonTypeInfo == null) {
            return null;
        } else {
            if (jsonTypeInfo.use() == JsonTypeInfo.Id.NONE) {
                return _constructNoTypeResolverBuilder();
            }
            typeResolverBuilder = _constructStdTypeResolverBuilder();
        }
        JsonTypeIdResolver jsonTypeIdResolver = (JsonTypeIdResolver) _findAnnotation(annotated, JsonTypeIdResolver.class);
        if (jsonTypeIdResolver != null) {
            typeIdResolver = mapperConfig.typeIdResolverInstance(annotated, jsonTypeIdResolver.value());
        }
        if (typeIdResolver != null) {
            typeIdResolver.init(javaType);
        }
        TypeResolverBuilder init = typeResolverBuilder.init(jsonTypeInfo.use(), typeIdResolver);
        JsonTypeInfo.As include = jsonTypeInfo.include();
        JsonTypeInfo.As as = include;
        if (include == JsonTypeInfo.As.EXTERNAL_PROPERTY) {
            as = include;
            if (annotated instanceof AnnotatedClass) {
                as = JsonTypeInfo.As.PROPERTY;
            }
        }
        TypeResolverBuilder typeProperty = init.inclusion(as).typeProperty(jsonTypeInfo.property());
        Class<?> defaultImpl = jsonTypeInfo.defaultImpl();
        TypeResolverBuilder typeResolverBuilder2 = typeProperty;
        if (defaultImpl != JsonTypeInfo.None.class) {
            typeResolverBuilder2 = typeProperty;
            if (!defaultImpl.isAnnotation()) {
                typeResolverBuilder2 = typeProperty.defaultImpl(defaultImpl);
            }
        }
        return typeResolverBuilder2.typeIdVisibility(jsonTypeInfo.visible());
    }

    protected boolean _isIgnorable(Annotated annotated) {
        Boolean findTransient;
        JsonIgnore jsonIgnore = (JsonIgnore) _findAnnotation(annotated, JsonIgnore.class);
        if (jsonIgnore != null) {
            return jsonIgnore.value();
        }
        Java7Support java7Support = _java7Helper;
        if (java7Support == null || (findTransient = java7Support.findTransient(annotated)) == null) {
            return false;
        }
        return findTransient.booleanValue();
    }

    protected PropertyName _propertyName(String str, String str2) {
        return str.isEmpty() ? PropertyName.USE_DEFAULT : (str2 == null || str2.isEmpty()) ? PropertyName.construct(str) : PropertyName.construct(str, str2);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public void findAndAddVirtualProperties(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, List<BeanPropertyWriter> list) {
        JsonAppend jsonAppend = (JsonAppend) _findAnnotation(annotatedClass, JsonAppend.class);
        if (jsonAppend != null) {
            boolean prepend = jsonAppend.prepend();
            JavaType javaType = null;
            JsonAppend.Attr[] attrs = jsonAppend.attrs();
            int length = attrs.length;
            int i = 0;
            while (i < length) {
                JavaType javaType2 = javaType;
                if (javaType == null) {
                    javaType2 = mapperConfig.constructType(Object.class);
                }
                BeanPropertyWriter _constructVirtualProperty = _constructVirtualProperty(attrs[i], mapperConfig, annotatedClass, javaType2);
                if (prepend) {
                    list.add(i, _constructVirtualProperty);
                } else {
                    list.add(_constructVirtualProperty);
                }
                i++;
                javaType = javaType2;
            }
            JsonAppend.Prop[] props = jsonAppend.props();
            int length2 = props.length;
            for (int i2 = 0; i2 < length2; i2++) {
                BeanPropertyWriter _constructVirtualProperty2 = _constructVirtualProperty(props[i2], mapperConfig, annotatedClass);
                if (prepend) {
                    list.add(i2, _constructVirtualProperty2);
                } else {
                    list.add(_constructVirtualProperty2);
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass annotatedClass, VisibilityChecker<?> visibilityChecker) {
        JsonAutoDetect jsonAutoDetect = (JsonAutoDetect) _findAnnotation(annotatedClass, JsonAutoDetect.class);
        return jsonAutoDetect == null ? visibilityChecker : visibilityChecker.with(jsonAutoDetect);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findContentDeserializer(Annotated annotated) {
        Class<? extends JsonDeserializer> contentUsing;
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        if (jsonDeserialize == null || (contentUsing = jsonDeserialize.contentUsing()) == JsonDeserializer.None.class) {
            return null;
        }
        return contentUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findContentSerializer(Annotated annotated) {
        Class<? extends JsonSerializer> contentUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize == null || (contentUsing = jsonSerialize.contentUsing()) == JsonSerializer.None.class) {
            return null;
        }
        return contentUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonCreator.Mode findCreatorAnnotation(MapperConfig<?> mapperConfig, Annotated annotated) {
        Java7Support java7Support;
        Boolean hasCreatorAnnotation;
        JsonCreator jsonCreator = (JsonCreator) _findAnnotation(annotated, JsonCreator.class);
        if (jsonCreator != null) {
            return jsonCreator.mode();
        }
        if (!this._cfgConstructorPropertiesImpliesCreator || !mapperConfig.isEnabled(MapperFeature.INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES) || !(annotated instanceof AnnotatedConstructor) || (java7Support = _java7Helper) == null || (hasCreatorAnnotation = java7Support.hasCreatorAnnotation(annotated)) == null || !hasCreatorAnnotation.booleanValue()) {
            return null;
        }
        return JsonCreator.Mode.PROPERTIES;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonCreator.Mode findCreatorBinding(Annotated annotated) {
        JsonCreator jsonCreator = (JsonCreator) _findAnnotation(annotated, JsonCreator.class);
        if (jsonCreator == null) {
            return null;
        }
        return jsonCreator.mode();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Enum<?> findDefaultEnumValue(Class<Enum<?>> cls) {
        return ClassUtil.findFirstAnnotatedEnumValue(cls, JsonEnumDefaultValue.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializationContentConverter(AnnotatedMember annotatedMember) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotatedMember, JsonDeserialize.class);
        if (jsonDeserialize == null) {
            return null;
        }
        return _classIfExplicit(jsonDeserialize.contentConverter(), Converter.None.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializationConverter(Annotated annotated) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        if (jsonDeserialize == null) {
            return null;
        }
        return _classIfExplicit(jsonDeserialize.converter(), Converter.None.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializer(Annotated annotated) {
        Class<? extends JsonDeserializer> using;
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        if (jsonDeserialize == null || (using = jsonDeserialize.using()) == JsonDeserializer.None.class) {
            return null;
        }
        return using;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public void findEnumAliases(Class<?> cls, Enum<?>[] enumArr, String[][] strArr) {
        Field[] declaredFields;
        JsonAlias jsonAlias;
        for (Field field : cls.getDeclaredFields()) {
            if (field.isEnumConstant() && (jsonAlias = (JsonAlias) field.getAnnotation(JsonAlias.class)) != null) {
                String[] value = jsonAlias.value();
                if (value.length != 0) {
                    String name = field.getName();
                    int length = enumArr.length;
                    for (int i = 0; i < length; i++) {
                        if (name.equals(enumArr[i].name())) {
                            strArr[i] = value;
                        }
                    }
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String[] findEnumValues(Class<?> cls, Enum<?>[] enumArr, String[] strArr) {
        Field[] declaredFields = cls.getDeclaredFields();
        HashMap hashMap = null;
        for (Field field : declaredFields) {
            hashMap = hashMap;
            if (field.isEnumConstant()) {
                JsonProperty jsonProperty = (JsonProperty) field.getAnnotation(JsonProperty.class);
                hashMap = hashMap;
                if (jsonProperty != null) {
                    String value = jsonProperty.value();
                    hashMap = hashMap;
                    if (!value.isEmpty()) {
                        hashMap = hashMap;
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        hashMap.put(field.getName(), value);
                    }
                }
            }
        }
        if (hashMap != null) {
            int length = enumArr.length;
            for (int i = 0; i < length; i++) {
                String str = (String) hashMap.get(enumArr[i].name());
                if (str != null) {
                    strArr[i] = str;
                }
            }
        }
        return strArr;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findFilterId(Annotated annotated) {
        JsonFilter jsonFilter = (JsonFilter) _findAnnotation(annotated, JsonFilter.class);
        if (jsonFilter == null) {
            return null;
        }
        String value = jsonFilter.value();
        if (!value.isEmpty()) {
            return value;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonFormat.Value findFormat(Annotated annotated) {
        JsonFormat jsonFormat = (JsonFormat) _findAnnotation(annotated, JsonFormat.class);
        if (jsonFormat == null) {
            return null;
        }
        return JsonFormat.Value.from(jsonFormat);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findImplicitPropertyName(AnnotatedMember annotatedMember) {
        PropertyName _findConstructorName = _findConstructorName(annotatedMember);
        if (_findConstructorName == null) {
            return null;
        }
        return _findConstructorName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JacksonInject.Value findInjectableValue(AnnotatedMember annotatedMember) {
        String str;
        JacksonInject jacksonInject = (JacksonInject) _findAnnotation(annotatedMember, JacksonInject.class);
        if (jacksonInject == null) {
            return null;
        }
        JacksonInject.Value from = JacksonInject.Value.from(jacksonInject);
        JacksonInject.Value value = from;
        if (!from.hasId()) {
            if (!(annotatedMember instanceof AnnotatedMethod)) {
                str = annotatedMember.getRawType().getName();
            } else {
                AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
                str = annotatedMethod.getParameterCount() == 0 ? annotatedMember.getRawType().getName() : annotatedMethod.getRawParameterType(0).getName();
            }
            value = from.withId(str);
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        JacksonInject.Value findInjectableValue = findInjectableValue(annotatedMember);
        if (findInjectableValue == null) {
            return null;
        }
        return findInjectableValue.getId();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findKeyDeserializer(Annotated annotated) {
        Class<? extends KeyDeserializer> keyUsing;
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        if (jsonDeserialize == null || (keyUsing = jsonDeserialize.keyUsing()) == KeyDeserializer.None.class) {
            return null;
        }
        return keyUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findKeySerializer(Annotated annotated) {
        Class<? extends JsonSerializer> keyUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize == null || (keyUsing = jsonSerialize.keyUsing()) == JsonSerializer.None.class) {
            return null;
        }
        return keyUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean findMergeInfo(Annotated annotated) {
        JsonMerge jsonMerge = (JsonMerge) _findAnnotation(annotated, JsonMerge.class);
        if (jsonMerge == null) {
            return null;
        }
        return jsonMerge.value().asBoolean();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findNameForDeserialization(Annotated annotated) {
        boolean z;
        JsonSetter jsonSetter = (JsonSetter) _findAnnotation(annotated, JsonSetter.class);
        if (jsonSetter != null) {
            String value = jsonSetter.value();
            if (!value.isEmpty()) {
                return PropertyName.construct(value);
            }
            z = true;
        } else {
            z = false;
        }
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        String namespace = null;
        if (jsonProperty != null) {
            namespace = jsonProperty.namespace();
            if (namespace == null || namespace.isEmpty()) {
            }
            return PropertyName.construct(jsonProperty.value(), namespace);
        } else if (z || _hasOneOf(annotated, ANNOTATIONS_TO_INFER_DESER)) {
            return PropertyName.USE_DEFAULT;
        } else {
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findNameForSerialization(Annotated annotated) {
        boolean z;
        JsonGetter jsonGetter = (JsonGetter) _findAnnotation(annotated, JsonGetter.class);
        if (jsonGetter != null) {
            String value = jsonGetter.value();
            if (!value.isEmpty()) {
                return PropertyName.construct(value);
            }
            z = true;
        } else {
            z = false;
        }
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        String namespace = null;
        if (jsonProperty != null) {
            namespace = jsonProperty.namespace();
            if (namespace == null || namespace.isEmpty()) {
            }
            return PropertyName.construct(jsonProperty.value(), namespace);
        } else if (z || _hasOneOf(annotated, ANNOTATIONS_TO_INFER_SER)) {
            return PropertyName.USE_DEFAULT;
        } else {
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findNamingStrategy(AnnotatedClass annotatedClass) {
        JsonNaming jsonNaming = (JsonNaming) _findAnnotation(annotatedClass, JsonNaming.class);
        if (jsonNaming == null) {
            return null;
        }
        return jsonNaming.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findNullSerializer(Annotated annotated) {
        Class<? extends JsonSerializer> nullsUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize == null || (nullsUsing = jsonSerialize.nullsUsing()) == JsonSerializer.None.class) {
            return null;
        }
        return nullsUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public ObjectIdInfo findObjectIdInfo(Annotated annotated) {
        JsonIdentityInfo jsonIdentityInfo = (JsonIdentityInfo) _findAnnotation(annotated, JsonIdentityInfo.class);
        if (jsonIdentityInfo == null || jsonIdentityInfo.generator() == ObjectIdGenerators.None.class) {
            return null;
        }
        return new ObjectIdInfo(PropertyName.construct(jsonIdentityInfo.property()), jsonIdentityInfo.scope(), jsonIdentityInfo.generator(), jsonIdentityInfo.resolver());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectIdInfo) {
        JsonIdentityReference jsonIdentityReference = (JsonIdentityReference) _findAnnotation(annotated, JsonIdentityReference.class);
        if (jsonIdentityReference == null) {
            return objectIdInfo;
        }
        ObjectIdInfo objectIdInfo2 = objectIdInfo;
        if (objectIdInfo == null) {
            objectIdInfo2 = ObjectIdInfo.empty();
        }
        return objectIdInfo2.withAlwaysAsId(jsonIdentityReference.alwaysAsId());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Class<?> findPOJOBuilder(AnnotatedClass annotatedClass) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotatedClass, JsonDeserialize.class);
        if (jsonDeserialize == null) {
            return null;
        }
        return _classIfExplicit(jsonDeserialize.builder());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass annotatedClass) {
        JsonPOJOBuilder jsonPOJOBuilder = (JsonPOJOBuilder) _findAnnotation(annotatedClass, JsonPOJOBuilder.class);
        if (jsonPOJOBuilder == null) {
            return null;
        }
        return new JsonPOJOBuilder.Value(jsonPOJOBuilder);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonProperty.Access findPropertyAccess(Annotated annotated) {
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        if (jsonProperty != null) {
            return jsonProperty.access();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public List<PropertyName> findPropertyAliases(Annotated annotated) {
        JsonAlias jsonAlias = (JsonAlias) _findAnnotation(annotated, JsonAlias.class);
        if (jsonAlias == null) {
            return null;
        }
        String[] value = jsonAlias.value();
        int length = value.length;
        if (length == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        for (String str : value) {
            arrayList.add(PropertyName.construct(str));
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        if (javaType.getContentType() != null) {
            return _findTypeResolver(mapperConfig, annotatedMember, javaType);
        }
        throw new IllegalArgumentException("Must call method with a container or reference type (got " + javaType + ")");
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findPropertyDefaultValue(Annotated annotated) {
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        if (jsonProperty == null) {
            return null;
        }
        String defaultValue = jsonProperty.defaultValue();
        if (defaultValue.isEmpty()) {
            return null;
        }
        return defaultValue;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findPropertyDescription(Annotated annotated) {
        JsonPropertyDescription jsonPropertyDescription = (JsonPropertyDescription) _findAnnotation(annotated, JsonPropertyDescription.class);
        if (jsonPropertyDescription == null) {
            return null;
        }
        return jsonPropertyDescription.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonIgnoreProperties.Value findPropertyIgnoralByName(MapperConfig<?> mapperConfig, Annotated annotated) {
        JsonIgnoreProperties jsonIgnoreProperties = (JsonIgnoreProperties) _findAnnotation(annotated, JsonIgnoreProperties.class);
        return jsonIgnoreProperties == null ? JsonIgnoreProperties.Value.empty() : JsonIgnoreProperties.Value.from(jsonIgnoreProperties);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonIgnoreProperties.Value findPropertyIgnorals(Annotated annotated) {
        return findPropertyIgnoralByName(null, annotated);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonInclude.Value findPropertyInclusion(Annotated annotated) {
        JsonInclude jsonInclude = (JsonInclude) _findAnnotation(annotated, JsonInclude.class);
        JsonInclude.Value empty = jsonInclude == null ? JsonInclude.Value.empty() : JsonInclude.Value.from(jsonInclude);
        JsonInclude.Value value = empty;
        if (empty.getValueInclusion() == JsonInclude.Include.USE_DEFAULTS) {
            value = _refinePropertyInclusion(annotated, empty);
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonIncludeProperties.Value findPropertyInclusionByName(MapperConfig<?> mapperConfig, Annotated annotated) {
        JsonIncludeProperties jsonIncludeProperties = (JsonIncludeProperties) _findAnnotation(annotated, JsonIncludeProperties.class);
        return jsonIncludeProperties == null ? JsonIncludeProperties.Value.all() : JsonIncludeProperties.Value.from(jsonIncludeProperties);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Integer findPropertyIndex(Annotated annotated) {
        int index;
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        if (jsonProperty == null || (index = jsonProperty.index()) == -1) {
            return null;
        }
        return Integer.valueOf(index);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        if (javaType.isContainerType() || javaType.isReferenceType()) {
            return null;
        }
        return _findTypeResolver(mapperConfig, annotatedMember, javaType);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public AnnotationIntrospector.ReferenceProperty findReferenceType(AnnotatedMember annotatedMember) {
        JsonManagedReference jsonManagedReference = (JsonManagedReference) _findAnnotation(annotatedMember, JsonManagedReference.class);
        if (jsonManagedReference != null) {
            return AnnotationIntrospector.ReferenceProperty.managed(jsonManagedReference.value());
        }
        JsonBackReference jsonBackReference = (JsonBackReference) _findAnnotation(annotatedMember, JsonBackReference.class);
        if (jsonBackReference != null) {
            return AnnotationIntrospector.ReferenceProperty.back(jsonBackReference.value());
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findRenameByField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, PropertyName propertyName) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findRootName(AnnotatedClass annotatedClass) {
        JsonRootName jsonRootName = (JsonRootName) _findAnnotation(annotatedClass, JsonRootName.class);
        String str = null;
        if (jsonRootName == null) {
            return null;
        }
        String namespace = jsonRootName.namespace();
        if (namespace == null || !namespace.isEmpty()) {
            str = namespace;
        }
        return PropertyName.construct(jsonRootName.value(), str);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotatedMember, JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return _classIfExplicit(jsonSerialize.contentConverter(), Converter.None.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializationConverter(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return _classIfExplicit(jsonSerialize.converter(), Converter.None.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String[] findSerializationPropertyOrder(AnnotatedClass annotatedClass) {
        JsonPropertyOrder jsonPropertyOrder = (JsonPropertyOrder) _findAnnotation(annotatedClass, JsonPropertyOrder.class);
        if (jsonPropertyOrder == null) {
            return null;
        }
        return jsonPropertyOrder.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean findSerializationSortAlphabetically(Annotated annotated) {
        return _findSortAlpha(annotated);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonSerialize.Typing findSerializationTyping(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return jsonSerialize.typing();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializer(Annotated annotated) {
        Class<? extends JsonSerializer> using;
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize != null && (using = jsonSerialize.using()) != JsonSerializer.None.class) {
            return using;
        }
        JsonRawValue jsonRawValue = (JsonRawValue) _findAnnotation(annotated, JsonRawValue.class);
        if (jsonRawValue == null || !jsonRawValue.value()) {
            return null;
        }
        return new RawSerializer(annotated.getRawType());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonSetter.Value findSetterInfo(Annotated annotated) {
        return JsonSetter.Value.from((JsonSetter) _findAnnotation(annotated, JsonSetter.class));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public List<NamedType> findSubtypes(Annotated annotated) {
        JsonSubTypes jsonSubTypes = (JsonSubTypes) _findAnnotation(annotated, JsonSubTypes.class);
        if (jsonSubTypes == null) {
            return null;
        }
        JsonSubTypes.Type[] value = jsonSubTypes.value();
        ArrayList arrayList = new ArrayList(value.length);
        for (JsonSubTypes.Type type : value) {
            arrayList.add(new NamedType(type.value(), type.name()));
            for (String str : type.names()) {
                arrayList.add(new NamedType(type.value(), str));
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findTypeName(AnnotatedClass annotatedClass) {
        JsonTypeName jsonTypeName = (JsonTypeName) _findAnnotation(annotatedClass, JsonTypeName.class);
        if (jsonTypeName == null) {
            return null;
        }
        return jsonTypeName.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType) {
        return _findTypeResolver(mapperConfig, annotatedClass, javaType);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        JsonUnwrapped jsonUnwrapped = (JsonUnwrapped) _findAnnotation(annotatedMember, JsonUnwrapped.class);
        if (jsonUnwrapped == null || !jsonUnwrapped.enabled()) {
            return null;
        }
        return NameTransformer.simpleTransformer(jsonUnwrapped.prefix(), jsonUnwrapped.suffix());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findValueInstantiator(AnnotatedClass annotatedClass) {
        JsonValueInstantiator jsonValueInstantiator = (JsonValueInstantiator) _findAnnotation(annotatedClass, JsonValueInstantiator.class);
        if (jsonValueInstantiator == null) {
            return null;
        }
        return jsonValueInstantiator.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Class<?>[] findViews(Annotated annotated) {
        JsonView jsonView = (JsonView) _findAnnotation(annotated, JsonView.class);
        if (jsonView == null) {
            return null;
        }
        return jsonView.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAnyGetter(Annotated annotated) {
        JsonAnyGetter jsonAnyGetter = (JsonAnyGetter) _findAnnotation(annotated, JsonAnyGetter.class);
        if (jsonAnyGetter == null) {
            return null;
        }
        return Boolean.valueOf(jsonAnyGetter.enabled());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return _hasAnnotation(annotatedMethod, JsonAnyGetter.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAnySetter(Annotated annotated) {
        JsonAnySetter jsonAnySetter = (JsonAnySetter) _findAnnotation(annotated, JsonAnySetter.class);
        if (jsonAnySetter == null) {
            return null;
        }
        return Boolean.valueOf(jsonAnySetter.enabled());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAsKey(MapperConfig<?> mapperConfig, Annotated annotated) {
        JsonKey jsonKey = (JsonKey) _findAnnotation(annotated, JsonKey.class);
        if (jsonKey == null) {
            return null;
        }
        return Boolean.valueOf(jsonKey.value());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAsValue(Annotated annotated) {
        JsonValue jsonValue = (JsonValue) _findAnnotation(annotated, JsonValue.class);
        if (jsonValue == null) {
            return null;
        }
        return Boolean.valueOf(jsonValue.value());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        JsonValue jsonValue = (JsonValue) _findAnnotation(annotatedMethod, JsonValue.class);
        return jsonValue != null && jsonValue.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasCreatorAnnotation(Annotated annotated) {
        Java7Support java7Support;
        Boolean hasCreatorAnnotation;
        JsonCreator jsonCreator = (JsonCreator) _findAnnotation(annotated, JsonCreator.class);
        if (jsonCreator != null) {
            return jsonCreator.mode() != JsonCreator.Mode.DISABLED;
        }
        if (!this._cfgConstructorPropertiesImpliesCreator || !(annotated instanceof AnnotatedConstructor) || (java7Support = _java7Helper) == null || (hasCreatorAnnotation = java7Support.hasCreatorAnnotation(annotated)) == null) {
            return false;
        }
        return hasCreatorAnnotation.booleanValue();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return _isIgnorable(annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotatedMember, JsonProperty.class);
        if (jsonProperty != null) {
            return Boolean.valueOf(jsonProperty.required());
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public boolean isAnnotationBundle(Annotation annotation) {
        Class<? extends Annotation> annotationType = annotation.annotationType();
        Boolean bool = this._annotationsInside.get(annotationType);
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = Boolean.valueOf(annotationType.getAnnotation(JacksonAnnotationsInside.class) != null);
            this._annotationsInside.putIfAbsent(annotationType, bool2);
        }
        return bool2.booleanValue();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean isIgnorableType(AnnotatedClass annotatedClass) {
        JsonIgnoreType jsonIgnoreType = (JsonIgnoreType) _findAnnotation(annotatedClass, JsonIgnoreType.class);
        if (jsonIgnoreType == null) {
            return null;
        }
        return Boolean.valueOf(jsonIgnoreType.value());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        return Boolean.valueOf(_hasAnnotation(annotatedMember, JsonTypeId.class));
    }

    protected Object readResolve() {
        if (this._annotationsInside == null) {
            this._annotationsInside = new LRUMap<>(48, 48);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JavaType refineDeserializationType(MapperConfig<?> mapperConfig, Annotated annotated, JavaType javaType) throws JsonMappingException {
        TypeFactory typeFactory = mapperConfig.getTypeFactory();
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        Class<?> _classIfExplicit = jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.as());
        JavaType javaType2 = javaType;
        if (_classIfExplicit != null) {
            javaType2 = javaType;
            if (!javaType.hasRawClass(_classIfExplicit)) {
                javaType2 = javaType;
                if (!_primitiveAndWrapper(javaType, _classIfExplicit)) {
                    try {
                        javaType2 = typeFactory.constructSpecializedType(javaType, _classIfExplicit);
                    } catch (IllegalArgumentException e) {
                        throw new JsonMappingException((Closeable) null, String.format("Failed to narrow type %s with annotation (value %s), from '%s': %s", javaType, _classIfExplicit.getName(), annotated.getName(), e.getMessage()), e);
                    }
                }
            }
        }
        MapLikeType mapLikeType = javaType2;
        if (javaType2.isMapLikeType()) {
            JavaType keyType = javaType2.getKeyType();
            Class<?> _classIfExplicit2 = jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.keyAs());
            mapLikeType = javaType2;
            if (_classIfExplicit2 != null) {
                mapLikeType = javaType2;
                if (!_primitiveAndWrapper(keyType, _classIfExplicit2)) {
                    try {
                        mapLikeType = ((MapLikeType) javaType2).withKeyType(typeFactory.constructSpecializedType(keyType, _classIfExplicit2));
                    } catch (IllegalArgumentException e2) {
                        throw new JsonMappingException((Closeable) null, String.format("Failed to narrow key type of %s with concrete-type annotation (value %s), from '%s': %s", javaType2, _classIfExplicit2.getName(), annotated.getName(), e2.getMessage()), e2);
                    }
                }
            }
        }
        JavaType contentType = mapLikeType.getContentType();
        JavaType javaType3 = mapLikeType;
        if (contentType != null) {
            Class<?> _classIfExplicit3 = jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.contentAs());
            javaType3 = mapLikeType;
            if (_classIfExplicit3 != null) {
                javaType3 = mapLikeType;
                if (!_primitiveAndWrapper(contentType, _classIfExplicit3)) {
                    try {
                        javaType3 = mapLikeType.withContentType(typeFactory.constructSpecializedType(contentType, _classIfExplicit3));
                    } catch (IllegalArgumentException e3) {
                        throw new JsonMappingException((Closeable) null, String.format("Failed to narrow value type of %s with concrete-type annotation (value %s), from '%s': %s", mapLikeType, _classIfExplicit3.getName(), annotated.getName(), e3.getMessage()), e3);
                    }
                }
            }
        }
        return javaType3;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JavaType refineSerializationType(MapperConfig<?> mapperConfig, Annotated annotated, JavaType javaType) throws JsonMappingException {
        JavaType javaType2;
        JavaType javaType3;
        TypeFactory typeFactory = mapperConfig.getTypeFactory();
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        Class<?> _classIfExplicit = jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.as());
        JavaType javaType4 = javaType;
        if (_classIfExplicit != null) {
            if (javaType.hasRawClass(_classIfExplicit)) {
                javaType4 = javaType.withStaticTyping();
            } else {
                Class<?> rawClass = javaType.getRawClass();
                try {
                    if (_classIfExplicit.isAssignableFrom(rawClass)) {
                        javaType4 = typeFactory.constructGeneralizedType(javaType, _classIfExplicit);
                    } else if (rawClass.isAssignableFrom(_classIfExplicit)) {
                        javaType4 = typeFactory.constructSpecializedType(javaType, _classIfExplicit);
                    } else if (_primitiveAndWrapper(rawClass, _classIfExplicit)) {
                        javaType4 = javaType.withStaticTyping();
                    } else {
                        throw new JsonMappingException((Closeable) null, String.format("Cannot refine serialization type %s into %s; types not related", javaType, _classIfExplicit.getName()));
                    }
                } catch (IllegalArgumentException e) {
                    throw new JsonMappingException((Closeable) null, String.format("Failed to widen type %s with annotation (value %s), from '%s': %s", javaType, _classIfExplicit.getName(), annotated.getName(), e.getMessage()), e);
                }
            }
        }
        MapLikeType mapLikeType = javaType4;
        if (javaType4.isMapLikeType()) {
            JavaType keyType = javaType4.getKeyType();
            Class<?> _classIfExplicit2 = jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.keyAs());
            mapLikeType = javaType4;
            if (_classIfExplicit2 != null) {
                if (keyType.hasRawClass(_classIfExplicit2)) {
                    javaType3 = keyType.withStaticTyping();
                } else {
                    Class<?> rawClass2 = keyType.getRawClass();
                    try {
                        if (_classIfExplicit2.isAssignableFrom(rawClass2)) {
                            javaType3 = typeFactory.constructGeneralizedType(keyType, _classIfExplicit2);
                        } else if (rawClass2.isAssignableFrom(_classIfExplicit2)) {
                            javaType3 = typeFactory.constructSpecializedType(keyType, _classIfExplicit2);
                        } else if (_primitiveAndWrapper(rawClass2, _classIfExplicit2)) {
                            javaType3 = keyType.withStaticTyping();
                        } else {
                            throw new JsonMappingException((Closeable) null, String.format("Cannot refine serialization key type %s into %s; types not related", keyType, _classIfExplicit2.getName()));
                        }
                    } catch (IllegalArgumentException e2) {
                        throw new JsonMappingException((Closeable) null, String.format("Failed to widen key type of %s with concrete-type annotation (value %s), from '%s': %s", javaType4, _classIfExplicit2.getName(), annotated.getName(), e2.getMessage()), e2);
                    }
                }
                mapLikeType = ((MapLikeType) javaType4).withKeyType(javaType3);
            }
        }
        JavaType contentType = mapLikeType.getContentType();
        JavaType javaType5 = mapLikeType;
        if (contentType != null) {
            Class<?> _classIfExplicit3 = jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.contentAs());
            javaType5 = mapLikeType;
            if (_classIfExplicit3 != null) {
                if (contentType.hasRawClass(_classIfExplicit3)) {
                    javaType2 = contentType.withStaticTyping();
                } else {
                    Class<?> rawClass3 = contentType.getRawClass();
                    try {
                        if (_classIfExplicit3.isAssignableFrom(rawClass3)) {
                            javaType2 = typeFactory.constructGeneralizedType(contentType, _classIfExplicit3);
                        } else if (rawClass3.isAssignableFrom(_classIfExplicit3)) {
                            javaType2 = typeFactory.constructSpecializedType(contentType, _classIfExplicit3);
                        } else if (_primitiveAndWrapper(rawClass3, _classIfExplicit3)) {
                            javaType2 = contentType.withStaticTyping();
                        } else {
                            throw new JsonMappingException((Closeable) null, String.format("Cannot refine serialization content type %s into %s; types not related", contentType, _classIfExplicit3.getName()));
                        }
                    } catch (IllegalArgumentException e3) {
                        throw new JsonMappingException((Closeable) null, String.format("Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from '%s': %s", mapLikeType, _classIfExplicit3.getName(), annotated.getName(), e3.getMessage()), e3);
                    }
                }
                javaType5 = mapLikeType.withContentType(javaType2);
            }
        }
        return javaType5;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public AnnotatedMethod resolveSetterConflict(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, AnnotatedMethod annotatedMethod2) {
        Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
        Class<?> rawParameterType2 = annotatedMethod2.getRawParameterType(0);
        if (rawParameterType.isPrimitive()) {
            if (!rawParameterType2.isPrimitive()) {
                return annotatedMethod;
            }
        } else if (rawParameterType2.isPrimitive()) {
            return annotatedMethod2;
        }
        if (rawParameterType == String.class) {
            if (rawParameterType2 != String.class) {
                return annotatedMethod;
            }
            return null;
        } else if (rawParameterType2 == String.class) {
            return annotatedMethod2;
        } else {
            return null;
        }
    }

    @Override // com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }
}
