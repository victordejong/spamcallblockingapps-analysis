package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.FilteredBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.UnsupportedTypeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/BeanSerializerFactory.class */
public class BeanSerializerFactory extends BasicSerializerFactory implements Serializable {
    public static final BeanSerializerFactory instance = new BeanSerializerFactory(null);

    protected BeanSerializerFactory(SerializerFactoryConfig serializerFactoryConfig) {
        super(serializerFactoryConfig);
    }

    protected BeanPropertyWriter _constructWriter(SerializerProvider serializerProvider, BeanPropertyDefinition beanPropertyDefinition, PropertyBuilder propertyBuilder, boolean z, AnnotatedMember annotatedMember) throws JsonMappingException {
        PropertyName fullName = beanPropertyDefinition.getFullName();
        JavaType type = annotatedMember.getType();
        BeanProperty.Std std = new BeanProperty.Std(fullName, type, beanPropertyDefinition.getWrapperName(), annotatedMember, beanPropertyDefinition.getMetadata());
        JsonSerializer<?> findSerializerFromAnnotation = findSerializerFromAnnotation(serializerProvider, annotatedMember);
        if (findSerializerFromAnnotation instanceof ResolvableSerializer) {
            ((ResolvableSerializer) findSerializerFromAnnotation).resolve(serializerProvider);
        }
        JsonSerializer<?> handlePrimaryContextualization = serializerProvider.handlePrimaryContextualization(findSerializerFromAnnotation, std);
        TypeSerializer typeSerializer = null;
        if (type.isContainerType() || type.isReferenceType()) {
            typeSerializer = findPropertyContentTypeSerializer(type, serializerProvider.getConfig(), annotatedMember);
        }
        return propertyBuilder.buildWriter(serializerProvider, beanPropertyDefinition, type, handlePrimaryContextualization, findPropertyTypeSerializer(type, serializerProvider.getConfig(), annotatedMember), typeSerializer, annotatedMember, z);
    }

    protected JsonSerializer<?> _createSerializer2(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer;
        boolean z2;
        SerializationConfig config = serializerProvider.getConfig();
        JsonSerializer<?> jsonSerializer2 = null;
        if (javaType.isContainerType()) {
            z2 = z;
            if (!z) {
                z2 = usesStaticTyping(config, beanDescription, null);
            }
            JsonSerializer<?> buildContainerSerializer = buildContainerSerializer(serializerProvider, javaType, beanDescription, z2);
            jsonSerializer = buildContainerSerializer;
            if (buildContainerSerializer != null) {
                return buildContainerSerializer;
            }
        } else {
            if (!javaType.isReferenceType()) {
                Iterator<Serializers> it2 = customSerializers().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    JsonSerializer<?> findSerializer = it2.next().findSerializer(config, javaType, beanDescription);
                    jsonSerializer2 = findSerializer;
                    if (findSerializer != null) {
                        jsonSerializer2 = findSerializer;
                        break;
                    }
                }
            } else {
                jsonSerializer2 = findReferenceSerializer(serializerProvider, (ReferenceType) javaType, beanDescription, z);
            }
            jsonSerializer = jsonSerializer2;
            z2 = z;
            if (jsonSerializer2 == null) {
                jsonSerializer = findSerializerByAnnotations(serializerProvider, javaType, beanDescription);
                z2 = z;
            }
        }
        JsonSerializer<?> jsonSerializer3 = jsonSerializer;
        if (jsonSerializer == null) {
            JsonSerializer<?> findSerializerByLookup = findSerializerByLookup(javaType, config, beanDescription, z2);
            jsonSerializer3 = findSerializerByLookup;
            if (findSerializerByLookup == null) {
                JsonSerializer<?> findSerializerByPrimaryType = findSerializerByPrimaryType(serializerProvider, javaType, beanDescription, z2);
                jsonSerializer3 = findSerializerByPrimaryType;
                if (findSerializerByPrimaryType == null) {
                    JsonSerializer<?> findBeanOrAddOnSerializer = findBeanOrAddOnSerializer(serializerProvider, javaType, beanDescription, z2);
                    jsonSerializer3 = findBeanOrAddOnSerializer;
                    if (findBeanOrAddOnSerializer == null) {
                        jsonSerializer3 = serializerProvider.getUnknownTypeSerializer(beanDescription.getBeanClass());
                    }
                }
            }
        }
        JsonSerializer<?> jsonSerializer4 = jsonSerializer3;
        if (jsonSerializer3 != null) {
            jsonSerializer4 = jsonSerializer3;
            if (this._factoryConfig.hasSerializerModifiers()) {
                Iterator<BeanSerializerModifier> it3 = this._factoryConfig.serializerModifiers().iterator();
                while (true) {
                    jsonSerializer4 = jsonSerializer3;
                    if (!it3.hasNext()) {
                        break;
                    }
                    jsonSerializer3 = it3.next().modifySerializer(config, beanDescription, jsonSerializer3);
                }
            }
        }
        return jsonSerializer4;
    }

    protected JsonSerializer<?> _findUnsupportedTypeSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        String checkUnsupportedType = BeanUtil.checkUnsupportedType(javaType);
        if (checkUnsupportedType == null || serializerProvider.getConfig().findMixInClassFor(javaType.getRawClass()) != null) {
            return null;
        }
        return new UnsupportedTypeSerializer(javaType, checkUnsupportedType);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x01e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> constructBeanOrAddOnSerializer(com.fasterxml.jackson.databind.SerializerProvider r12, com.fasterxml.jackson.databind.JavaType r13, com.fasterxml.jackson.databind.BeanDescription r14, boolean r15) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.BeanSerializerFactory.constructBeanOrAddOnSerializer(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.BeanDescription, boolean):com.fasterxml.jackson.databind.JsonSerializer");
    }

    protected BeanSerializerBuilder constructBeanSerializerBuilder(BeanDescription beanDescription) {
        return new BeanSerializerBuilder(beanDescription);
    }

    protected BeanPropertyWriter constructFilteredBeanWriter(BeanPropertyWriter beanPropertyWriter, Class<?>[] clsArr) {
        return FilteredBeanPropertyWriter.constructViewBased(beanPropertyWriter, clsArr);
    }

    protected ObjectIdWriter constructObjectIdHandler(SerializerProvider serializerProvider, BeanDescription beanDescription, List<BeanPropertyWriter> list) throws JsonMappingException {
        ObjectIdInfo objectIdInfo = beanDescription.getObjectIdInfo();
        if (objectIdInfo == null) {
            return null;
        }
        Class<? extends ObjectIdGenerator<?>> generatorType = objectIdInfo.getGeneratorType();
        if (generatorType != ObjectIdGenerators.PropertyGenerator.class) {
            return ObjectIdWriter.construct(serializerProvider.getTypeFactory().findTypeParameters(serializerProvider.constructType(generatorType), ObjectIdGenerator.class)[0], objectIdInfo.getPropertyName(), serializerProvider.objectIdGeneratorInstance(beanDescription.getClassInfo(), objectIdInfo), objectIdInfo.getAlwaysAsId());
        }
        String simpleName = objectIdInfo.getPropertyName().getSimpleName();
        int size = list.size();
        for (int i = 0; i != size; i++) {
            BeanPropertyWriter beanPropertyWriter = list.get(i);
            if (simpleName.equals(beanPropertyWriter.getName())) {
                if (i > 0) {
                    list.remove(i);
                    list.add(0, beanPropertyWriter);
                }
                return ObjectIdWriter.construct(beanPropertyWriter.getType(), null, new PropertyBasedObjectIdGenerator(objectIdInfo, beanPropertyWriter), objectIdInfo.getAlwaysAsId());
            }
        }
        throw new IllegalArgumentException(String.format("Invalid Object Id definition for %s: cannot find property with name %s", ClassUtil.getTypeDescription(beanDescription.getType()), ClassUtil.name(simpleName)));
    }

    protected PropertyBuilder constructPropertyBuilder(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        return new PropertyBuilder(serializationConfig, beanDescription);
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public JsonSerializer<Object> createSerializer(SerializerProvider serializerProvider, JavaType javaType) throws JsonMappingException {
        JavaType refineSerializationType;
        SerializationConfig config = serializerProvider.getConfig();
        BeanDescription introspect = config.introspect(javaType);
        JsonSerializer<?> findSerializerFromAnnotation = findSerializerFromAnnotation(serializerProvider, introspect.getClassInfo());
        if (findSerializerFromAnnotation != null) {
            return findSerializerFromAnnotation;
        }
        AnnotationIntrospector annotationIntrospector = config.getAnnotationIntrospector();
        boolean z = false;
        if (annotationIntrospector == null) {
            refineSerializationType = javaType;
        } else {
            try {
                refineSerializationType = annotationIntrospector.refineSerializationType(config, introspect.getClassInfo(), javaType);
            } catch (JsonMappingException e) {
                return (JsonSerializer) serializerProvider.reportBadTypeDefinition(introspect, e.getMessage(), new Object[0]);
            }
        }
        if (refineSerializationType == javaType) {
            introspect = introspect;
        } else {
            if (!refineSerializationType.hasRawClass(javaType.getRawClass())) {
                introspect = config.introspect(refineSerializationType);
            }
            z = true;
        }
        Converter<Object, Object> findSerializationConverter = introspect.findSerializationConverter();
        if (findSerializationConverter == null) {
            return _createSerializer2(serializerProvider, refineSerializationType, introspect, z);
        }
        JavaType outputType = findSerializationConverter.getOutputType(serializerProvider.getTypeFactory());
        BeanDescription beanDescription = introspect;
        JsonSerializer<?> jsonSerializer = findSerializerFromAnnotation;
        if (!outputType.hasRawClass(refineSerializationType.getRawClass())) {
            beanDescription = config.introspect(outputType);
            jsonSerializer = findSerializerFromAnnotation(serializerProvider, beanDescription.getClassInfo());
        }
        JsonSerializer<?> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer2 = jsonSerializer;
            if (!outputType.isJavaLangObject()) {
                jsonSerializer2 = _createSerializer2(serializerProvider, outputType, beanDescription, true);
            }
        }
        return new StdDelegatingSerializer(findSerializationConverter, outputType, jsonSerializer2);
    }

    @Override // com.fasterxml.jackson.databind.ser.BasicSerializerFactory
    protected Iterable<Serializers> customSerializers() {
        return this._factoryConfig.serializers();
    }

    protected List<BeanPropertyWriter> filterBeanProperties(SerializationConfig serializationConfig, BeanDescription beanDescription, List<BeanPropertyWriter> list) {
        JsonIgnoreProperties.Value defaultPropertyIgnorals = serializationConfig.getDefaultPropertyIgnorals(beanDescription.getBeanClass(), beanDescription.getClassInfo());
        Set<String> set = null;
        Set<String> findIgnoredForSerialization = defaultPropertyIgnorals != null ? defaultPropertyIgnorals.findIgnoredForSerialization() : null;
        JsonIncludeProperties.Value defaultPropertyInclusions = serializationConfig.getDefaultPropertyInclusions(beanDescription.getBeanClass(), beanDescription.getClassInfo());
        if (defaultPropertyInclusions != null) {
            set = defaultPropertyInclusions.getIncluded();
        }
        if (set != null || (findIgnoredForSerialization != null && !findIgnoredForSerialization.isEmpty())) {
            Iterator<BeanPropertyWriter> it2 = list.iterator();
            while (it2.hasNext()) {
                if (IgnorePropertiesUtil.shouldIgnore(it2.next().getName(), findIgnoredForSerialization, set)) {
                    it2.remove();
                }
            }
        }
        return list;
    }

    public JsonSerializer<Object> findBeanOrAddOnSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        if (isPotentialBeanType(javaType.getRawClass()) || ClassUtil.isEnumType(javaType.getRawClass())) {
            return constructBeanOrAddOnSerializer(serializerProvider, javaType, beanDescription, z);
        }
        return null;
    }

    protected List<BeanPropertyWriter> findBeanProperties(SerializerProvider serializerProvider, BeanDescription beanDescription, BeanSerializerBuilder beanSerializerBuilder) throws JsonMappingException {
        List<BeanPropertyDefinition> findProperties = beanDescription.findProperties();
        SerializationConfig config = serializerProvider.getConfig();
        removeIgnorableTypes(config, beanDescription, findProperties);
        if (config.isEnabled(MapperFeature.REQUIRE_SETTERS_FOR_GETTERS)) {
            removeSetterlessGetters(config, beanDescription, findProperties);
        }
        if (findProperties.isEmpty()) {
            return null;
        }
        boolean usesStaticTyping = usesStaticTyping(config, beanDescription, null);
        PropertyBuilder constructPropertyBuilder = constructPropertyBuilder(config, beanDescription);
        ArrayList arrayList = new ArrayList(findProperties.size());
        for (BeanPropertyDefinition beanPropertyDefinition : findProperties) {
            AnnotatedMember accessor = beanPropertyDefinition.getAccessor();
            if (!beanPropertyDefinition.isTypeId()) {
                AnnotationIntrospector.ReferenceProperty findReferenceType = beanPropertyDefinition.findReferenceType();
                if (findReferenceType == null || !findReferenceType.isBackReference()) {
                    if (accessor instanceof AnnotatedMethod) {
                        arrayList.add(_constructWriter(serializerProvider, beanPropertyDefinition, constructPropertyBuilder, usesStaticTyping, (AnnotatedMethod) accessor));
                    } else {
                        arrayList.add(_constructWriter(serializerProvider, beanPropertyDefinition, constructPropertyBuilder, usesStaticTyping, (AnnotatedField) accessor));
                    }
                }
            } else if (accessor != null) {
                beanSerializerBuilder.setTypeId(accessor);
            }
        }
        return arrayList;
    }

    public TypeSerializer findPropertyContentTypeSerializer(JavaType javaType, SerializationConfig serializationConfig, AnnotatedMember annotatedMember) throws JsonMappingException {
        JavaType contentType = javaType.getContentType();
        TypeResolverBuilder<?> findPropertyContentTypeResolver = serializationConfig.getAnnotationIntrospector().findPropertyContentTypeResolver(serializationConfig, annotatedMember, javaType);
        return findPropertyContentTypeResolver == null ? createTypeSerializer(serializationConfig, contentType) : findPropertyContentTypeResolver.buildTypeSerializer(serializationConfig, contentType, serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, annotatedMember, contentType));
    }

    public TypeSerializer findPropertyTypeSerializer(JavaType javaType, SerializationConfig serializationConfig, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder<?> findPropertyTypeResolver = serializationConfig.getAnnotationIntrospector().findPropertyTypeResolver(serializationConfig, annotatedMember, javaType);
        return findPropertyTypeResolver == null ? createTypeSerializer(serializationConfig, javaType) : findPropertyTypeResolver.buildTypeSerializer(serializationConfig, javaType, serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, annotatedMember, javaType));
    }

    protected boolean isPotentialBeanType(Class<?> cls) {
        return ClassUtil.canBeABeanType(cls) == null && !ClassUtil.isProxyType(cls);
    }

    protected void processViews(SerializationConfig serializationConfig, BeanSerializerBuilder beanSerializerBuilder) {
        List<BeanPropertyWriter> properties = beanSerializerBuilder.getProperties();
        boolean isEnabled = serializationConfig.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        int size = properties.size();
        BeanPropertyWriter[] beanPropertyWriterArr = new BeanPropertyWriter[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            BeanPropertyWriter beanPropertyWriter = properties.get(i2);
            Class<?>[] views = beanPropertyWriter.getViews();
            if (views == null || views.length == 0) {
                i = i;
                if (isEnabled) {
                    beanPropertyWriterArr[i2] = beanPropertyWriter;
                    i = i;
                }
            } else {
                i++;
                beanPropertyWriterArr[i2] = constructFilteredBeanWriter(beanPropertyWriter, views);
            }
        }
        if (!isEnabled || i != 0) {
            beanSerializerBuilder.setFilteredProperties(beanPropertyWriterArr);
        }
    }

    protected void removeIgnorableTypes(SerializationConfig serializationConfig, BeanDescription beanDescription, List<BeanPropertyDefinition> list) {
        AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        HashMap hashMap = new HashMap();
        Iterator<BeanPropertyDefinition> it2 = list.iterator();
        while (it2.hasNext()) {
            BeanPropertyDefinition next = it2.next();
            if (next.getAccessor() == null) {
                it2.remove();
            } else {
                Class<?> rawPrimaryType = next.getRawPrimaryType();
                Boolean bool = (Boolean) hashMap.get(rawPrimaryType);
                Boolean bool2 = bool;
                if (bool == null) {
                    Boolean isIgnoredType = serializationConfig.getConfigOverride(rawPrimaryType).getIsIgnoredType();
                    bool2 = isIgnoredType;
                    if (isIgnoredType == null) {
                        Boolean isIgnorableType = annotationIntrospector.isIgnorableType(serializationConfig.introspectClassAnnotations(rawPrimaryType).getClassInfo());
                        bool2 = isIgnorableType;
                        if (isIgnorableType == null) {
                            bool2 = Boolean.FALSE;
                        }
                    }
                    hashMap.put(rawPrimaryType, bool2);
                }
                if (bool2.booleanValue()) {
                    it2.remove();
                }
            }
        }
    }

    protected List<BeanPropertyWriter> removeOverlappingTypeIds(SerializerProvider serializerProvider, BeanDescription beanDescription, BeanSerializerBuilder beanSerializerBuilder, List<BeanPropertyWriter> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            BeanPropertyWriter beanPropertyWriter = list.get(i);
            TypeSerializer typeSerializer = beanPropertyWriter.getTypeSerializer();
            if (typeSerializer != null && typeSerializer.getTypeInclusion() == JsonTypeInfo.As.EXTERNAL_PROPERTY) {
                PropertyName construct = PropertyName.construct(typeSerializer.getPropertyName());
                Iterator<BeanPropertyWriter> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    BeanPropertyWriter next = it2.next();
                    if (next != beanPropertyWriter && next.wouldConflictWithName(construct)) {
                        beanPropertyWriter.assignTypeSerializer(null);
                        break;
                    }
                }
            }
        }
        return list;
    }

    protected void removeSetterlessGetters(SerializationConfig serializationConfig, BeanDescription beanDescription, List<BeanPropertyDefinition> list) {
        Iterator<BeanPropertyDefinition> it2 = list.iterator();
        while (it2.hasNext()) {
            BeanPropertyDefinition next = it2.next();
            if (!next.couldDeserialize() && !next.isExplicitlyIncluded()) {
                it2.remove();
            }
        }
    }
}
