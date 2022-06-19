package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.deser.impl.ErrorThrowingDeserializer;
import com.fasterxml.jackson.databind.deser.impl.FieldProperty;
import com.fasterxml.jackson.databind.deser.impl.MethodProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.SetterlessProperty;
import com.fasterxml.jackson.databind.deser.impl.UnsupportedTypeDeserializer;
import com.fasterxml.jackson.databind.deser.std.ThrowableDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.impl.SubTypeValidator;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializerFactory.class */
public class BeanDeserializerFactory extends BasicDeserializerFactory implements Serializable {
    private static final Class<?>[] INIT_CAUSE_PARAMS = {Throwable.class};
    public static final BeanDeserializerFactory instance = new BeanDeserializerFactory(new DeserializerFactoryConfig());

    public BeanDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        super(deserializerFactoryConfig);
    }

    private boolean _isSetterlessType(Class<?> cls) {
        return Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls);
    }

    protected JsonDeserializer<Object> _findUnsupportedTypeDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        String checkUnsupportedType = BeanUtil.checkUnsupportedType(javaType);
        if (checkUnsupportedType == null || deserializationContext.getConfig().findMixInClassFor(javaType.getRawClass()) != null) {
            return null;
        }
        return new UnsupportedTypeDeserializer(javaType, checkUnsupportedType);
    }

    protected void _validateSubType(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        SubTypeValidator.instance().validateSubType(deserializationContext, javaType, beanDescription);
    }

    protected void addBackReferenceProperties(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        List<BeanPropertyDefinition> findBackReferences = beanDescription.findBackReferences();
        if (findBackReferences != null) {
            for (BeanPropertyDefinition beanPropertyDefinition : findBackReferences) {
                beanDeserializerBuilder.addBackReferenceProperty(beanPropertyDefinition.findReferenceName(), constructSettableProperty(deserializationContext, beanDescription, beanPropertyDefinition, beanPropertyDefinition.getPrimaryType()));
            }
        }
    }

    protected void addBeanProps(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        Set<String> set;
        Set<String> set2;
        SettableBeanProperty settableBeanProperty;
        CreatorProperty creatorProperty;
        CreatorProperty[] fromObjectArguments = beanDescription.getType().isAbstract() ^ true ? beanDeserializerBuilder.getValueInstantiator().getFromObjectArguments(deserializationContext.getConfig()) : null;
        boolean z = fromObjectArguments != null;
        JsonIgnoreProperties.Value defaultPropertyIgnorals = deserializationContext.getConfig().getDefaultPropertyIgnorals(beanDescription.getBeanClass(), beanDescription.getClassInfo());
        if (defaultPropertyIgnorals != null) {
            beanDeserializerBuilder.setIgnoreUnknownProperties(defaultPropertyIgnorals.getIgnoreUnknown());
            Set<String> findIgnoredForDeserialization = defaultPropertyIgnorals.findIgnoredForDeserialization();
            Iterator<String> it2 = findIgnoredForDeserialization.iterator();
            while (true) {
                set = findIgnoredForDeserialization;
                if (!it2.hasNext()) {
                    break;
                }
                beanDeserializerBuilder.addIgnorable(it2.next());
            }
        } else {
            set = Collections.emptySet();
        }
        JsonIncludeProperties.Value defaultPropertyInclusions = deserializationContext.getConfig().getDefaultPropertyInclusions(beanDescription.getBeanClass(), beanDescription.getClassInfo());
        if (defaultPropertyInclusions != null) {
            set2 = defaultPropertyInclusions.getIncluded();
            if (set2 != null) {
                for (String str : set2) {
                    beanDeserializerBuilder.addIncludable(str);
                }
            }
        } else {
            set2 = null;
        }
        AnnotatedMember findAnySetterAccessor = beanDescription.findAnySetterAccessor();
        if (findAnySetterAccessor != null) {
            beanDeserializerBuilder.setAnySetter(constructAnySetter(deserializationContext, beanDescription, findAnySetterAccessor));
        } else {
            Set<String> ignoredPropertyNames = beanDescription.getIgnoredPropertyNames();
            if (ignoredPropertyNames != null) {
                for (String str2 : ignoredPropertyNames) {
                    beanDeserializerBuilder.addIgnorable(str2);
                }
            }
        }
        boolean z2 = deserializationContext.isEnabled(MapperFeature.USE_GETTERS_AS_SETTERS) && deserializationContext.isEnabled(MapperFeature.AUTO_DETECT_GETTERS);
        List<BeanPropertyDefinition> filterBeanProps = filterBeanProps(deserializationContext, beanDescription, beanDeserializerBuilder, beanDescription.findProperties(), set, set2);
        List<BeanPropertyDefinition> list = filterBeanProps;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it3 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                list = filterBeanProps;
                if (!it3.hasNext()) {
                    break;
                }
                filterBeanProps = it3.next().updateProperties(deserializationContext.getConfig(), beanDescription, filterBeanProps);
            }
        }
        for (BeanPropertyDefinition beanPropertyDefinition : list) {
            if (beanPropertyDefinition.hasSetter()) {
                settableBeanProperty = constructSettableProperty(deserializationContext, beanDescription, beanPropertyDefinition, beanPropertyDefinition.getSetter().getParameterType(0));
            } else if (beanPropertyDefinition.hasField()) {
                settableBeanProperty = constructSettableProperty(deserializationContext, beanDescription, beanPropertyDefinition, beanPropertyDefinition.getField().getType());
            } else {
                AnnotatedMethod getter = beanPropertyDefinition.getGetter();
                if (getter != null) {
                    if (!z2 || !_isSetterlessType(getter.getRawType())) {
                        if (!beanPropertyDefinition.hasConstructorParameter() && beanPropertyDefinition.getMetadata().getMergeInfo() != null) {
                            settableBeanProperty = constructSetterlessProperty(deserializationContext, beanDescription, beanPropertyDefinition);
                        }
                    } else if (!beanDeserializerBuilder.hasIgnorable(beanPropertyDefinition.getName())) {
                        settableBeanProperty = constructSetterlessProperty(deserializationContext, beanDescription, beanPropertyDefinition);
                    }
                }
                settableBeanProperty = null;
            }
            if (z && beanPropertyDefinition.hasConstructorParameter()) {
                String name = beanPropertyDefinition.getName();
                int length = fromObjectArguments.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        creatorProperty = null;
                        break;
                    }
                    CreatorProperty creatorProperty2 = fromObjectArguments[i];
                    if (name.equals(creatorProperty2.getName()) && (creatorProperty2 instanceof CreatorProperty)) {
                        creatorProperty = creatorProperty2;
                        break;
                    }
                    i++;
                }
                if (creatorProperty == null) {
                    ArrayList arrayList = new ArrayList();
                    for (CreatorProperty creatorProperty3 : fromObjectArguments) {
                        arrayList.add(creatorProperty3.getName());
                    }
                    deserializationContext.reportBadPropertyDefinition(beanDescription, beanPropertyDefinition, "Could not find creator property with name %s (known Creator properties: %s)", ClassUtil.name(name), arrayList);
                } else {
                    if (settableBeanProperty != null) {
                        creatorProperty.setFallbackSetter(settableBeanProperty);
                    }
                    Class<?>[] findViews = beanPropertyDefinition.findViews();
                    Class<?>[] clsArr = findViews;
                    if (findViews == null) {
                        clsArr = beanDescription.findDefaultViews();
                    }
                    creatorProperty.setViews(clsArr);
                    beanDeserializerBuilder.addCreatorProperty(creatorProperty);
                }
            } else if (settableBeanProperty != null) {
                Class<?>[] findViews2 = beanPropertyDefinition.findViews();
                Class<?>[] clsArr2 = findViews2;
                if (findViews2 == null) {
                    clsArr2 = beanDescription.findDefaultViews();
                }
                settableBeanProperty.setViews(clsArr2);
                beanDeserializerBuilder.addProperty(settableBeanProperty);
            }
        }
    }

    protected void addInjectables(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        Map<Object, AnnotatedMember> findInjectables = beanDescription.findInjectables();
        if (findInjectables != null) {
            for (Map.Entry<Object, AnnotatedMember> entry : findInjectables.entrySet()) {
                AnnotatedMember value = entry.getValue();
                beanDeserializerBuilder.addInjectable(PropertyName.construct(value.getName()), value.getType(), beanDescription.getClassAnnotations(), value, entry.getKey());
            }
        }
    }

    protected void addObjectIdReader(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        SettableBeanProperty settableBeanProperty;
        JavaType javaType;
        PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator;
        ObjectIdInfo objectIdInfo = beanDescription.getObjectIdInfo();
        if (objectIdInfo == null) {
            return;
        }
        Class<? extends ObjectIdGenerator<?>> generatorType = objectIdInfo.getGeneratorType();
        ObjectIdResolver objectIdResolverInstance = deserializationContext.objectIdResolverInstance(beanDescription.getClassInfo(), objectIdInfo);
        if (generatorType == ObjectIdGenerators.PropertyGenerator.class) {
            PropertyName propertyName = objectIdInfo.getPropertyName();
            settableBeanProperty = beanDeserializerBuilder.findProperty(propertyName);
            if (settableBeanProperty == null) {
                throw new IllegalArgumentException(String.format("Invalid Object Id definition for %s: cannot find property with name %s", ClassUtil.getTypeDescription(beanDescription.getType()), ClassUtil.name(propertyName)));
            }
            javaType = settableBeanProperty.getType();
            propertyBasedObjectIdGenerator = new PropertyBasedObjectIdGenerator(objectIdInfo.getScope());
        } else {
            javaType = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) generatorType), ObjectIdGenerator.class)[0];
            settableBeanProperty = null;
            propertyBasedObjectIdGenerator = deserializationContext.objectIdGeneratorInstance(beanDescription.getClassInfo(), objectIdInfo);
        }
        beanDeserializerBuilder.setObjectIdReader(ObjectIdReader.construct(javaType, objectIdInfo.getPropertyName(), propertyBasedObjectIdGenerator, deserializationContext.findRootValueDeserializer(javaType), settableBeanProperty, objectIdResolverInstance));
    }

    public JsonDeserializer<Object> buildBeanDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        try {
            ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, beanDescription);
            BeanDeserializerBuilder constructBeanDeserializerBuilder = constructBeanDeserializerBuilder(deserializationContext, beanDescription);
            constructBeanDeserializerBuilder.setValueInstantiator(findValueInstantiator);
            addBeanProps(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addObjectIdReader(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addBackReferenceProperties(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addInjectables(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            DeserializationConfig config = deserializationContext.getConfig();
            BeanDeserializerBuilder beanDeserializerBuilder = constructBeanDeserializerBuilder;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
                BeanDeserializerBuilder beanDeserializerBuilder2 = constructBeanDeserializerBuilder;
                while (true) {
                    BeanDeserializerBuilder beanDeserializerBuilder3 = beanDeserializerBuilder2;
                    beanDeserializerBuilder = beanDeserializerBuilder3;
                    if (!it2.hasNext()) {
                        break;
                    }
                    beanDeserializerBuilder2 = it2.next().updateBuilder(config, beanDescription, beanDeserializerBuilder3);
                }
            }
            AbstractDeserializer build = (!javaType.isAbstract() || findValueInstantiator.canInstantiate()) ? beanDeserializerBuilder.build() : beanDeserializerBuilder.buildAbstract();
            AbstractDeserializer abstractDeserializer = build;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it3 = this._factoryConfig.deserializerModifiers().iterator();
                while (true) {
                    abstractDeserializer = build;
                    if (!it3.hasNext()) {
                        break;
                    }
                    build = it3.next().modifyDeserializer(config, beanDescription, build);
                }
            }
            return abstractDeserializer;
        } catch (IllegalArgumentException e) {
            InvalidDefinitionException from = InvalidDefinitionException.from(deserializationContext.getParser(), ClassUtil.exceptionMessage(e), beanDescription, (BeanPropertyDefinition) null);
            from.initCause(e);
            throw from;
        } catch (NoClassDefFoundError e2) {
            return new ErrorThrowingDeserializer(e2);
        }
    }

    protected JsonDeserializer<Object> buildBuilderBasedDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        try {
            ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, beanDescription);
            DeserializationConfig config = deserializationContext.getConfig();
            BeanDeserializerBuilder constructBeanDeserializerBuilder = constructBeanDeserializerBuilder(deserializationContext, beanDescription);
            constructBeanDeserializerBuilder.setValueInstantiator(findValueInstantiator);
            addBeanProps(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addObjectIdReader(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addBackReferenceProperties(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addInjectables(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            JsonPOJOBuilder.Value findPOJOBuilderConfig = beanDescription.findPOJOBuilderConfig();
            String str = findPOJOBuilderConfig == null ? JsonPOJOBuilder.DEFAULT_BUILD_METHOD : findPOJOBuilderConfig.buildMethodName;
            AnnotatedMethod findMethod = beanDescription.findMethod(str, null);
            if (findMethod != null && config.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(findMethod.getMember(), config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            constructBeanDeserializerBuilder.setPOJOBuilder(findMethod, findPOJOBuilderConfig);
            BeanDeserializerBuilder beanDeserializerBuilder = constructBeanDeserializerBuilder;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
                BeanDeserializerBuilder beanDeserializerBuilder2 = constructBeanDeserializerBuilder;
                while (true) {
                    BeanDeserializerBuilder beanDeserializerBuilder3 = beanDeserializerBuilder2;
                    beanDeserializerBuilder = beanDeserializerBuilder3;
                    if (!it2.hasNext()) {
                        break;
                    }
                    beanDeserializerBuilder2 = it2.next().updateBuilder(config, beanDescription, beanDeserializerBuilder3);
                }
            }
            JsonDeserializer<?> buildBuilderBased = beanDeserializerBuilder.buildBuilderBased(javaType, str);
            JsonDeserializer<?> jsonDeserializer = buildBuilderBased;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it3 = this._factoryConfig.deserializerModifiers().iterator();
                while (true) {
                    jsonDeserializer = buildBuilderBased;
                    if (!it3.hasNext()) {
                        break;
                    }
                    buildBuilderBased = it3.next().modifyDeserializer(config, beanDescription, buildBuilderBased);
                }
            }
            return jsonDeserializer;
        } catch (IllegalArgumentException e) {
            throw InvalidDefinitionException.from(deserializationContext.getParser(), ClassUtil.exceptionMessage(e), beanDescription, (BeanPropertyDefinition) null);
        } catch (NoClassDefFoundError e2) {
            return new ErrorThrowingDeserializer(e2);
        }
    }

    public JsonDeserializer<Object> buildThrowableDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        SettableBeanProperty constructSettableProperty;
        DeserializationConfig config = deserializationContext.getConfig();
        BeanDeserializerBuilder constructBeanDeserializerBuilder = constructBeanDeserializerBuilder(deserializationContext, beanDescription);
        constructBeanDeserializerBuilder.setValueInstantiator(findValueInstantiator(deserializationContext, beanDescription));
        addBeanProps(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
        AnnotatedMethod findMethod = beanDescription.findMethod("initCause", INIT_CAUSE_PARAMS);
        if (findMethod != null && (constructSettableProperty = constructSettableProperty(deserializationContext, beanDescription, SimpleBeanPropertyDefinition.construct(deserializationContext.getConfig(), findMethod, new PropertyName("cause")), findMethod.getParameterType(0))) != null) {
            constructBeanDeserializerBuilder.addOrReplaceProperty(constructSettableProperty, true);
        }
        constructBeanDeserializerBuilder.addIgnorable("localizedMessage");
        constructBeanDeserializerBuilder.addIgnorable("suppressed");
        BeanDeserializerBuilder beanDeserializerBuilder = constructBeanDeserializerBuilder;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            BeanDeserializerBuilder beanDeserializerBuilder2 = constructBeanDeserializerBuilder;
            while (true) {
                BeanDeserializerBuilder beanDeserializerBuilder3 = beanDeserializerBuilder2;
                beanDeserializerBuilder = beanDeserializerBuilder3;
                if (!it2.hasNext()) {
                    break;
                }
                beanDeserializerBuilder2 = it2.next().updateBuilder(config, beanDescription, beanDeserializerBuilder3);
            }
        }
        JsonDeserializer<?> build = beanDeserializerBuilder.build();
        ThrowableDeserializer throwableDeserializer = build;
        if (build instanceof BeanDeserializer) {
            throwableDeserializer = new ThrowableDeserializer((BeanDeserializer) build);
        }
        JsonDeserializer<?> jsonDeserializer = throwableDeserializer;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it3 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                jsonDeserializer = throwableDeserializer;
                if (!it3.hasNext()) {
                    break;
                }
                throwableDeserializer = it3.next().modifyDeserializer(config, beanDescription, throwableDeserializer);
            }
        }
        return jsonDeserializer;
    }

    protected SettableAnyProperty constructAnySetter(DeserializationContext deserializationContext, BeanDescription beanDescription, AnnotatedMember annotatedMember) throws JsonMappingException {
        BeanProperty.Std std;
        JavaType javaType;
        JavaType javaType2;
        KeyDeserializer keyDeserializer;
        if (annotatedMember instanceof AnnotatedMethod) {
            AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
            javaType2 = annotatedMethod.getParameterType(0);
            javaType = resolveMemberAndTypeAnnotations(deserializationContext, annotatedMember, annotatedMethod.getParameterType(1));
            std = new BeanProperty.Std(PropertyName.construct(annotatedMember.getName()), javaType, null, annotatedMember, PropertyMetadata.STD_OPTIONAL);
        } else if (!(annotatedMember instanceof AnnotatedField)) {
            return (SettableAnyProperty) deserializationContext.reportBadDefinition(beanDescription.getType(), String.format("Unrecognized mutator type for any setter: %s", annotatedMember.getClass()));
        } else {
            JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, annotatedMember, ((AnnotatedField) annotatedMember).getType());
            javaType2 = resolveMemberAndTypeAnnotations.getKeyType();
            javaType = resolveMemberAndTypeAnnotations.getContentType();
            std = new BeanProperty.Std(PropertyName.construct(annotatedMember.getName()), resolveMemberAndTypeAnnotations, null, annotatedMember, PropertyMetadata.STD_OPTIONAL);
        }
        KeyDeserializer findKeyDeserializerFromAnnotation = findKeyDeserializerFromAnnotation(deserializationContext, annotatedMember);
        KeyDeserializer keyDeserializer2 = findKeyDeserializerFromAnnotation;
        if (findKeyDeserializerFromAnnotation == null) {
            keyDeserializer2 = (KeyDeserializer) javaType2.getValueHandler();
        }
        if (keyDeserializer2 == null) {
            keyDeserializer = deserializationContext.findKeyDeserializer(javaType2, std);
        } else {
            keyDeserializer = keyDeserializer2;
            if (keyDeserializer2 instanceof ContextualKeyDeserializer) {
                keyDeserializer = ((ContextualKeyDeserializer) keyDeserializer2).createContextual(deserializationContext, std);
            }
        }
        JsonDeserializer<?> findContentDeserializerFromAnnotation = findContentDeserializerFromAnnotation(deserializationContext, annotatedMember);
        JsonDeserializer<?> jsonDeserializer = findContentDeserializerFromAnnotation;
        if (findContentDeserializerFromAnnotation == null) {
            jsonDeserializer = (JsonDeserializer) javaType.getValueHandler();
        }
        return new SettableAnyProperty(std, annotatedMember, javaType, keyDeserializer, jsonDeserializer != null ? deserializationContext.handlePrimaryContextualization(jsonDeserializer, std, javaType) : jsonDeserializer, (TypeDeserializer) javaType.getTypeHandler());
    }

    protected BeanDeserializerBuilder constructBeanDeserializerBuilder(DeserializationContext deserializationContext, BeanDescription beanDescription) {
        return new BeanDeserializerBuilder(beanDescription, deserializationContext);
    }

    protected SettableBeanProperty constructSettableProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType) throws JsonMappingException {
        AnnotatedMember nonConstructorMutator = beanPropertyDefinition.getNonConstructorMutator();
        if (nonConstructorMutator == null) {
            deserializationContext.reportBadPropertyDefinition(beanDescription, beanPropertyDefinition, "No non-constructor mutator available", new Object[0]);
        }
        JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, nonConstructorMutator, javaType);
        TypeDeserializer typeDeserializer = (TypeDeserializer) resolveMemberAndTypeAnnotations.getTypeHandler();
        MethodProperty methodProperty = nonConstructorMutator instanceof AnnotatedMethod ? new MethodProperty(beanPropertyDefinition, resolveMemberAndTypeAnnotations, typeDeserializer, beanDescription.getClassAnnotations(), (AnnotatedMethod) nonConstructorMutator) : new FieldProperty(beanPropertyDefinition, resolveMemberAndTypeAnnotations, typeDeserializer, beanDescription.getClassAnnotations(), (AnnotatedField) nonConstructorMutator);
        JsonDeserializer<Object> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, nonConstructorMutator);
        JsonDeserializer<Object> jsonDeserializer = findDeserializerFromAnnotation;
        if (findDeserializerFromAnnotation == null) {
            jsonDeserializer = (JsonDeserializer) resolveMemberAndTypeAnnotations.getValueHandler();
        }
        SettableBeanProperty settableBeanProperty = methodProperty;
        if (jsonDeserializer != null) {
            settableBeanProperty = methodProperty.withValueDeserializer(deserializationContext.handlePrimaryContextualization(jsonDeserializer, methodProperty, resolveMemberAndTypeAnnotations));
        }
        AnnotationIntrospector.ReferenceProperty findReferenceType = beanPropertyDefinition.findReferenceType();
        if (findReferenceType != null && findReferenceType.isManagedReference()) {
            settableBeanProperty.setManagedReferenceName(findReferenceType.getName());
        }
        ObjectIdInfo findObjectIdInfo = beanPropertyDefinition.findObjectIdInfo();
        if (findObjectIdInfo != null) {
            settableBeanProperty.setObjectIdInfo(findObjectIdInfo);
        }
        return settableBeanProperty;
    }

    protected SettableBeanProperty constructSetterlessProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanPropertyDefinition beanPropertyDefinition) throws JsonMappingException {
        AnnotatedMethod getter = beanPropertyDefinition.getGetter();
        JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, getter, getter.getType());
        SetterlessProperty setterlessProperty = new SetterlessProperty(beanPropertyDefinition, resolveMemberAndTypeAnnotations, (TypeDeserializer) resolveMemberAndTypeAnnotations.getTypeHandler(), beanDescription.getClassAnnotations(), getter);
        JsonDeserializer<?> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, getter);
        JsonDeserializer<?> jsonDeserializer = findDeserializerFromAnnotation;
        if (findDeserializerFromAnnotation == null) {
            jsonDeserializer = (JsonDeserializer) resolveMemberAndTypeAnnotations.getValueHandler();
        }
        SettableBeanProperty settableBeanProperty = setterlessProperty;
        if (jsonDeserializer != null) {
            settableBeanProperty = setterlessProperty.withValueDeserializer(deserializationContext.handlePrimaryContextualization(jsonDeserializer, setterlessProperty, resolveMemberAndTypeAnnotations));
        }
        return settableBeanProperty;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<Object> createBeanDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType materializeAbstractType;
        DeserializationConfig config = deserializationContext.getConfig();
        JsonDeserializer<?> _findCustomBeanDeserializer = _findCustomBeanDeserializer(javaType, config, beanDescription);
        if (_findCustomBeanDeserializer != null) {
            JsonDeserializer<?> jsonDeserializer = _findCustomBeanDeserializer;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
                JsonDeserializer<?> jsonDeserializer2 = _findCustomBeanDeserializer;
                while (true) {
                    JsonDeserializer<?> jsonDeserializer3 = jsonDeserializer2;
                    jsonDeserializer = jsonDeserializer3;
                    if (!it2.hasNext()) {
                        break;
                    }
                    jsonDeserializer2 = it2.next().modifyDeserializer(deserializationContext.getConfig(), beanDescription, jsonDeserializer3);
                }
            }
            return jsonDeserializer;
        } else if (javaType.isThrowable()) {
            return buildThrowableDeserializer(deserializationContext, javaType, beanDescription);
        } else {
            if (javaType.isAbstract() && !javaType.isPrimitive() && !javaType.isEnumType() && (materializeAbstractType = materializeAbstractType(deserializationContext, javaType, beanDescription)) != null) {
                return buildBeanDeserializer(deserializationContext, materializeAbstractType, config.introspect(materializeAbstractType));
            }
            JsonDeserializer<?> findStdDeserializer = findStdDeserializer(deserializationContext, javaType, beanDescription);
            if (findStdDeserializer != null) {
                return findStdDeserializer;
            }
            if (!isPotentialBeanType(javaType.getRawClass())) {
                return null;
            }
            _validateSubType(deserializationContext, javaType, beanDescription);
            JsonDeserializer<Object> _findUnsupportedTypeDeserializer = _findUnsupportedTypeDeserializer(deserializationContext, javaType, beanDescription);
            return _findUnsupportedTypeDeserializer != null ? _findUnsupportedTypeDeserializer : buildBeanDeserializer(deserializationContext, javaType, beanDescription);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<Object> createBuilderBasedDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription, Class<?> cls) throws JsonMappingException {
        return buildBuilderBasedDeserializer(deserializationContext, javaType, deserializationContext.getConfig().introspectForBuilder(deserializationContext.isEnabled(MapperFeature.INFER_BUILDER_TYPE_BINDINGS) ? deserializationContext.getTypeFactory().constructParametricType(cls, javaType.getBindings()) : deserializationContext.constructType(cls), beanDescription));
    }

    protected List<BeanPropertyDefinition> filterBeanProps(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder, List<BeanPropertyDefinition> list, Set<String> set, Set<String> set2) {
        Class<?> rawPrimaryType;
        ArrayList arrayList = new ArrayList(Math.max(4, list.size()));
        HashMap hashMap = new HashMap();
        for (BeanPropertyDefinition beanPropertyDefinition : list) {
            String name = beanPropertyDefinition.getName();
            if (!IgnorePropertiesUtil.shouldIgnore(name, set, set2)) {
                if (beanPropertyDefinition.hasConstructorParameter() || (rawPrimaryType = beanPropertyDefinition.getRawPrimaryType()) == null || !isIgnorableType(deserializationContext.getConfig(), beanPropertyDefinition, rawPrimaryType, hashMap)) {
                    arrayList.add(beanPropertyDefinition);
                } else {
                    beanDeserializerBuilder.addIgnorable(name);
                }
            }
        }
        return arrayList;
    }

    protected JsonDeserializer<?> findStdDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonDeserializer<?> findDefaultDeserializer = findDefaultDeserializer(deserializationContext, javaType, beanDescription);
        JsonDeserializer<?> jsonDeserializer = findDefaultDeserializer;
        if (findDefaultDeserializer != null) {
            jsonDeserializer = findDefaultDeserializer;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
                while (true) {
                    jsonDeserializer = findDefaultDeserializer;
                    if (!it2.hasNext()) {
                        break;
                    }
                    findDefaultDeserializer = it2.next().modifyDeserializer(deserializationContext.getConfig(), beanDescription, findDefaultDeserializer);
                }
            }
        }
        return jsonDeserializer;
    }

    protected boolean isIgnorableType(DeserializationConfig deserializationConfig, BeanPropertyDefinition beanPropertyDefinition, Class<?> cls, Map<Class<?>, Boolean> map) {
        Boolean bool;
        Boolean bool2 = map.get(cls);
        if (bool2 != null) {
            return bool2.booleanValue();
        }
        if (cls == String.class || cls.isPrimitive()) {
            bool = Boolean.FALSE;
        } else {
            Boolean isIgnoredType = deserializationConfig.getConfigOverride(cls).getIsIgnoredType();
            bool = isIgnoredType;
            if (isIgnoredType == null) {
                Boolean isIgnorableType = deserializationConfig.getAnnotationIntrospector().isIgnorableType(deserializationConfig.introspectClassAnnotations(cls).getClassInfo());
                bool = isIgnorableType;
                if (isIgnorableType == null) {
                    bool = Boolean.FALSE;
                }
            }
        }
        map.put(cls, bool);
        return bool.booleanValue();
    }

    protected boolean isPotentialBeanType(Class<?> cls) {
        String canBeABeanType = ClassUtil.canBeABeanType(cls);
        if (canBeABeanType != null) {
            throw new IllegalArgumentException("Cannot deserialize Class " + cls.getName() + " (of type " + canBeABeanType + ") as a Bean");
        } else if (ClassUtil.isProxyType(cls)) {
            throw new IllegalArgumentException("Cannot deserialize Proxy class " + cls.getName() + " as a Bean");
        } else {
            String isLocalType = ClassUtil.isLocalType(cls, true);
            if (isLocalType == null) {
                return true;
            }
            throw new IllegalArgumentException("Cannot deserialize Class " + cls.getName() + " (of type " + isLocalType + ") as a Bean");
        }
    }

    protected JavaType materializeAbstractType(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        for (AbstractTypeResolver abstractTypeResolver : this._factoryConfig.abstractTypeResolvers()) {
            JavaType resolveAbstractType = abstractTypeResolver.resolveAbstractType(deserializationContext.getConfig(), beanDescription);
            if (resolveAbstractType != null) {
                return resolveAbstractType;
            }
        }
        return null;
    }
}
