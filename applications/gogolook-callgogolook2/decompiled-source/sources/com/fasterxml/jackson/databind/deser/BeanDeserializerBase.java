package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators$PropertyGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.InnerClassProperty;
import com.fasterxml.jackson.databind.deser.impl.ManagedReferenceProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReferenceProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.fasterxml.jackson.databind.exc.IgnoredPropertyException;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializerBase.class */
public abstract class BeanDeserializerBase extends StdDeserializer<Object> implements ContextualDeserializer, ResolvableDeserializer, Serializable {
    public static final PropertyName TEMP_PROPERTY_NAME = new PropertyName("#temporary-name");
    public SettableAnyProperty _anySetter;
    public JsonDeserializer<Object> _arrayDelegateDeserializer;
    public final Map<String, SettableBeanProperty> _backRefs;
    public final BeanPropertyMap _beanProperties;
    public final JavaType _beanType;
    public final transient Annotations _classAnnotations;
    public JsonDeserializer<Object> _delegateDeserializer;
    public ExternalTypeHandler _externalTypeIdHandler;
    public final HashSet<String> _ignorableProps;
    public final boolean _ignoreAllUnknown;
    public final ValueInjector[] _injectables;
    public final boolean _needViewProcesing;
    public boolean _nonStandardCreation;
    public final ObjectIdReader _objectIdReader;
    public PropertyBasedCreator _propertyBasedCreator;
    public final JsonFormat.Shape _serializationShape;
    public transient HashMap<ClassKey, JsonDeserializer<Object>> _subDeserializers;
    public UnwrappedPropertyHandler _unwrappedPropertyHandler;
    public final ValueInstantiator _valueInstantiator;
    public boolean _vanillaProcessing;

    /* renamed from: com.fasterxml.jackson.databind.deser.BeanDeserializerBase$1 */
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializerBase$1.class */
    public static /* synthetic */ class C27261 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[JsonParser.NumberType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase) {
        this(beanDeserializerBase, beanDeserializerBase._ignoreAllUnknown);
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, ObjectIdReader objectIdReader) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = beanDeserializerBase._ignorableProps;
        this._ignoreAllUnknown = beanDeserializerBase._ignoreAllUnknown;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._objectIdReader = objectIdReader;
        if (objectIdReader == null) {
            this._beanProperties = beanDeserializerBase._beanProperties;
            this._vanillaProcessing = beanDeserializerBase._vanillaProcessing;
            return;
        }
        ObjectIdValueProperty objectIdValueProperty = new ObjectIdValueProperty(objectIdReader, PropertyMetadata.STD_REQUIRED);
        BeanPropertyMap beanPropertyMap = beanDeserializerBase._beanProperties;
        beanPropertyMap.withProperty(objectIdValueProperty);
        this._beanProperties = beanPropertyMap;
        this._vanillaProcessing = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, NameTransformer nameTransformer) {
        super(beanDeserializerBase._beanType);
        UnwrappedPropertyHandler unwrappedPropertyHandler;
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = beanDeserializerBase._ignorableProps;
        this._ignoreAllUnknown = nameTransformer != null || beanDeserializerBase._ignoreAllUnknown;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._objectIdReader = beanDeserializerBase._objectIdReader;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        UnwrappedPropertyHandler unwrappedPropertyHandler2 = beanDeserializerBase._unwrappedPropertyHandler;
        if (nameTransformer != null) {
            unwrappedPropertyHandler = unwrappedPropertyHandler2 != null ? unwrappedPropertyHandler2.renameAll(nameTransformer) : unwrappedPropertyHandler2;
            this._beanProperties = beanDeserializerBase._beanProperties.renameAll(nameTransformer);
        } else {
            this._beanProperties = beanDeserializerBase._beanProperties;
            unwrappedPropertyHandler = unwrappedPropertyHandler2;
        }
        this._unwrappedPropertyHandler = unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._vanillaProcessing = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, HashSet<String> hashSet) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = hashSet;
        this._ignoreAllUnknown = beanDeserializerBase._ignoreAllUnknown;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._vanillaProcessing = beanDeserializerBase._vanillaProcessing;
        this._objectIdReader = beanDeserializerBase._objectIdReader;
        this._beanProperties = beanDeserializerBase._beanProperties;
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, boolean z) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._beanProperties = beanDeserializerBase._beanProperties;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = beanDeserializerBase._ignorableProps;
        this._ignoreAllUnknown = z;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._objectIdReader = beanDeserializerBase._objectIdReader;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._vanillaProcessing = beanDeserializerBase._vanillaProcessing;
    }

    public BeanDeserializerBase(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, HashSet<String> hashSet, boolean z, boolean z2) {
        super(beanDescription.getType());
        this._classAnnotations = beanDescription.getClassInfo().getAnnotations();
        this._beanType = beanDescription.getType();
        this._valueInstantiator = beanDeserializerBuilder.getValueInstantiator();
        this._beanProperties = beanPropertyMap;
        this._backRefs = map;
        this._ignorableProps = hashSet;
        this._ignoreAllUnknown = z;
        this._anySetter = beanDeserializerBuilder.getAnySetter();
        List<ValueInjector> injectables = beanDeserializerBuilder.getInjectables();
        JsonFormat.Shape shape = null;
        this._injectables = (injectables == null || injectables.isEmpty()) ? null : (ValueInjector[]) injectables.toArray(new ValueInjector[injectables.size()]);
        this._objectIdReader = beanDeserializerBuilder.getObjectIdReader();
        this._nonStandardCreation = this._unwrappedPropertyHandler != null || this._valueInstantiator.canCreateUsingDelegate() || this._valueInstantiator.canCreateFromObjectWith() || !this._valueInstantiator.canCreateUsingDefault();
        JsonFormat.Value findExpectedFormat = beanDescription.findExpectedFormat(null);
        if (findExpectedFormat != null) {
            shape = findExpectedFormat.getShape();
        }
        this._serializationShape = shape;
        this._needViewProcesing = z2;
        boolean z3 = false;
        if (!this._nonStandardCreation) {
            z3 = false;
            if (this._injectables == null) {
                z3 = false;
                if (!this._needViewProcesing) {
                    z3 = false;
                    if (this._objectIdReader == null) {
                        z3 = true;
                    }
                }
            }
        }
        this._vanillaProcessing = z3;
    }

    public Object _convertObjectId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, JsonDeserializer<Object> jsonDeserializer) throws IOException {
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        if (obj instanceof String) {
            tokenBuffer.writeString((String) obj);
        } else if (obj instanceof Long) {
            tokenBuffer.writeNumber(((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            tokenBuffer.writeNumber(((Integer) obj).intValue());
        } else {
            tokenBuffer.writeObject(obj);
        }
        JsonParser asParser = tokenBuffer.asParser();
        asParser.nextToken();
        return jsonDeserializer.deserialize(asParser, deserializationContext);
    }

    public abstract Object _deserializeUsingPropertyBased(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException;

    public final JsonDeserializer<Object> _findDelegateDeserializer(DeserializationContext deserializationContext, JavaType javaType, AnnotatedWithParams annotatedWithParams) throws JsonMappingException {
        BeanProperty.Std std = new BeanProperty.Std(TEMP_PROPERTY_NAME, javaType, null, this._classAnnotations, annotatedWithParams, PropertyMetadata.STD_OPTIONAL);
        TypeDeserializer typeDeserializer = (TypeDeserializer) javaType.getTypeHandler();
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer == null) {
            typeDeserializer2 = deserializationContext.getConfig().findTypeDeserializer(javaType);
        }
        JsonDeserializer<Object> findDeserializer = findDeserializer(deserializationContext, javaType, std);
        return typeDeserializer2 != null ? new TypeWrappedDeserializer(typeDeserializer2.forProperty(std), findDeserializer) : findDeserializer;
    }

    public JsonDeserializer<Object> _findSubclassDeserializer(DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException {
        JsonDeserializer<Object> jsonDeserializer;
        synchronized (this) {
            jsonDeserializer = this._subDeserializers == null ? null : this._subDeserializers.get(new ClassKey(obj.getClass()));
        }
        if (jsonDeserializer != null) {
            return jsonDeserializer;
        }
        JsonDeserializer<Object> findRootValueDeserializer = deserializationContext.findRootValueDeserializer(deserializationContext.constructType(obj.getClass()));
        if (findRootValueDeserializer != null) {
            synchronized (this) {
                if (this._subDeserializers == null) {
                    this._subDeserializers = new HashMap<>();
                }
                this._subDeserializers.put(new ClassKey(obj.getClass()), findRootValueDeserializer);
            }
        }
        return findRootValueDeserializer;
    }

    public Object _handleTypedObjectId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Object obj2) throws IOException {
        JsonDeserializer<Object> deserializer = this._objectIdReader.getDeserializer();
        if (deserializer.handledType() != obj2.getClass()) {
            obj2 = _convertObjectId(jsonParser, deserializationContext, obj2, deserializer);
        }
        ObjectIdReader objectIdReader = this._objectIdReader;
        deserializationContext.findObjectId(obj2, objectIdReader.generator, objectIdReader.resolver).bindItem(obj);
        SettableBeanProperty settableBeanProperty = this._objectIdReader.idProperty;
        return settableBeanProperty != null ? settableBeanProperty.setAndReturn(obj, obj2) : obj;
    }

    public SettableBeanProperty _resolveInnerClassValuedProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        Class<?> rawClass;
        Class<?> outerClass;
        Constructor<?>[] constructors;
        JsonDeserializer<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
        if ((valueDeserializer instanceof BeanDeserializerBase) && !((BeanDeserializerBase) valueDeserializer).getValueInstantiator().canCreateUsingDefault() && (outerClass = ClassUtil.getOuterClass((rawClass = settableBeanProperty.getType().getRawClass()))) != null && outerClass == this._beanType.getRawClass()) {
            for (Constructor<?> constructor : rawClass.getConstructors()) {
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0] == outerClass) {
                    if (deserializationContext.canOverrideAccessModifiers()) {
                        ClassUtil.checkAndFixAccess(constructor, deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    }
                    return new InnerClassProperty(settableBeanProperty, constructor);
                }
            }
        }
        return settableBeanProperty;
    }

    public SettableBeanProperty _resolveManagedReferenceProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        String managedReferenceName = settableBeanProperty.getManagedReferenceName();
        if (managedReferenceName == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty findBackReference = settableBeanProperty.getValueDeserializer().findBackReference(managedReferenceName);
        if (findBackReference != null) {
            JavaType javaType = this._beanType;
            JavaType type = findBackReference.getType();
            boolean isContainerType = settableBeanProperty.getType().isContainerType();
            if (type.getRawClass().isAssignableFrom(javaType.getRawClass())) {
                return new ManagedReferenceProperty(settableBeanProperty, managedReferenceName, findBackReference, this._classAnnotations, isContainerType);
            }
            throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': back reference type (" + type.getRawClass().getName() + ") not compatible with managed type (" + javaType.getRawClass().getName() + ")");
        }
        throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': no back reference property found from type " + settableBeanProperty.getType());
    }

    public SettableBeanProperty _resolveUnwrappedProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        NameTransformer findUnwrappingNameTransformer;
        JsonDeserializer<Object> valueDeserializer;
        JsonDeserializer<Object> unwrappingDeserializer;
        AnnotatedMember member = settableBeanProperty.getMember();
        if (member == null || (findUnwrappingNameTransformer = deserializationContext.getAnnotationIntrospector().findUnwrappingNameTransformer(member)) == null || (unwrappingDeserializer = (valueDeserializer = settableBeanProperty.getValueDeserializer()).unwrappingDeserializer(findUnwrappingNameTransformer)) == valueDeserializer || unwrappingDeserializer == null) {
            return null;
        }
        return settableBeanProperty.withValueDeserializer(unwrappingDeserializer);
    }

    public SettableBeanProperty _resolvedObjectIdProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        ObjectIdInfo objectIdInfo = settableBeanProperty.getObjectIdInfo();
        return (objectIdInfo == null && settableBeanProperty.getValueDeserializer().getObjectIdReader() == null) ? settableBeanProperty : new ObjectIdReferenceProperty(settableBeanProperty, objectIdInfo);
    }

    public abstract BeanDeserializerBase asArrayDeserializer();

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JavaType javaType;
        ObjectIdGenerator<?> objectIdGenerator;
        SettableBeanProperty settableBeanProperty;
        ObjectIdReader objectIdReader = this._objectIdReader;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        AnnotatedMember member = (beanProperty == null || annotationIntrospector == null) ? null : beanProperty.getMember();
        ObjectIdReader objectIdReader2 = objectIdReader;
        if (member != null) {
            objectIdReader2 = objectIdReader;
            if (annotationIntrospector != null) {
                ObjectIdInfo findObjectIdInfo = annotationIntrospector.findObjectIdInfo(member);
                objectIdReader2 = objectIdReader;
                if (findObjectIdInfo != null) {
                    ObjectIdInfo findObjectReferenceInfo = annotationIntrospector.findObjectReferenceInfo(member, findObjectIdInfo);
                    Class<? extends ObjectIdGenerator<?>> generatorType = findObjectReferenceInfo.getGeneratorType();
                    ObjectIdResolver objectIdResolverInstance = deserializationContext.objectIdResolverInstance(member, findObjectReferenceInfo);
                    if (generatorType == ObjectIdGenerators$PropertyGenerator.class) {
                        PropertyName propertyName = findObjectReferenceInfo.getPropertyName();
                        settableBeanProperty = findProperty(propertyName);
                        if (settableBeanProperty != null) {
                            javaType = settableBeanProperty.getType();
                            objectIdGenerator = new PropertyBasedObjectIdGenerator(findObjectReferenceInfo.getScope());
                        } else {
                            throw new IllegalArgumentException("Invalid Object Id definition for " + handledType().getName() + ": can not find property with name '" + propertyName + "'");
                        }
                    } else {
                        javaType = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) generatorType), ObjectIdGenerator.class)[0];
                        objectIdGenerator = deserializationContext.objectIdGeneratorInstance(member, findObjectReferenceInfo);
                        settableBeanProperty = null;
                    }
                    objectIdReader2 = ObjectIdReader.construct(javaType, findObjectReferenceInfo.getPropertyName(), objectIdGenerator, deserializationContext.findRootValueDeserializer(javaType), settableBeanProperty, objectIdResolverInstance);
                }
            }
        }
        BeanDeserializerBase withObjectIdReader = (objectIdReader2 == null || objectIdReader2 == this._objectIdReader) ? this : withObjectIdReader(objectIdReader2);
        BeanDeserializerBase beanDeserializerBase = withObjectIdReader;
        if (member != null) {
            String[] findPropertiesToIgnore = annotationIntrospector.findPropertiesToIgnore(member, false);
            beanDeserializerBase = withObjectIdReader;
            if (findPropertiesToIgnore != null) {
                beanDeserializerBase = withObjectIdReader;
                if (findPropertiesToIgnore.length != 0) {
                    beanDeserializerBase = withObjectIdReader.withIgnorableProperties(ArrayBuilders.setAndArray(withObjectIdReader._ignorableProps, findPropertiesToIgnore));
                }
            }
        }
        JsonFormat.Shape shape = null;
        if (member != null) {
            JsonFormat.Value findFormat = annotationIntrospector.findFormat(member);
            shape = null;
            if (findFormat != null) {
                shape = findFormat.getShape();
            }
        }
        JsonFormat.Shape shape2 = shape;
        if (shape == null) {
            shape2 = this._serializationShape;
        }
        BeanDeserializerBase beanDeserializerBase2 = beanDeserializerBase;
        if (shape2 == JsonFormat.Shape.ARRAY) {
            beanDeserializerBase2 = beanDeserializerBase.asArrayDeserializer();
        }
        return beanDeserializerBase2;
    }

    public Object deserializeFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._arrayDelegateDeserializer;
        if (jsonDeserializer != null) {
            try {
                Object createUsingArrayDelegate = this._valueInstantiator.createUsingArrayDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
                if (this._injectables != null) {
                    injectValues(deserializationContext, createUsingArrayDelegate);
                }
                return createUsingArrayDelegate;
            } catch (Exception e) {
                wrapInstantiationProblem(e, deserializationContext);
                throw null;
            }
        } else {
            JsonDeserializer<Object> jsonDeserializer2 = this._delegateDeserializer;
            if (jsonDeserializer2 != null) {
                try {
                    Object createUsingArrayDelegate2 = this._valueInstantiator.createUsingArrayDelegate(deserializationContext, jsonDeserializer2.deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        injectValues(deserializationContext, createUsingArrayDelegate2);
                    }
                    return createUsingArrayDelegate2;
                } catch (Exception e2) {
                    wrapInstantiationProblem(e2, deserializationContext);
                    throw null;
                }
            } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                if (jsonParser.nextToken() == JsonToken.END_ARRAY && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                    return null;
                }
                Object deserialize = deserialize(jsonParser, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (nextToken == jsonToken) {
                    return deserialize;
                }
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single '" + this._valueClass.getName() + "' value but there was more than a single value in the array");
            } else if (!deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                throw deserializationContext.mappingException(handledType());
            } else if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                return null;
            } else {
                throw deserializationContext.mappingException(handledType(), JsonToken.START_ARRAY);
            }
        }
    }

    public Object deserializeFromBoolean(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._delegateDeserializer == null || this._valueInstantiator.canCreateFromBoolean()) {
            return this._valueInstantiator.createFromBoolean(deserializationContext, jsonParser.getCurrentToken() == JsonToken.VALUE_TRUE);
        }
        Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        if (this._injectables != null) {
            injectValues(deserializationContext, createUsingDelegate);
        }
        return createUsingDelegate;
    }

    public Object deserializeFromDouble(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonParser.NumberType numberType = jsonParser.getNumberType();
        if (numberType != JsonParser.NumberType.DOUBLE && numberType != JsonParser.NumberType.FLOAT) {
            JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
            if (jsonDeserializer != null) {
                return this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
            }
            throw deserializationContext.instantiationException(handledType(), "no suitable creator method found to deserialize from JSON floating-point number");
        } else if (this._delegateDeserializer == null || this._valueInstantiator.canCreateFromDouble()) {
            return this._valueInstantiator.createFromDouble(deserializationContext, jsonParser.getDoubleValue());
        } else {
            Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
            if (this._injectables != null) {
                injectValues(deserializationContext, createUsingDelegate);
            }
            return createUsingDelegate;
        }
    }

    public Object deserializeFromEmbedded(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return this._objectIdReader != null ? deserializeFromObjectId(jsonParser, deserializationContext) : jsonParser.getEmbeddedObject();
    }

    public Object deserializeFromNumber(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._objectIdReader != null) {
            return deserializeFromObjectId(jsonParser, deserializationContext);
        }
        int i = C27261.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()];
        if (i != 1) {
            if (i != 2) {
                JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
                if (jsonDeserializer != null) {
                    Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        injectValues(deserializationContext, createUsingDelegate);
                    }
                    return createUsingDelegate;
                }
                throw deserializationContext.instantiationException(handledType(), "no suitable creator method found to deserialize from JSON integer number");
            } else if (this._delegateDeserializer == null || this._valueInstantiator.canCreateFromInt()) {
                return this._valueInstantiator.createFromLong(deserializationContext, jsonParser.getLongValue());
            } else {
                Object createUsingDelegate2 = this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
                if (this._injectables != null) {
                    injectValues(deserializationContext, createUsingDelegate2);
                }
                return createUsingDelegate2;
            }
        } else if (this._delegateDeserializer == null || this._valueInstantiator.canCreateFromInt()) {
            return this._valueInstantiator.createFromInt(deserializationContext, jsonParser.getIntValue());
        } else {
            Object createUsingDelegate3 = this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
            if (this._injectables != null) {
                injectValues(deserializationContext, createUsingDelegate3);
            }
            return createUsingDelegate3;
        }
    }

    public abstract Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public Object deserializeFromObjectId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object readObjectReference = this._objectIdReader.readObjectReference(jsonParser, deserializationContext);
        ObjectIdReader objectIdReader = this._objectIdReader;
        ReadableObjectId findObjectId = deserializationContext.findObjectId(readObjectReference, objectIdReader.generator, objectIdReader.resolver);
        Object resolve = findObjectId.resolve();
        if (resolve != null) {
            return resolve;
        }
        throw new UnresolvedForwardReference(jsonParser, "Could not resolve Object Id [" + readObjectReference + "] (for " + this._beanType + ").", jsonParser.getCurrentLocation(), findObjectId);
    }

    public Object deserializeFromObjectUsingNonDefault(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        if (this._beanType.isAbstract()) {
            throw JsonMappingException.from(jsonParser, "Can not instantiate abstract type " + this._beanType + " (need to add/enable type information?)");
        }
        throw JsonMappingException.from(jsonParser, "No suitable constructor found for type " + this._beanType + ": can not instantiate from JSON object (missing default constructor or creator, or perhaps need to add/enable type information?)");
    }

    public Object deserializeFromString(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._objectIdReader != null) {
            return deserializeFromObjectId(jsonParser, deserializationContext);
        }
        if (this._delegateDeserializer == null || this._valueInstantiator.canCreateFromString()) {
            return this._valueInstantiator.createFromString(deserializationContext, jsonParser.getText());
        }
        Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        if (this._injectables != null) {
            injectValues(deserializationContext, createUsingDelegate);
        }
        return createUsingDelegate;
    }

    public Object deserializeWithObjectId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return deserializeFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        Object objectId;
        if (this._objectIdReader != null) {
            if (jsonParser.canReadObjectId() && (objectId = jsonParser.getObjectId()) != null) {
                return _handleTypedObjectId(jsonParser, deserializationContext, typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext), objectId);
            }
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != null) {
                if (currentToken.isScalarValue()) {
                    return deserializeFromObjectId(jsonParser, deserializationContext);
                }
                JsonToken jsonToken = currentToken;
                if (currentToken == JsonToken.START_OBJECT) {
                    jsonToken = jsonParser.nextToken();
                }
                if (jsonToken == JsonToken.FIELD_NAME && this._objectIdReader.maySerializeAsObject() && this._objectIdReader.isValidReferencePropertyName(jsonParser.getCurrentName(), jsonParser)) {
                    return deserializeFromObjectId(jsonParser, deserializationContext);
                }
            }
        }
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public SettableBeanProperty findBackReference(String str) {
        Map<String, SettableBeanProperty> map = this._backRefs;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        Object findDeserializationConverter;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findDeserializationConverter = annotationIntrospector.findDeserializationConverter(settableBeanProperty.getMember())) == null) {
            return null;
        }
        Converter<Object, Object> converterInstance = deserializationContext.converterInstance(settableBeanProperty.getMember(), findDeserializationConverter);
        JavaType inputType = converterInstance.getInputType(deserializationContext.getTypeFactory());
        return new StdDelegatingDeserializer(converterInstance, inputType, deserializationContext.findContextualValueDeserializer(inputType, settableBeanProperty));
    }

    public SettableBeanProperty findProperty(PropertyName propertyName) {
        return findProperty(propertyName.getSimpleName());
    }

    public SettableBeanProperty findProperty(String str) {
        BeanPropertyMap beanPropertyMap = this._beanProperties;
        SettableBeanProperty find = beanPropertyMap == null ? null : beanPropertyMap.find(str);
        SettableBeanProperty settableBeanProperty = find;
        if (find == null) {
            PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
            settableBeanProperty = find;
            if (propertyBasedCreator != null) {
                settableBeanProperty = propertyBasedCreator.findCreatorProperty(str);
            }
        }
        return settableBeanProperty;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Collection<Object> getKnownPropertyNames() {
        ArrayList arrayList = new ArrayList();
        Iterator<SettableBeanProperty> it = this._beanProperties.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getName());
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public ObjectIdReader getObjectIdReader() {
        return this._objectIdReader;
    }

    public ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }

    public void handleIgnoredProperty(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (!deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_IGNORED_PROPERTIES)) {
            jsonParser.skipChildren();
            return;
        }
        throw IgnoredPropertyException.from(jsonParser, obj, str, getKnownPropertyNames());
    }

    public Object handlePolymorphic(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException {
        JsonDeserializer<Object> _findSubclassDeserializer = _findSubclassDeserializer(deserializationContext, obj, tokenBuffer);
        if (_findSubclassDeserializer != null) {
            Object obj2 = obj;
            if (tokenBuffer != null) {
                tokenBuffer.writeEndObject();
                JsonParser asParser = tokenBuffer.asParser();
                asParser.nextToken();
                obj2 = _findSubclassDeserializer.deserialize(asParser, deserializationContext, obj);
            }
            Object obj3 = obj2;
            if (jsonParser != null) {
                obj3 = _findSubclassDeserializer.deserialize(jsonParser, deserializationContext, obj2);
            }
            return obj3;
        }
        if (tokenBuffer != null) {
            handleUnknownProperties(deserializationContext, obj, tokenBuffer);
        }
        Object obj4 = obj;
        if (jsonParser != null) {
            obj4 = deserialize(jsonParser, deserializationContext, obj);
        }
        return obj4;
    }

    public Object handleUnknownProperties(DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException {
        tokenBuffer.writeEndObject();
        JsonParser asParser = tokenBuffer.asParser();
        while (asParser.nextToken() != JsonToken.END_OBJECT) {
            String currentName = asParser.getCurrentName();
            asParser.nextToken();
            handleUnknownProperty(asParser, deserializationContext, obj, currentName);
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public void handleUnknownProperty(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (this._ignoreAllUnknown) {
            jsonParser.skipChildren();
            return;
        }
        HashSet<String> hashSet = this._ignorableProps;
        if (hashSet != null && hashSet.contains(str)) {
            handleIgnoredProperty(jsonParser, deserializationContext, obj, str);
        }
        super.handleUnknownProperty(jsonParser, deserializationContext, obj, str);
    }

    public void handleUnknownVanilla(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        HashSet<String> hashSet = this._ignorableProps;
        if (hashSet == null || !hashSet.contains(str)) {
            SettableAnyProperty settableAnyProperty = this._anySetter;
            if (settableAnyProperty != null) {
                try {
                    settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, str);
                } catch (Exception e) {
                    wrapAndThrow(e, obj, str, deserializationContext);
                    throw null;
                }
            } else {
                handleUnknownProperty(jsonParser, deserializationContext, obj, str);
            }
        } else {
            handleIgnoredProperty(jsonParser, deserializationContext, obj, str);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Class<?> handledType() {
        return this._beanType.getRawClass();
    }

    public void injectValues(DeserializationContext deserializationContext, Object obj) throws IOException {
        for (ValueInjector valueInjector : this._injectables) {
            valueInjector.inject(deserializationContext, obj);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.deser.ResolvableDeserializer
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        ExternalTypeHandler.Builder builder;
        SettableBeanProperty[] settableBeanPropertyArr;
        SettableBeanProperty settableBeanProperty;
        UnwrappedPropertyHandler unwrappedPropertyHandler = null;
        if (this._valueInstantiator.canCreateFromObjectWith()) {
            SettableBeanProperty[] fromObjectArguments = this._valueInstantiator.getFromObjectArguments(deserializationContext.getConfig());
            int length = fromObjectArguments.length;
            ExternalTypeHandler.Builder builder2 = null;
            int i = 0;
            while (true) {
                settableBeanPropertyArr = fromObjectArguments;
                builder = builder2;
                if (i >= length) {
                    break;
                }
                SettableBeanProperty settableBeanProperty2 = fromObjectArguments[i];
                builder2 = builder2;
                if (settableBeanProperty2.hasValueTypeDeserializer()) {
                    TypeDeserializer valueTypeDeserializer = settableBeanProperty2.getValueTypeDeserializer();
                    builder2 = builder2;
                    if (valueTypeDeserializer.getTypeInclusion() == JsonTypeInfo.EnumC2723As.EXTERNAL_PROPERTY) {
                        builder2 = builder2;
                        if (builder2 == null) {
                            builder2 = new ExternalTypeHandler.Builder();
                        }
                        builder2.addExternal(settableBeanProperty2, valueTypeDeserializer);
                    }
                }
                i++;
            }
        } else {
            settableBeanPropertyArr = null;
            builder = null;
        }
        Iterator<SettableBeanProperty> it = this._beanProperties.iterator();
        while (it.hasNext()) {
            SettableBeanProperty next = it.next();
            if (!next.hasValueDeserializer()) {
                JsonDeserializer<Object> findConvertingDeserializer = findConvertingDeserializer(deserializationContext, next);
                JsonDeserializer<Object> jsonDeserializer = findConvertingDeserializer;
                if (findConvertingDeserializer == null) {
                    jsonDeserializer = findDeserializer(deserializationContext, next.getType(), next);
                }
                settableBeanProperty = next.withValueDeserializer(jsonDeserializer);
            } else {
                JsonDeserializer<?> valueDeserializer = next.getValueDeserializer();
                JsonDeserializer<?> handlePrimaryContextualization = deserializationContext.handlePrimaryContextualization(valueDeserializer, next, next.getType());
                settableBeanProperty = handlePrimaryContextualization != valueDeserializer ? next.withValueDeserializer(handlePrimaryContextualization) : next;
            }
            SettableBeanProperty _resolveManagedReferenceProperty = _resolveManagedReferenceProperty(deserializationContext, settableBeanProperty);
            SettableBeanProperty settableBeanProperty3 = _resolveManagedReferenceProperty;
            if (!(_resolveManagedReferenceProperty instanceof ManagedReferenceProperty)) {
                settableBeanProperty3 = _resolvedObjectIdProperty(deserializationContext, _resolveManagedReferenceProperty);
            }
            SettableBeanProperty _resolveUnwrappedProperty = _resolveUnwrappedProperty(deserializationContext, settableBeanProperty3);
            if (_resolveUnwrappedProperty != null) {
                UnwrappedPropertyHandler unwrappedPropertyHandler2 = unwrappedPropertyHandler;
                if (unwrappedPropertyHandler == null) {
                    unwrappedPropertyHandler2 = new UnwrappedPropertyHandler();
                }
                unwrappedPropertyHandler2.addProperty(_resolveUnwrappedProperty);
                this._beanProperties.remove(_resolveUnwrappedProperty);
                unwrappedPropertyHandler = unwrappedPropertyHandler2;
            } else {
                SettableBeanProperty _resolveInnerClassValuedProperty = _resolveInnerClassValuedProperty(deserializationContext, settableBeanProperty3);
                if (_resolveInnerClassValuedProperty != next) {
                    this._beanProperties.replace(_resolveInnerClassValuedProperty);
                    if (settableBeanPropertyArr != null) {
                        int length2 = settableBeanPropertyArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length2) {
                                break;
                            } else if (settableBeanPropertyArr[i2] == next) {
                                settableBeanPropertyArr[i2] = _resolveInnerClassValuedProperty;
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                if (_resolveInnerClassValuedProperty.hasValueTypeDeserializer()) {
                    TypeDeserializer valueTypeDeserializer2 = _resolveInnerClassValuedProperty.getValueTypeDeserializer();
                    if (valueTypeDeserializer2.getTypeInclusion() == JsonTypeInfo.EnumC2723As.EXTERNAL_PROPERTY) {
                        ExternalTypeHandler.Builder builder3 = builder;
                        if (builder == null) {
                            builder3 = new ExternalTypeHandler.Builder();
                        }
                        builder3.addExternal(_resolveInnerClassValuedProperty, valueTypeDeserializer2);
                        this._beanProperties.remove(_resolveInnerClassValuedProperty);
                        builder = builder3;
                    }
                }
            }
        }
        SettableAnyProperty settableAnyProperty = this._anySetter;
        if (settableAnyProperty != null && !settableAnyProperty.hasValueDeserializer()) {
            SettableAnyProperty settableAnyProperty2 = this._anySetter;
            this._anySetter = settableAnyProperty2.withValueDeserializer(findDeserializer(deserializationContext, settableAnyProperty2.getType(), this._anySetter.getProperty()));
        }
        if (this._valueInstantiator.canCreateUsingDelegate()) {
            JavaType delegateType = this._valueInstantiator.getDelegateType(deserializationContext.getConfig());
            if (delegateType != null) {
                this._delegateDeserializer = _findDelegateDeserializer(deserializationContext, delegateType, this._valueInstantiator.getDelegateCreator());
            } else {
                throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._beanType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
        }
        if (this._valueInstantiator.canCreateUsingArrayDelegate()) {
            JavaType arrayDelegateType = this._valueInstantiator.getArrayDelegateType(deserializationContext.getConfig());
            if (arrayDelegateType != null) {
                this._arrayDelegateDeserializer = _findDelegateDeserializer(deserializationContext, arrayDelegateType, this._valueInstantiator.getArrayDelegateCreator());
            } else {
                throw new IllegalArgumentException("Invalid array-delegate-creator definition for " + this._beanType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'");
            }
        }
        if (settableBeanPropertyArr != null) {
            this._propertyBasedCreator = PropertyBasedCreator.construct(deserializationContext, this._valueInstantiator, settableBeanPropertyArr);
        }
        boolean z = true;
        if (builder != null) {
            this._externalTypeIdHandler = builder.build();
            this._nonStandardCreation = true;
        }
        this._unwrappedPropertyHandler = unwrappedPropertyHandler;
        if (unwrappedPropertyHandler != null) {
            this._nonStandardCreation = true;
        }
        if (!this._vanillaProcessing || this._nonStandardCreation) {
            z = false;
        }
        this._vanillaProcessing = z;
    }

    public final Throwable throwOrReturnThrowable(Throwable th, DeserializationContext deserializationContext) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        if (!(th instanceof Error)) {
            boolean z = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
            if (th instanceof IOException) {
                if (!z || !(th instanceof JsonProcessingException)) {
                    throw ((IOException) th);
                }
            } else if (!z && (th instanceof RuntimeException)) {
                throw ((RuntimeException) th);
            }
            return th;
        }
        throw ((Error) th);
    }

    public abstract BeanDeserializerBase withIgnorableProperties(HashSet<String> hashSet);

    public abstract BeanDeserializerBase withObjectIdReader(ObjectIdReader objectIdReader);

    public void wrapAndThrow(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        throw JsonMappingException.wrapWithPath(throwOrReturnThrowable(th, deserializationContext), obj, str);
    }

    public void wrapInstantiationProblem(Throwable th, DeserializationContext deserializationContext) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        if (!(th instanceof Error)) {
            boolean z = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
            if (th instanceof IOException) {
                throw ((IOException) th);
            } else if (z || !(th instanceof RuntimeException)) {
                throw deserializationContext.instantiationException(this._beanType.getRawClass(), th);
            } else {
                throw ((RuntimeException) th);
            }
        } else {
            throw ((Error) th);
        }
    }
}
