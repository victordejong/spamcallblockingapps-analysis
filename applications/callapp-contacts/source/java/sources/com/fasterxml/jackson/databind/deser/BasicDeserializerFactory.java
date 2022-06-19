package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.ConstructorDetector;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate;
import com.fasterxml.jackson.databind.deser.impl.CreatorCollector;
import com.fasterxml.jackson.databind.deser.impl.JDKValueInstantiators;
import com.fasterxml.jackson.databind.deser.impl.JavaUtilCollectionsDeserializers;
import com.fasterxml.jackson.databind.deser.std.AtomicReferenceDeserializer;
import com.fasterxml.jackson.databind.deser.std.DateDeserializers;
import com.fasterxml.jackson.databind.deser.std.EnumDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumMapDeserializer;
import com.fasterxml.jackson.databind.deser.std.JdkDeserializers;
import com.fasterxml.jackson.databind.deser.std.JsonNodeDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapEntryDeserializer;
import com.fasterxml.jackson.databind.deser.std.NumberDeserializers;
import com.fasterxml.jackson.databind.deser.std.ObjectArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import com.fasterxml.jackson.databind.deser.std.StringArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringDeserializer;
import com.fasterxml.jackson.databind.deser.std.TokenBufferDeserializer;
import com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jdk14.JDK14Util;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BasicDeserializerFactory.class */
public abstract class BasicDeserializerFactory extends DeserializerFactory implements Serializable {
    protected final DeserializerFactoryConfig _factoryConfig;
    private static final Class<?> CLASS_OBJECT = Object.class;
    private static final Class<?> CLASS_STRING = String.class;
    private static final Class<?> CLASS_CHAR_SEQUENCE = CharSequence.class;
    private static final Class<?> CLASS_ITERABLE = Iterable.class;
    private static final Class<?> CLASS_MAP_ENTRY = Map.Entry.class;
    private static final Class<?> CLASS_SERIALIZABLE = Serializable.class;
    protected static final PropertyName UNWRAPPED_CREATOR_PARAM_NAME = new PropertyName("@JsonUnwrapped");

    /* renamed from: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BasicDeserializerFactory$1.class */
    public static /* synthetic */ class C105271 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode;

        /* renamed from: $SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor */
        static final /* synthetic */ int[] f34291x8e3a543;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0068 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0070 -> B:31:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:27:0x0054). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstructorDetector.SingleArgConstructor.values().length];
            f34291x8e3a543 = iArr;
            try {
                iArr[ConstructorDetector.SingleArgConstructor.DELEGATING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34291x8e3a543[ConstructorDetector.SingleArgConstructor.PROPERTIES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34291x8e3a543[ConstructorDetector.SingleArgConstructor.REQUIRE_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34291x8e3a543[ConstructorDetector.SingleArgConstructor.HEURISTIC.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[JsonCreator.Mode.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode = iArr2;
            try {
                iArr2[JsonCreator.Mode.DELEGATING.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[JsonCreator.Mode.PROPERTIES.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[JsonCreator.Mode.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BasicDeserializerFactory$ContainerDefaultMappings.class */
    public static class ContainerDefaultMappings {
        static final HashMap<String, Class<? extends Collection>> _collectionFallbacks;
        static final HashMap<String, Class<? extends Map>> _mapFallbacks;

        static {
            HashMap<String, Class<? extends Collection>> hashMap = new HashMap<>();
            hashMap.put(Collection.class.getName(), ArrayList.class);
            hashMap.put(List.class.getName(), ArrayList.class);
            hashMap.put(Set.class.getName(), HashSet.class);
            hashMap.put(SortedSet.class.getName(), TreeSet.class);
            hashMap.put(Queue.class.getName(), LinkedList.class);
            hashMap.put(AbstractList.class.getName(), ArrayList.class);
            hashMap.put(AbstractSet.class.getName(), HashSet.class);
            hashMap.put(Deque.class.getName(), LinkedList.class);
            hashMap.put(NavigableSet.class.getName(), TreeSet.class);
            _collectionFallbacks = hashMap;
            HashMap<String, Class<? extends Map>> hashMap2 = new HashMap<>();
            hashMap2.put(Map.class.getName(), LinkedHashMap.class);
            hashMap2.put(AbstractMap.class.getName(), LinkedHashMap.class);
            hashMap2.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
            hashMap2.put(SortedMap.class.getName(), TreeMap.class);
            hashMap2.put(NavigableMap.class.getName(), TreeMap.class);
            hashMap2.put(ConcurrentNavigableMap.class.getName(), ConcurrentSkipListMap.class);
            _mapFallbacks = hashMap2;
        }

        protected ContainerDefaultMappings() {
        }

        public static Class<?> findCollectionFallback(JavaType javaType) {
            return _collectionFallbacks.get(javaType.getRawClass().getName());
        }

        public static Class<?> findMapFallback(JavaType javaType) {
            return _mapFallbacks.get(javaType.getRawClass().getName());
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState.class */
    public static class CreatorCollectionState {
        private int _explicitConstructorCount;
        private int _explicitFactoryCount;
        private List<CreatorCandidate> _implicitConstructorCandidates;
        private List<CreatorCandidate> _implicitFactoryCandidates;
        public final BeanDescription beanDesc;
        public final DeserializationContext context;
        public final Map<AnnotatedWithParams, BeanPropertyDefinition[]> creatorParams;
        public final CreatorCollector creators;
        public final VisibilityChecker<?> vchecker;

        public CreatorCollectionState(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, CreatorCollector creatorCollector, Map<AnnotatedWithParams, BeanPropertyDefinition[]> map) {
            this.context = deserializationContext;
            this.beanDesc = beanDescription;
            this.vchecker = visibilityChecker;
            this.creators = creatorCollector;
            this.creatorParams = map;
        }

        public void addImplicitConstructorCandidate(CreatorCandidate creatorCandidate) {
            if (this._implicitConstructorCandidates == null) {
                this._implicitConstructorCandidates = new LinkedList();
            }
            this._implicitConstructorCandidates.add(creatorCandidate);
        }

        public void addImplicitFactoryCandidate(CreatorCandidate creatorCandidate) {
            if (this._implicitFactoryCandidates == null) {
                this._implicitFactoryCandidates = new LinkedList();
            }
            this._implicitFactoryCandidates.add(creatorCandidate);
        }

        public AnnotationIntrospector annotationIntrospector() {
            return this.context.getAnnotationIntrospector();
        }

        public boolean hasExplicitConstructors() {
            return this._explicitConstructorCount > 0;
        }

        public boolean hasExplicitFactories() {
            return this._explicitFactoryCount > 0;
        }

        public boolean hasImplicitConstructorCandidates() {
            return this._implicitConstructorCandidates != null;
        }

        public boolean hasImplicitFactoryCandidates() {
            return this._implicitFactoryCandidates != null;
        }

        public List<CreatorCandidate> implicitConstructorCandidates() {
            return this._implicitConstructorCandidates;
        }

        public List<CreatorCandidate> implicitFactoryCandidates() {
            return this._implicitFactoryCandidates;
        }

        public void increaseExplicitConstructorCount() {
            this._explicitConstructorCount++;
        }

        public void increaseExplicitFactoryCount() {
            this._explicitFactoryCount++;
        }
    }

    public BasicDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        this._factoryConfig = deserializerFactoryConfig;
    }

    private boolean _checkIfCreatorPropertyBased(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, BeanPropertyDefinition beanPropertyDefinition) {
        String name;
        if ((beanPropertyDefinition == null || !beanPropertyDefinition.isExplicitlyNamed()) && annotationIntrospector.findInjectableValue(annotatedWithParams.getParameter(0)) == null) {
            return beanPropertyDefinition != null && (name = beanPropertyDefinition.getName()) != null && !name.isEmpty() && beanPropertyDefinition.couldSerialize();
        }
        return true;
    }

    private void _checkImplicitlyNamedConstructors(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, List<AnnotatedWithParams> list) throws JsonMappingException {
        AnnotatedWithParams annotatedWithParams;
        Iterator<AnnotatedWithParams> it2 = list.iterator();
        AnnotatedWithParams annotatedWithParams2 = null;
        SettableBeanProperty[] settableBeanPropertyArr = null;
        while (true) {
            if (!it2.hasNext()) {
                annotatedWithParams = annotatedWithParams2;
                break;
            }
            AnnotatedWithParams next = it2.next();
            if (visibilityChecker.isCreatorVisible(next)) {
                int parameterCount = next.getParameterCount();
                SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[parameterCount];
                int i = 0;
                while (true) {
                    if (i < parameterCount) {
                        AnnotatedParameter parameter = next.getParameter(i);
                        PropertyName _findParamName = _findParamName(parameter, annotationIntrospector);
                        if (_findParamName != null && !_findParamName.isEmpty()) {
                            settableBeanPropertyArr2[i] = constructCreatorProperty(deserializationContext, beanDescription, _findParamName, parameter.getIndex(), parameter, null);
                            i++;
                        }
                    } else if (annotatedWithParams2 != null) {
                        annotatedWithParams = null;
                        break;
                    } else {
                        annotatedWithParams2 = next;
                        settableBeanPropertyArr = settableBeanPropertyArr2;
                    }
                }
            }
        }
        if (annotatedWithParams != null) {
            creatorCollector.addPropertyCreator(annotatedWithParams, false, settableBeanPropertyArr);
            BasicBeanDescription basicBeanDescription = (BasicBeanDescription) beanDescription;
            for (SettableBeanProperty settableBeanProperty : settableBeanPropertyArr) {
                PropertyName fullName = settableBeanProperty.getFullName();
                if (!basicBeanDescription.hasProperty(fullName)) {
                    basicBeanDescription.addProperty(SimpleBeanPropertyDefinition.construct(deserializationContext.getConfig(), settableBeanProperty.getMember(), fullName));
                }
            }
        }
    }

    private KeyDeserializer _createEnumKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        Class<?> rawClass = javaType.getRawClass();
        BeanDescription introspect = config.introspect(javaType);
        KeyDeserializer findKeyDeserializerFromAnnotation = findKeyDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
        if (findKeyDeserializerFromAnnotation != null) {
            return findKeyDeserializerFromAnnotation;
        }
        JsonDeserializer<?> _findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, config, introspect);
        if (_findCustomEnumDeserializer != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, _findCustomEnumDeserializer);
        }
        JsonDeserializer<Object> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
        if (findDeserializerFromAnnotation != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, findDeserializerFromAnnotation);
        }
        EnumResolver constructEnumResolver = constructEnumResolver(rawClass, config, introspect.findJsonValueAccessor());
        for (AnnotatedMethod annotatedMethod : introspect.getFactoryMethods()) {
            if (_hasCreatorAnnotation(deserializationContext, annotatedMethod)) {
                if (annotatedMethod.getParameterCount() != 1 || !annotatedMethod.getRawReturnType().isAssignableFrom(rawClass)) {
                    throw new IllegalArgumentException("Unsuitable method (" + annotatedMethod + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
                } else if (annotatedMethod.getRawParameterType(0) == String.class) {
                    if (config.canOverrideAccessModifiers()) {
                        ClassUtil.checkAndFixAccess(annotatedMethod.getMember(), deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    }
                    return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver, annotatedMethod);
                }
            }
        }
        return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver);
    }

    private PropertyName _findParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        if (annotationIntrospector != null) {
            PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedParameter);
            if (findNameForDeserialization != null && !findNameForDeserialization.isEmpty()) {
                return findNameForDeserialization;
            }
            String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedParameter);
            if (findImplicitPropertyName != null && !findImplicitPropertyName.isEmpty()) {
                return PropertyName.construct(findImplicitPropertyName);
            }
            return null;
        }
        return null;
    }

    private JavaType _mapAbstractType2(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (this._factoryConfig.hasAbstractTypeResolvers()) {
            for (AbstractTypeResolver abstractTypeResolver : this._factoryConfig.abstractTypeResolvers()) {
                JavaType findTypeMapping = abstractTypeResolver.findTypeMapping(deserializationConfig, javaType);
                if (findTypeMapping != null && !findTypeMapping.hasRawClass(rawClass)) {
                    return findTypeMapping;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void _addExplicitAnyCreator(com.fasterxml.jackson.databind.DeserializationContext r9, com.fasterxml.jackson.databind.BeanDescription r10, com.fasterxml.jackson.databind.deser.impl.CreatorCollector r11, com.fasterxml.jackson.databind.deser.impl.CreatorCandidate r12, com.fasterxml.jackson.databind.cfg.ConstructorDetector r13) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory._addExplicitAnyCreator(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.BeanDescription, com.fasterxml.jackson.databind.deser.impl.CreatorCollector, com.fasterxml.jackson.databind.deser.impl.CreatorCandidate, com.fasterxml.jackson.databind.cfg.ConstructorDetector):void");
    }

    protected void _addExplicitConstructorCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, boolean z) throws JsonMappingException {
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker = creatorCollectionState.vchecker;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map = creatorCollectionState.creatorParams;
        AnnotatedConstructor findDefaultConstructor = beanDescription.findDefaultConstructor();
        if (findDefaultConstructor != null && (!creatorCollector.hasDefaultCreator() || _hasCreatorAnnotation(deserializationContext, findDefaultConstructor))) {
            creatorCollector.setDefaultCreator(findDefaultConstructor);
        }
        for (AnnotatedConstructor annotatedConstructor : beanDescription.getConstructors()) {
            JsonCreator.Mode findCreatorAnnotation = annotationIntrospector.findCreatorAnnotation(deserializationContext.getConfig(), annotatedConstructor);
            if (JsonCreator.Mode.DISABLED != findCreatorAnnotation) {
                if (findCreatorAnnotation != null) {
                    int i = C105271.$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[findCreatorAnnotation.ordinal()];
                    if (i == 1) {
                        _addExplicitDelegatingCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, null));
                    } else if (i != 2) {
                        _addExplicitAnyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, map.get(annotatedConstructor)), deserializationContext.getConfig().getConstructorDetector());
                    } else {
                        _addExplicitPropertyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, map.get(annotatedConstructor)));
                    }
                    creatorCollectionState.increaseExplicitConstructorCount();
                } else if (z && visibilityChecker.isCreatorVisible(annotatedConstructor)) {
                    creatorCollectionState.addImplicitConstructorCandidate(CreatorCandidate.construct(annotationIntrospector, annotatedConstructor, map.get(annotatedConstructor)));
                }
            }
        }
    }

    protected void _addExplicitDelegatingCreator(DeserializationContext deserializationContext, BeanDescription beanDescription, CreatorCollector creatorCollector, CreatorCandidate creatorCandidate) throws JsonMappingException {
        int paramCount = creatorCandidate.paramCount();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[paramCount];
        int i = -1;
        for (int i2 = 0; i2 < paramCount; i2++) {
            AnnotatedParameter parameter = creatorCandidate.parameter(i2);
            JacksonInject.Value injection = creatorCandidate.injection(i2);
            if (injection != null) {
                settableBeanPropertyArr[i2] = constructCreatorProperty(deserializationContext, beanDescription, null, i2, parameter, injection);
            } else if (i < 0) {
                i = i2;
            } else {
                deserializationContext.reportBadTypeDefinition(beanDescription, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed", Integer.valueOf(i), Integer.valueOf(i2), creatorCandidate);
            }
        }
        if (i < 0) {
            deserializationContext.reportBadTypeDefinition(beanDescription, "No argument left as delegating for Creator %s: exactly one required", creatorCandidate);
        }
        if (paramCount != 1) {
            creatorCollector.addDelegatingCreator(creatorCandidate.creator(), true, settableBeanPropertyArr, i);
            return;
        }
        _handleSingleArgumentCreator(creatorCollector, creatorCandidate.creator(), true, true);
        BeanPropertyDefinition propertyDef = creatorCandidate.propertyDef(0);
        if (propertyDef == null) {
            return;
        }
        ((POJOPropertyBuilder) propertyDef).removeConstructors();
    }

    protected void _addExplicitFactoryCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, boolean z) throws JsonMappingException {
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker = creatorCollectionState.vchecker;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map = creatorCollectionState.creatorParams;
        for (AnnotatedMethod annotatedMethod : beanDescription.getFactoryMethods()) {
            JsonCreator.Mode findCreatorAnnotation = annotationIntrospector.findCreatorAnnotation(deserializationContext.getConfig(), annotatedMethod);
            int parameterCount = annotatedMethod.getParameterCount();
            if (findCreatorAnnotation == null) {
                if (z && parameterCount == 1 && visibilityChecker.isCreatorVisible(annotatedMethod)) {
                    creatorCollectionState.addImplicitFactoryCandidate(CreatorCandidate.construct(annotationIntrospector, annotatedMethod, null));
                }
            } else if (findCreatorAnnotation != JsonCreator.Mode.DISABLED) {
                if (parameterCount == 0) {
                    creatorCollector.setDefaultCreator(annotatedMethod);
                } else {
                    int i = C105271.$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode[findCreatorAnnotation.ordinal()];
                    if (i == 1) {
                        _addExplicitDelegatingCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedMethod, null));
                    } else if (i != 2) {
                        _addExplicitAnyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedMethod, map.get(annotatedMethod)), ConstructorDetector.DEFAULT);
                    } else {
                        _addExplicitPropertyCreator(deserializationContext, beanDescription, creatorCollector, CreatorCandidate.construct(annotationIntrospector, annotatedMethod, map.get(annotatedMethod)));
                    }
                    creatorCollectionState.increaseExplicitFactoryCount();
                }
            }
        }
    }

    protected void _addExplicitPropertyCreator(DeserializationContext deserializationContext, BeanDescription beanDescription, CreatorCollector creatorCollector, CreatorCandidate creatorCandidate) throws JsonMappingException {
        int paramCount = creatorCandidate.paramCount();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[paramCount];
        for (int i = 0; i < paramCount; i++) {
            JacksonInject.Value injection = creatorCandidate.injection(i);
            AnnotatedParameter parameter = creatorCandidate.parameter(i);
            PropertyName paramName = creatorCandidate.paramName(i);
            if (paramName == null) {
                if (deserializationContext.getAnnotationIntrospector().findUnwrappingNameTransformer(parameter) != null) {
                    _reportUnwrappedCreatorProperty(deserializationContext, beanDescription, parameter);
                }
                paramName = creatorCandidate.findImplicitParamName(i);
                _validateNamedPropertyParameter(deserializationContext, beanDescription, creatorCandidate, i, paramName, injection);
            }
            settableBeanPropertyArr[i] = constructCreatorProperty(deserializationContext, beanDescription, paramName, i, parameter, injection);
        }
        creatorCollector.addPropertyCreator(creatorCandidate.creator(), true, settableBeanPropertyArr);
    }

    protected void _addImplicitConstructorCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, List<CreatorCandidate> list) throws JsonMappingException {
        LinkedList linkedList;
        int i;
        int i2;
        DeserializationConfig config = deserializationContext.getConfig();
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker = creatorCollectionState.vchecker;
        boolean singleArgCreatorDefaultsToProperties = config.getConstructorDetector().singleArgCreatorDefaultsToProperties();
        Iterator<CreatorCandidate> it2 = list.iterator();
        LinkedList linkedList2 = null;
        VisibilityChecker<?> visibilityChecker2 = visibilityChecker;
        while (it2.hasNext()) {
            CreatorCandidate next = it2.next();
            int paramCount = next.paramCount();
            AnnotatedWithParams creator = next.creator();
            if (paramCount == 1) {
                BeanPropertyDefinition propertyDef = next.propertyDef(0);
                if (singleArgCreatorDefaultsToProperties || _checkIfCreatorPropertyBased(annotationIntrospector, creator, propertyDef)) {
                    JacksonInject.Value injection = next.injection(0);
                    PropertyName paramName = next.paramName(0);
                    PropertyName propertyName = paramName;
                    if (paramName == null) {
                        PropertyName findImplicitParamName = next.findImplicitParamName(0);
                        propertyName = findImplicitParamName;
                        if (findImplicitParamName == null) {
                            if (injection != null) {
                                propertyName = findImplicitParamName;
                            }
                        }
                    }
                    creatorCollector.addPropertyCreator(creator, false, new SettableBeanProperty[]{constructCreatorProperty(deserializationContext, beanDescription, propertyName, 0, next.parameter(0), injection)});
                } else {
                    _handleSingleArgumentCreator(creatorCollector, creator, false, visibilityChecker2.isCreatorVisible(creator));
                    if (propertyDef != null) {
                        ((POJOPropertyBuilder) propertyDef).removeConstructors();
                    }
                }
                linkedList = linkedList2;
            } else {
                SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[paramCount];
                int i3 = -1;
                int i4 = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < paramCount; i6++) {
                    AnnotatedParameter parameter = creator.getParameter(i6);
                    BeanPropertyDefinition propertyDef2 = next.propertyDef(i6);
                    JacksonInject.Value findInjectableValue = annotationIntrospector.findInjectableValue(parameter);
                    PropertyName fullName = propertyDef2 == null ? null : propertyDef2.getFullName();
                    if (propertyDef2 == null || !propertyDef2.isExplicitlyNamed()) {
                        int i7 = i6;
                        if (findInjectableValue != null) {
                            i = i5 + 1;
                            settableBeanPropertyArr[i7] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i7, parameter, findInjectableValue);
                            i2 = i4;
                        } else if (annotationIntrospector.findUnwrappingNameTransformer(parameter) != null) {
                            _reportUnwrappedCreatorProperty(deserializationContext, beanDescription, parameter);
                            i2 = i4;
                            i = i5;
                        } else {
                            i2 = i4;
                            i = i5;
                            if (i3 < 0) {
                                i3 = i7;
                            }
                        }
                    } else {
                        i2 = i4 + 1;
                        int i8 = i6;
                        settableBeanPropertyArr[i8] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i8, parameter, findInjectableValue);
                        i = i5;
                    }
                    i4 = i2;
                    i5 = i;
                }
                VisibilityChecker<?> visibilityChecker3 = visibilityChecker2;
                boolean z = singleArgCreatorDefaultsToProperties;
                Iterator<CreatorCandidate> it3 = it2;
                if (i4 > 0 || i5 > 0) {
                    if (i4 + 0 + i5 == paramCount) {
                        creatorCollector.addPropertyCreator(creator, false, settableBeanPropertyArr);
                        linkedList = linkedList2;
                        singleArgCreatorDefaultsToProperties = z;
                        it2 = it3;
                        visibilityChecker2 = visibilityChecker3;
                    } else if (i4 == 0 && i5 + 1 == paramCount) {
                        creatorCollector.addDelegatingCreator(creator, false, settableBeanPropertyArr, 0);
                        visibilityChecker2 = visibilityChecker3;
                        it2 = it3;
                        singleArgCreatorDefaultsToProperties = z;
                        linkedList = linkedList2;
                    } else {
                        PropertyName findImplicitParamName2 = next.findImplicitParamName(i3);
                        if (findImplicitParamName2 == null || findImplicitParamName2.isEmpty()) {
                            deserializationContext.reportBadTypeDefinition(beanDescription, "Argument #%d of constructor %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator", Integer.valueOf(i3), creator);
                        }
                    }
                }
                linkedList = linkedList2;
                singleArgCreatorDefaultsToProperties = z;
                it2 = it3;
                visibilityChecker2 = visibilityChecker3;
                if (!creatorCollector.hasDefaultCreator()) {
                    LinkedList linkedList3 = linkedList2;
                    if (linkedList2 == null) {
                        linkedList3 = new LinkedList();
                    }
                    linkedList3.add(creator);
                    linkedList = linkedList3;
                    singleArgCreatorDefaultsToProperties = z;
                    it2 = it3;
                    visibilityChecker2 = visibilityChecker3;
                }
            }
            linkedList2 = linkedList;
        }
        if (linkedList2 == null || creatorCollector.hasDelegatingCreator() || creatorCollector.hasPropertyBasedCreator()) {
            return;
        }
        _checkImplicitlyNamedConstructors(deserializationContext, beanDescription, visibilityChecker2, annotationIntrospector, creatorCollector, linkedList2);
    }

    protected void _addImplicitFactoryCreators(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, List<CreatorCandidate> list) throws JsonMappingException {
        int i;
        int i2;
        AnnotatedParameter annotatedParameter;
        BeanDescription beanDescription = creatorCollectionState.beanDesc;
        CreatorCollector creatorCollector = creatorCollectionState.creators;
        AnnotationIntrospector annotationIntrospector = creatorCollectionState.annotationIntrospector();
        VisibilityChecker<?> visibilityChecker = creatorCollectionState.vchecker;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map = creatorCollectionState.creatorParams;
        for (CreatorCandidate creatorCandidate : list) {
            int paramCount = creatorCandidate.paramCount();
            AnnotatedWithParams creator = creatorCandidate.creator();
            BeanPropertyDefinition[] beanPropertyDefinitionArr = map.get(creator);
            if (paramCount == 1) {
                BeanPropertyDefinition propertyDef = creatorCandidate.propertyDef(0);
                if (!_checkIfCreatorPropertyBased(annotationIntrospector, creator, propertyDef)) {
                    _handleSingleArgumentCreator(creatorCollector, creator, false, visibilityChecker.isCreatorVisible(creator));
                    if (propertyDef != null) {
                        ((POJOPropertyBuilder) propertyDef).removeConstructors();
                    }
                } else {
                    SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[paramCount];
                    AnnotatedParameter annotatedParameter2 = null;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    while (i3 < paramCount) {
                        AnnotatedParameter parameter = creator.getParameter(i3);
                        BeanPropertyDefinition beanPropertyDefinition = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[i3];
                        JacksonInject.Value findInjectableValue = annotationIntrospector.findInjectableValue(parameter);
                        PropertyName fullName = beanPropertyDefinition == null ? null : beanPropertyDefinition.getFullName();
                        if (beanPropertyDefinition == null || !beanPropertyDefinition.isExplicitlyNamed()) {
                            int i6 = i3;
                            if (findInjectableValue != null) {
                                i = i5 + 1;
                                settableBeanPropertyArr[i6] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i6, parameter, findInjectableValue);
                                i2 = i4;
                                annotatedParameter = annotatedParameter2;
                            } else if (annotationIntrospector.findUnwrappingNameTransformer(parameter) != null) {
                                _reportUnwrappedCreatorProperty(deserializationContext, beanDescription, parameter);
                                i2 = i4;
                                i = i5;
                                annotatedParameter = annotatedParameter2;
                            } else {
                                i2 = i4;
                                i = i5;
                                annotatedParameter = annotatedParameter2;
                                if (annotatedParameter2 == null) {
                                    annotatedParameter = parameter;
                                    i = i5;
                                    i2 = i4;
                                }
                            }
                        } else {
                            i2 = i4 + 1;
                            int i7 = i3;
                            settableBeanPropertyArr[i7] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i7, parameter, findInjectableValue);
                            i = i5;
                            annotatedParameter = annotatedParameter2;
                        }
                        i3++;
                        i4 = i2;
                        i5 = i;
                        annotatedParameter2 = annotatedParameter;
                    }
                    if (i4 > 0 || i5 > 0) {
                        if (i4 + 0 + i5 == paramCount) {
                            creatorCollector.addPropertyCreator(creator, false, settableBeanPropertyArr);
                        } else if (i4 == 0 && i5 + 1 == paramCount) {
                            creatorCollector.addDelegatingCreator(creator, false, settableBeanPropertyArr, 0);
                        } else {
                            deserializationContext.reportBadTypeDefinition(beanDescription, "Argument #%d of factory method %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator", Integer.valueOf(annotatedParameter2.getIndex()), creator);
                        }
                    }
                }
            }
        }
    }

    protected void _addRecordConstructor(DeserializationContext deserializationContext, CreatorCollectionState creatorCollectionState, AnnotatedConstructor annotatedConstructor, List<String> list) throws JsonMappingException {
        int parameterCount = annotatedConstructor.getParameterCount();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[parameterCount];
        for (int i = 0; i < parameterCount; i++) {
            AnnotatedParameter parameter = annotatedConstructor.getParameter(i);
            JacksonInject.Value findInjectableValue = annotationIntrospector.findInjectableValue(parameter);
            PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(parameter);
            if (findNameForDeserialization == null || findNameForDeserialization.isEmpty()) {
                findNameForDeserialization = PropertyName.construct(list.get(i));
            }
            settableBeanPropertyArr[i] = constructCreatorProperty(deserializationContext, creatorCollectionState.beanDesc, findNameForDeserialization, i, parameter, findInjectableValue);
        }
        creatorCollectionState.creators.addPropertyCreator(annotatedConstructor, false, settableBeanPropertyArr);
    }

    protected ValueInstantiator _constructDefaultValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        ArrayList arrayList;
        AnnotatedConstructor findRecordConstructor;
        DeserializationConfig config = deserializationContext.getConfig();
        VisibilityChecker<?> defaultVisibilityChecker = config.getDefaultVisibilityChecker(beanDescription.getBeanClass(), beanDescription.getClassInfo());
        ConstructorDetector constructorDetector = config.getConstructorDetector();
        CreatorCollectionState creatorCollectionState = new CreatorCollectionState(deserializationContext, beanDescription, defaultVisibilityChecker, new CreatorCollector(beanDescription, config), _findCreatorsFromProperties(deserializationContext, beanDescription));
        _addExplicitFactoryCreators(deserializationContext, creatorCollectionState, !constructorDetector.requireCtorAnnotation());
        if (beanDescription.getType().isConcrete()) {
            if (beanDescription.getType().isRecordType() && (findRecordConstructor = JDK14Util.findRecordConstructor(deserializationContext, beanDescription, (arrayList = new ArrayList()))) != null) {
                _addRecordConstructor(deserializationContext, creatorCollectionState, findRecordConstructor, arrayList);
                return creatorCollectionState.creators.constructValueInstantiator(deserializationContext);
            } else if (!beanDescription.isNonStaticInnerClass()) {
                _addExplicitConstructorCreators(deserializationContext, creatorCollectionState, constructorDetector.shouldIntrospectorImplicitConstructors(beanDescription.getBeanClass()));
                if (creatorCollectionState.hasImplicitConstructorCandidates() && !creatorCollectionState.hasExplicitConstructors()) {
                    _addImplicitConstructorCreators(deserializationContext, creatorCollectionState, creatorCollectionState.implicitConstructorCandidates());
                }
            }
        }
        if (creatorCollectionState.hasImplicitFactoryCandidates() && !creatorCollectionState.hasExplicitFactories() && !creatorCollectionState.hasExplicitConstructors()) {
            _addImplicitFactoryCreators(deserializationContext, creatorCollectionState, creatorCollectionState.implicitFactoryCandidates());
        }
        return creatorCollectionState.creators.constructValueInstantiator(deserializationContext);
    }

    protected Map<AnnotatedWithParams, BeanPropertyDefinition[]> _findCreatorsFromProperties(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        BeanPropertyDefinition[] beanPropertyDefinitionArr;
        LinkedHashMap emptyMap = Collections.emptyMap();
        for (BeanPropertyDefinition beanPropertyDefinition : beanDescription.findProperties()) {
            Iterator<AnnotatedParameter> constructorParameters = beanPropertyDefinition.getConstructorParameters();
            while (true) {
                Map<AnnotatedWithParams, BeanPropertyDefinition[]> map = emptyMap;
                emptyMap = map;
                if (constructorParameters.hasNext()) {
                    AnnotatedParameter next = constructorParameters.next();
                    AnnotatedWithParams owner = next.getOwner();
                    Object[] objArr = (BeanPropertyDefinition[]) map.get(owner);
                    int index = next.getIndex();
                    if (objArr == null) {
                        emptyMap = map;
                        if (map.isEmpty()) {
                            emptyMap = new LinkedHashMap();
                        }
                        beanPropertyDefinitionArr = new BeanPropertyDefinition[owner.getParameterCount()];
                        emptyMap.put(owner, beanPropertyDefinitionArr);
                    } else {
                        emptyMap = map;
                        beanPropertyDefinitionArr = objArr;
                        if (objArr[index] != null) {
                            deserializationContext.reportBadTypeDefinition(beanDescription, "Conflict: parameter #%d of %s bound to more than one property; %s vs %s", Integer.valueOf(index), owner, objArr[index], beanPropertyDefinition);
                            beanPropertyDefinitionArr = objArr;
                            emptyMap = map;
                        }
                    }
                    beanPropertyDefinitionArr[index] = beanPropertyDefinition;
                }
            }
        }
        return emptyMap;
    }

    protected JsonDeserializer<?> _findCustomArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findArrayDeserializer = deserializers.findArrayDeserializer(arrayType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findArrayDeserializer != null) {
                return findArrayDeserializer;
            }
        }
        return null;
    }

    public JsonDeserializer<Object> _findCustomBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findBeanDeserializer = deserializers.findBeanDeserializer(javaType, deserializationConfig, beanDescription);
            if (findBeanDeserializer != null) {
                return findBeanDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findCollectionDeserializer = deserializers.findCollectionDeserializer(collectionType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findCollectionDeserializer != null) {
                return findCollectionDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findCollectionLikeDeserializer = deserializers.findCollectionLikeDeserializer(collectionLikeType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findCollectionLikeDeserializer != null) {
                return findCollectionLikeDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findEnumDeserializer = deserializers.findEnumDeserializer(cls, deserializationConfig, beanDescription);
            if (findEnumDeserializer != null) {
                return findEnumDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findMapDeserializer = deserializers.findMapDeserializer(mapType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (findMapDeserializer != null) {
                return findMapDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findMapLikeDeserializer = deserializers.findMapLikeDeserializer(mapLikeType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (findMapLikeDeserializer != null) {
                return findMapLikeDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomReferenceDeserializer(ReferenceType referenceType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findReferenceDeserializer = deserializers.findReferenceDeserializer(referenceType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findReferenceDeserializer != null) {
                return findReferenceDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomTreeNodeDeserializer(Class<? extends JsonNode> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findTreeNodeDeserializer = deserializers.findTreeNodeDeserializer(cls, deserializationConfig, beanDescription);
            if (findTreeNodeDeserializer != null) {
                return findTreeNodeDeserializer;
            }
        }
        return null;
    }

    protected JavaType _findRemappedType(DeserializationConfig deserializationConfig, Class<?> cls) throws JsonMappingException {
        JavaType mapAbstractType = mapAbstractType(deserializationConfig, deserializationConfig.constructType(cls));
        if (mapAbstractType == null || mapAbstractType.hasRawClass(cls)) {
            return null;
        }
        return mapAbstractType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b7, code lost:
        if (r6 != null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.databind.PropertyMetadata _getSetterInfo(com.fasterxml.jackson.databind.DeserializationContext r5, com.fasterxml.jackson.databind.BeanProperty r6, com.fasterxml.jackson.databind.PropertyMetadata r7) {
        /*
            r4 = this;
            r0 = r5
            com.fasterxml.jackson.databind.AnnotationIntrospector r0 = r0.getAnnotationIntrospector()
            r8 = r0
            r0 = r5
            com.fasterxml.jackson.databind.DeserializationConfig r0 = r0.getConfig()
            r9 = r0
            r0 = r6
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r0 = r0.getMember()
            r10 = r0
            r0 = 0
            r5 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L86
            r0 = r8
            if (r0 == 0) goto L3e
            r0 = r8
            r1 = r10
            com.fasterxml.jackson.annotation.JsonSetter$Value r0 = r0.findSetterInfo(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L3e
            r0 = r5
            com.fasterxml.jackson.annotation.Nulls r0 = r0.nonDefaultValueNulls()
            r11 = r0
            r0 = r5
            com.fasterxml.jackson.annotation.Nulls r0 = r0.nonDefaultContentNulls()
            r8 = r0
            goto L41
        L3e:
            r0 = 0
            r8 = r0
        L41:
            r0 = r9
            r1 = r6
            com.fasterxml.jackson.databind.JavaType r1 = r1.getType()
            java.lang.Class r1 = r1.getRawClass()
            com.fasterxml.jackson.databind.cfg.ConfigOverride r0 = r0.getConfigOverride(r1)
            com.fasterxml.jackson.annotation.JsonSetter$Value r0 = r0.getSetterInfo()
            r12 = r0
            r0 = r8
            r5 = r0
            r0 = r11
            r6 = r0
            r0 = r12
            if (r0 == 0) goto L8e
            r0 = r11
            r10 = r0
            r0 = r11
            if (r0 != 0) goto L6f
            r0 = r12
            com.fasterxml.jackson.annotation.Nulls r0 = r0.nonDefaultValueNulls()
            r10 = r0
        L6f:
            r0 = r8
            r5 = r0
            r0 = r10
            r6 = r0
            r0 = r8
            if (r0 != 0) goto L8e
            r0 = r12
            com.fasterxml.jackson.annotation.Nulls r0 = r0.nonDefaultContentNulls()
            r5 = r0
            r0 = r10
            r6 = r0
            goto L8e
        L86:
            r0 = 0
            r11 = r0
            r0 = r5
            r6 = r0
            r0 = r11
            r5 = r0
        L8e:
            r0 = r9
            com.fasterxml.jackson.annotation.JsonSetter$Value r0 = r0.getDefaultSetterInfo()
            r8 = r0
            r0 = r6
            r11 = r0
            r0 = r6
            if (r0 != 0) goto La3
            r0 = r8
            com.fasterxml.jackson.annotation.Nulls r0 = r0.nonDefaultValueNulls()
            r11 = r0
        La3:
            r0 = r5
            r6 = r0
            r0 = r5
            if (r0 != 0) goto Laf
            r0 = r8
            com.fasterxml.jackson.annotation.Nulls r0 = r0.nonDefaultContentNulls()
            r6 = r0
        Laf:
            r0 = r11
            if (r0 != 0) goto Lba
            r0 = r7
            r5 = r0
            r0 = r6
            if (r0 == 0) goto Lc2
        Lba:
            r0 = r7
            r1 = r11
            r2 = r6
            com.fasterxml.jackson.databind.PropertyMetadata r0 = r0.withNulls(r1, r2)
            r5 = r0
        Lc2:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory._getSetterInfo(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.PropertyMetadata):com.fasterxml.jackson.databind.PropertyMetadata");
    }

    protected boolean _handleSingleArgumentCreator(CreatorCollector creatorCollector, AnnotatedWithParams annotatedWithParams, boolean z, boolean z2) {
        Class<?> rawParameterType = annotatedWithParams.getRawParameterType(0);
        if (rawParameterType == String.class || rawParameterType == CLASS_CHAR_SEQUENCE) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addStringCreator(annotatedWithParams, z);
            return true;
        } else if (rawParameterType == Integer.TYPE || rawParameterType == Integer.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addIntCreator(annotatedWithParams, z);
            return true;
        } else if (rawParameterType == Long.TYPE || rawParameterType == Long.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addLongCreator(annotatedWithParams, z);
            return true;
        } else if (rawParameterType == Double.TYPE || rawParameterType == Double.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addDoubleCreator(annotatedWithParams, z);
            return true;
        } else if (rawParameterType == Boolean.TYPE || rawParameterType == Boolean.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addBooleanCreator(annotatedWithParams, z);
            return true;
        } else {
            if (rawParameterType == BigInteger.class && (z || z2)) {
                creatorCollector.addBigIntegerCreator(annotatedWithParams, z);
            }
            if (rawParameterType == BigDecimal.class && (z || z2)) {
                creatorCollector.addBigDecimalCreator(annotatedWithParams, z);
            }
            if (!z) {
                return false;
            }
            creatorCollector.addDelegatingCreator(annotatedWithParams, z, null, 0);
            return true;
        }
    }

    protected boolean _hasCreatorAnnotation(DeserializationContext deserializationContext, Annotated annotated) {
        JsonCreator.Mode findCreatorAnnotation;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        return (annotationIntrospector == null || (findCreatorAnnotation = annotationIntrospector.findCreatorAnnotation(deserializationContext.getConfig(), annotated)) == null || findCreatorAnnotation == JsonCreator.Mode.DISABLED) ? false : true;
    }

    protected CollectionType _mapAbstractCollectionType(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class<?> findCollectionFallback = ContainerDefaultMappings.findCollectionFallback(javaType);
        if (findCollectionFallback != null) {
            return (CollectionType) deserializationConfig.getTypeFactory().constructSpecializedType(javaType, findCollectionFallback, true);
        }
        return null;
    }

    protected MapType _mapAbstractMapType(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class<?> findMapFallback = ContainerDefaultMappings.findMapFallback(javaType);
        if (findMapFallback != null) {
            return (MapType) deserializationConfig.getTypeFactory().constructSpecializedType(javaType, findMapFallback, true);
        }
        return null;
    }

    protected void _reportUnwrappedCreatorProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, AnnotatedParameter annotatedParameter) throws JsonMappingException {
        deserializationContext.reportBadTypeDefinition(beanDescription, "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported", Integer.valueOf(annotatedParameter.getIndex()));
    }

    protected void _validateNamedPropertyParameter(DeserializationContext deserializationContext, BeanDescription beanDescription, CreatorCandidate creatorCandidate, int i, PropertyName propertyName, JacksonInject.Value value) throws JsonMappingException {
        if (propertyName == null && value == null) {
            deserializationContext.reportBadTypeDefinition(beanDescription, "Argument #%d of constructor %s has no property name (and is not Injectable): can not use as property-based Creator", Integer.valueOf(i), creatorCandidate);
        }
    }

    public ValueInstantiator _valueInstantiatorInstance(DeserializationConfig deserializationConfig, Annotated annotated, Object obj) throws JsonMappingException {
        ValueInstantiator valueInstantiatorInstance;
        if (obj == null) {
            return null;
        }
        if (obj instanceof ValueInstantiator) {
            return (ValueInstantiator) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
        }
        Class<?> cls = (Class) obj;
        if (ClassUtil.isBogusClass(cls)) {
            return null;
        }
        if (ValueInstantiator.class.isAssignableFrom(cls)) {
            HandlerInstantiator handlerInstantiator = deserializationConfig.getHandlerInstantiator();
            return (handlerInstantiator == null || (valueInstantiatorInstance = handlerInstantiator.valueInstantiatorInstance(deserializationConfig, annotated, cls)) == null) ? (ValueInstantiator) ClassUtil.createInstance(cls, deserializationConfig.canOverrideAccessModifiers()) : valueInstantiatorInstance;
        }
        throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<ValueInstantiator>");
    }

    protected SettableBeanProperty constructCreatorProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, PropertyName propertyName, int i, AnnotatedParameter annotatedParameter, JacksonInject.Value value) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        PropertyMetadata construct = annotationIntrospector == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : PropertyMetadata.construct(annotationIntrospector.hasRequiredMarker(annotatedParameter), annotationIntrospector.findPropertyDescription(annotatedParameter), annotationIntrospector.findPropertyIndex(annotatedParameter), annotationIntrospector.findPropertyDefaultValue(annotatedParameter));
        JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, annotatedParameter, annotatedParameter.getType());
        BeanProperty.Std std = new BeanProperty.Std(propertyName, resolveMemberAndTypeAnnotations, annotationIntrospector.findWrapperName(annotatedParameter), annotatedParameter, construct);
        TypeDeserializer typeDeserializer = (TypeDeserializer) resolveMemberAndTypeAnnotations.getTypeHandler();
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer == null) {
            typeDeserializer2 = findTypeDeserializer(config, resolveMemberAndTypeAnnotations);
        }
        CreatorProperty construct2 = CreatorProperty.construct(propertyName, resolveMemberAndTypeAnnotations, std.getWrapperName(), typeDeserializer2, beanDescription.getClassAnnotations(), annotatedParameter, i, value, _getSetterInfo(deserializationContext, std, construct));
        JsonDeserializer<?> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, annotatedParameter);
        JsonDeserializer<?> jsonDeserializer = findDeserializerFromAnnotation;
        if (findDeserializerFromAnnotation == null) {
            jsonDeserializer = (JsonDeserializer) resolveMemberAndTypeAnnotations.getValueHandler();
        }
        SettableBeanProperty settableBeanProperty = construct2;
        if (jsonDeserializer != null) {
            settableBeanProperty = construct2.withValueDeserializer(deserializationContext.handlePrimaryContextualization(jsonDeserializer, construct2, resolveMemberAndTypeAnnotations));
        }
        return settableBeanProperty;
    }

    protected EnumResolver constructEnumResolver(Class<?> cls, DeserializationConfig deserializationConfig, AnnotatedMember annotatedMember) {
        if (annotatedMember != null) {
            if (deserializationConfig.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(annotatedMember.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            return EnumResolver.constructUsingMethod(deserializationConfig, cls, annotatedMember);
        }
        return EnumResolver.constructFor(deserializationConfig, cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createArrayDeserializer(DeserializationContext deserializationContext, ArrayType arrayType, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType contentType = arrayType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer == null) {
            typeDeserializer2 = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> _findCustomArrayDeserializer = _findCustomArrayDeserializer(arrayType, config, beanDescription, typeDeserializer2, jsonDeserializer);
        ObjectArrayDeserializer objectArrayDeserializer = _findCustomArrayDeserializer;
        if (_findCustomArrayDeserializer == null) {
            if (jsonDeserializer == null) {
                Class<?> rawClass = contentType.getRawClass();
                if (contentType.isPrimitive()) {
                    return PrimitiveArrayDeserializers.forType(rawClass);
                }
                if (rawClass == String.class) {
                    return StringArrayDeserializer.instance;
                }
            }
            objectArrayDeserializer = new ObjectArrayDeserializer(arrayType, jsonDeserializer, typeDeserializer2);
        }
        JsonDeserializer<?> jsonDeserializer2 = objectArrayDeserializer;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                jsonDeserializer2 = objectArrayDeserializer;
                if (!it2.hasNext()) {
                    break;
                }
                objectArrayDeserializer = it2.next().modifyArrayDeserializer(config, arrayType, beanDescription, objectArrayDeserializer);
            }
        }
        return jsonDeserializer2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0098, code lost:
        if (r9.isAbstract() != false) goto L18;
     */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonDeserializer<?> createCollectionDeserializer(com.fasterxml.jackson.databind.DeserializationContext r8, com.fasterxml.jackson.databind.type.CollectionType r9, com.fasterxml.jackson.databind.BeanDescription r10) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory.createCollectionDeserializer(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.type.CollectionType, com.fasterxml.jackson.databind.BeanDescription):com.fasterxml.jackson.databind.JsonDeserializer");
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createCollectionLikeDeserializer(DeserializationContext deserializationContext, CollectionLikeType collectionLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType contentType = collectionLikeType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> _findCustomCollectionLikeDeserializer = _findCustomCollectionLikeDeserializer(collectionLikeType, config, beanDescription, typeDeserializer, jsonDeserializer);
        JsonDeserializer<?> jsonDeserializer2 = _findCustomCollectionLikeDeserializer;
        if (_findCustomCollectionLikeDeserializer != null) {
            jsonDeserializer2 = _findCustomCollectionLikeDeserializer;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
                while (true) {
                    jsonDeserializer2 = _findCustomCollectionLikeDeserializer;
                    if (!it2.hasNext()) {
                        break;
                    }
                    _findCustomCollectionLikeDeserializer = it2.next().modifyCollectionLikeDeserializer(config, collectionLikeType, beanDescription, _findCustomCollectionLikeDeserializer);
                }
            }
        }
        return jsonDeserializer2;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createEnumDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonDeserializer<?> jsonDeserializer;
        JsonDeserializer<?> deserializerForCreator;
        DeserializationConfig config = deserializationContext.getConfig();
        Class<?> rawClass = javaType.getRawClass();
        JsonDeserializer<?> _findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, config, beanDescription);
        JsonDeserializer<?> jsonDeserializer2 = _findCustomEnumDeserializer;
        if (_findCustomEnumDeserializer == null) {
            if (rawClass == Enum.class) {
                return AbstractDeserializer.constructForNonPOJO(beanDescription);
            }
            ValueInstantiator _constructDefaultValueInstantiator = _constructDefaultValueInstantiator(deserializationContext, beanDescription);
            SettableBeanProperty[] fromObjectArguments = _constructDefaultValueInstantiator == null ? null : _constructDefaultValueInstantiator.getFromObjectArguments(deserializationContext.getConfig());
            Iterator<AnnotatedMethod> it2 = beanDescription.getFactoryMethods().iterator();
            while (true) {
                jsonDeserializer = _findCustomEnumDeserializer;
                if (!it2.hasNext()) {
                    break;
                }
                AnnotatedMethod next = it2.next();
                if (_hasCreatorAnnotation(deserializationContext, next)) {
                    if (next.getParameterCount() == 0) {
                        deserializerForCreator = EnumDeserializer.deserializerForNoArgsCreator(config, rawClass, next);
                    } else {
                        if (!next.getRawReturnType().isAssignableFrom(rawClass)) {
                            deserializationContext.reportBadDefinition(javaType, String.format("Invalid `@JsonCreator` annotated Enum factory method [%s]: needs to return compatible type", next.toString()));
                        }
                        deserializerForCreator = EnumDeserializer.deserializerForCreator(config, rawClass, next, _constructDefaultValueInstantiator, fromObjectArguments);
                    }
                    jsonDeserializer = deserializerForCreator;
                }
            }
            jsonDeserializer2 = jsonDeserializer;
            if (jsonDeserializer == null) {
                jsonDeserializer2 = new EnumDeserializer(constructEnumResolver(rawClass, config, beanDescription.findJsonValueAccessor()), Boolean.valueOf(config.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS)));
            }
        }
        JsonDeserializer<?> jsonDeserializer3 = jsonDeserializer2;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it3 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                jsonDeserializer3 = jsonDeserializer2;
                if (!it3.hasNext()) {
                    break;
                }
                jsonDeserializer2 = it3.next().modifyEnumDeserializer(config, javaType, beanDescription, jsonDeserializer2);
            }
        }
        return jsonDeserializer3;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public KeyDeserializer createKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        BeanDescription beanDescription;
        DeserializationConfig config = deserializationContext.getConfig();
        KeyDeserializer keyDeserializer = null;
        if (this._factoryConfig.hasKeyDeserializers()) {
            BeanDescription introspectClassAnnotations = config.introspectClassAnnotations(javaType);
            Iterator<KeyDeserializers> it2 = this._factoryConfig.keyDeserializers().iterator();
            while (true) {
                beanDescription = introspectClassAnnotations;
                if (!it2.hasNext()) {
                    break;
                }
                KeyDeserializer findKeyDeserializer = it2.next().findKeyDeserializer(javaType, config, introspectClassAnnotations);
                keyDeserializer = findKeyDeserializer;
                if (findKeyDeserializer != null) {
                    beanDescription = introspectClassAnnotations;
                    keyDeserializer = findKeyDeserializer;
                    break;
                }
            }
        } else {
            beanDescription = null;
            keyDeserializer = null;
        }
        KeyDeserializer keyDeserializer2 = keyDeserializer;
        if (keyDeserializer == null) {
            BeanDescription beanDescription2 = beanDescription;
            if (beanDescription == null) {
                beanDescription2 = config.introspectClassAnnotations(javaType.getRawClass());
            }
            KeyDeserializer findKeyDeserializerFromAnnotation = findKeyDeserializerFromAnnotation(deserializationContext, beanDescription2.getClassInfo());
            keyDeserializer2 = findKeyDeserializerFromAnnotation;
            if (findKeyDeserializerFromAnnotation == null) {
                keyDeserializer2 = javaType.isEnumType() ? _createEnumKeyDeserializer(deserializationContext, javaType) : StdKeyDeserializers.findStringBasedKeyDeserializer(config, javaType);
            }
        }
        KeyDeserializer keyDeserializer3 = keyDeserializer2;
        if (keyDeserializer2 != null) {
            keyDeserializer3 = keyDeserializer2;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it3 = this._factoryConfig.deserializerModifiers().iterator();
                while (true) {
                    keyDeserializer3 = keyDeserializer2;
                    if (!it3.hasNext()) {
                        break;
                    }
                    keyDeserializer2 = it3.next().modifyKeyDeserializer(config, javaType, keyDeserializer2);
                }
            }
        }
        return keyDeserializer3;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createMapDeserializer(DeserializationContext deserializationContext, MapType mapType, BeanDescription beanDescription) throws JsonMappingException {
        MapType mapType2;
        BeanDescription beanDescription2;
        MapDeserializer mapDeserializer;
        AbstractDeserializer abstractDeserializer;
        MapType mapType3;
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType keyType = mapType.getKeyType();
        JavaType contentType = mapType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        KeyDeserializer keyDeserializer = (KeyDeserializer) keyType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> _findCustomMapDeserializer = _findCustomMapDeserializer(mapType, config, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
        if (_findCustomMapDeserializer == null) {
            Class<?> rawClass = mapType.getRawClass();
            EnumMapDeserializer enumMapDeserializer = _findCustomMapDeserializer;
            if (EnumMap.class.isAssignableFrom(rawClass)) {
                ValueInstantiator findValueInstantiator = rawClass == EnumMap.class ? null : findValueInstantiator(deserializationContext, beanDescription);
                if (!keyType.isEnumImplType()) {
                    throw new IllegalArgumentException("Cannot construct EnumMap; generic (key) type not available");
                }
                enumMapDeserializer = new EnumMapDeserializer(mapType, findValueInstantiator, null, jsonDeserializer, typeDeserializer, null);
            }
            BeanDescription beanDescription3 = beanDescription;
            if (enumMapDeserializer == null) {
                if (mapType.isInterface() || mapType.isAbstract()) {
                    MapType _mapAbstractMapType = _mapAbstractMapType(mapType, config);
                    if (_mapAbstractMapType != null) {
                        _mapAbstractMapType.getRawClass();
                        beanDescription3 = config.introspectForCreation(_mapAbstractMapType);
                        mapType3 = _mapAbstractMapType;
                        abstractDeserializer = enumMapDeserializer;
                    } else if (mapType.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Cannot find a deserializer for non-concrete Map type ".concat(String.valueOf(mapType)));
                    } else {
                        abstractDeserializer = AbstractDeserializer.constructForNonPOJO(beanDescription);
                        mapType3 = mapType;
                    }
                } else {
                    JsonDeserializer<?> findForMap = JavaUtilCollectionsDeserializers.findForMap(deserializationContext, mapType);
                    if (findForMap != null) {
                        return findForMap;
                    }
                    mapType3 = mapType;
                    abstractDeserializer = findForMap;
                }
                mapDeserializer = abstractDeserializer;
                beanDescription2 = beanDescription3;
                mapType2 = mapType3;
                if (abstractDeserializer == null) {
                    MapDeserializer mapDeserializer2 = new MapDeserializer(mapType3, findValueInstantiator(deserializationContext, beanDescription3), keyDeserializer, jsonDeserializer, typeDeserializer);
                    JsonIgnoreProperties.Value defaultPropertyIgnorals = config.getDefaultPropertyIgnorals(Map.class, beanDescription3.getClassInfo());
                    mapDeserializer2.setIgnorableProperties(defaultPropertyIgnorals == null ? null : defaultPropertyIgnorals.findIgnoredForDeserialization());
                    JsonIncludeProperties.Value defaultPropertyInclusions = config.getDefaultPropertyInclusions(Map.class, beanDescription3.getClassInfo());
                    mapDeserializer2.setIncludableProperties(defaultPropertyInclusions == null ? null : defaultPropertyInclusions.getIncluded());
                    beanDescription2 = beanDescription3;
                    mapType2 = mapType3;
                    mapDeserializer = mapDeserializer2;
                }
            } else {
                mapType2 = mapType;
                mapDeserializer = enumMapDeserializer;
                beanDescription2 = beanDescription3;
            }
        } else {
            mapType2 = mapType;
            beanDescription2 = beanDescription;
            mapDeserializer = _findCustomMapDeserializer;
        }
        JsonDeserializer<?> jsonDeserializer2 = mapDeserializer == 1 ? 1 : 0;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            JsonDeserializer<?> jsonDeserializer3 = mapDeserializer;
            while (true) {
                jsonDeserializer2 = jsonDeserializer3;
                if (!it2.hasNext()) {
                    break;
                }
                jsonDeserializer3 = it2.next().modifyMapDeserializer(config, mapType2, beanDescription2, jsonDeserializer3);
            }
        }
        return jsonDeserializer2;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createMapLikeDeserializer(DeserializationContext deserializationContext, MapLikeType mapLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType keyType = mapLikeType.getKeyType();
        JavaType contentType = mapLikeType.getContentType();
        DeserializationConfig config = deserializationContext.getConfig();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        KeyDeserializer keyDeserializer = (KeyDeserializer) keyType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer == null) {
            typeDeserializer2 = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> _findCustomMapLikeDeserializer = _findCustomMapLikeDeserializer(mapLikeType, config, beanDescription, keyDeserializer, typeDeserializer2, jsonDeserializer);
        JsonDeserializer<?> jsonDeserializer2 = _findCustomMapLikeDeserializer;
        if (_findCustomMapLikeDeserializer != null) {
            jsonDeserializer2 = _findCustomMapLikeDeserializer;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
                while (true) {
                    jsonDeserializer2 = _findCustomMapLikeDeserializer;
                    if (!it2.hasNext()) {
                        break;
                    }
                    _findCustomMapLikeDeserializer = it2.next().modifyMapLikeDeserializer(config, mapLikeType, beanDescription, _findCustomMapLikeDeserializer);
                }
            }
        }
        return jsonDeserializer2;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createReferenceDeserializer(DeserializationContext deserializationContext, ReferenceType referenceType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType contentType = referenceType.getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer == null) {
            typeDeserializer2 = findTypeDeserializer(config, contentType);
        }
        JsonDeserializer<?> _findCustomReferenceDeserializer = _findCustomReferenceDeserializer(referenceType, config, beanDescription, typeDeserializer2, jsonDeserializer);
        if (_findCustomReferenceDeserializer == null && referenceType.isTypeOrSubTypeOf(AtomicReference.class)) {
            return new AtomicReferenceDeserializer(referenceType, referenceType.getRawClass() == AtomicReference.class ? null : findValueInstantiator(deserializationContext, beanDescription), typeDeserializer2, jsonDeserializer);
        }
        JsonDeserializer<?> jsonDeserializer2 = _findCustomReferenceDeserializer;
        if (_findCustomReferenceDeserializer != null) {
            jsonDeserializer2 = _findCustomReferenceDeserializer;
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
                JsonDeserializer<?> jsonDeserializer3 = _findCustomReferenceDeserializer;
                while (true) {
                    JsonDeserializer<?> jsonDeserializer4 = jsonDeserializer3;
                    jsonDeserializer2 = jsonDeserializer4;
                    if (!it2.hasNext()) {
                        break;
                    }
                    jsonDeserializer3 = it2.next().modifyReferenceDeserializer(config, referenceType, beanDescription, jsonDeserializer4);
                }
            }
        }
        return jsonDeserializer2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createTreeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        JsonDeserializer<?> _findCustomTreeNodeDeserializer = _findCustomTreeNodeDeserializer(rawClass, deserializationConfig, beanDescription);
        return _findCustomTreeNodeDeserializer != null ? _findCustomTreeNodeDeserializer : JsonNodeDeserializer.getDeserializer(rawClass);
    }

    public JsonDeserializer<Object> findContentDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findContentDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findContentDeserializer = annotationIntrospector.findContentDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.deserializerInstance(annotated, findContentDeserializer);
    }

    public JsonDeserializer<?> findDefaultDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType javaType2;
        JavaType javaType3;
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == CLASS_OBJECT || rawClass == CLASS_SERIALIZABLE) {
            DeserializationConfig config = deserializationContext.getConfig();
            if (this._factoryConfig.hasAbstractTypeResolvers()) {
                javaType2 = _findRemappedType(config, List.class);
                javaType3 = _findRemappedType(config, Map.class);
            } else {
                javaType2 = null;
                javaType3 = null;
            }
            return new UntypedObjectDeserializer(javaType2, javaType3);
        } else if (rawClass == CLASS_STRING || rawClass == CLASS_CHAR_SEQUENCE) {
            return StringDeserializer.instance;
        } else {
            Class<?> cls = CLASS_ITERABLE;
            if (rawClass == cls) {
                TypeFactory typeFactory = deserializationContext.getTypeFactory();
                JavaType[] findTypeParameters = typeFactory.findTypeParameters(javaType, cls);
                return createCollectionDeserializer(deserializationContext, typeFactory.constructCollectionType(Collection.class, (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0]), beanDescription);
            } else if (rawClass == CLASS_MAP_ENTRY) {
                JavaType containedTypeOrUnknown = javaType.containedTypeOrUnknown(0);
                JavaType containedTypeOrUnknown2 = javaType.containedTypeOrUnknown(1);
                TypeDeserializer typeDeserializer = (TypeDeserializer) containedTypeOrUnknown2.getTypeHandler();
                TypeDeserializer typeDeserializer2 = typeDeserializer;
                if (typeDeserializer == null) {
                    typeDeserializer2 = findTypeDeserializer(deserializationContext.getConfig(), containedTypeOrUnknown2);
                }
                return new MapEntryDeserializer(javaType, (KeyDeserializer) containedTypeOrUnknown.getValueHandler(), (JsonDeserializer) containedTypeOrUnknown2.getValueHandler(), typeDeserializer2);
            } else {
                String name = rawClass.getName();
                if (rawClass.isPrimitive() || name.startsWith("java.")) {
                    JsonDeserializer<?> find = NumberDeserializers.find(rawClass, name);
                    JsonDeserializer<?> jsonDeserializer = find;
                    if (find == null) {
                        jsonDeserializer = DateDeserializers.find(rawClass, name);
                    }
                    if (jsonDeserializer != null) {
                        return jsonDeserializer;
                    }
                }
                if (rawClass == TokenBuffer.class) {
                    return new TokenBufferDeserializer();
                }
                JsonDeserializer<?> findOptionalStdDeserializer = findOptionalStdDeserializer(deserializationContext, javaType, beanDescription);
                return findOptionalStdDeserializer != null ? findOptionalStdDeserializer : JdkDeserializers.find(rawClass, name);
            }
        }
    }

    public JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findDeserializer = annotationIntrospector.findDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.deserializerInstance(annotated, findDeserializer);
    }

    public KeyDeserializer findKeyDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findKeyDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findKeyDeserializer = annotationIntrospector.findKeyDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.keyDeserializerInstance(annotated, findKeyDeserializer);
    }

    protected JsonDeserializer<?> findOptionalStdDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findDeserializer(javaType, deserializationContext.getConfig(), beanDescription);
    }

    public TypeDeserializer findPropertyContentTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder<?> findPropertyContentTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyContentTypeResolver(deserializationConfig, annotatedMember, javaType);
        JavaType contentType = javaType.getContentType();
        return findPropertyContentTypeResolver == null ? findTypeDeserializer(deserializationConfig, contentType) : findPropertyContentTypeResolver.buildTypeDeserializer(deserializationConfig, contentType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, contentType));
    }

    public TypeDeserializer findPropertyTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder<?> findPropertyTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyTypeResolver(deserializationConfig, annotatedMember, javaType);
        if (findPropertyTypeResolver == null) {
            return findTypeDeserializer(deserializationConfig, javaType);
        }
        try {
            return findPropertyTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, javaType));
        } catch (IllegalArgumentException | IllegalStateException e) {
            InvalidDefinitionException from = InvalidDefinitionException.from((JsonParser) null, ClassUtil.exceptionMessage(e), javaType);
            from.initCause(e);
            throw from;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public TypeDeserializer findTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Collection<NamedType> collection;
        AnnotatedClass classInfo = deserializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder<?> findTypeResolver = deserializationConfig.getAnnotationIntrospector().findTypeResolver(deserializationConfig, classInfo, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = deserializationConfig.getDefaultTyper(javaType);
            if (findTypeResolver == null) {
                return null;
            }
            collection = null;
        } else {
            collection = deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, classInfo);
        }
        TypeResolverBuilder<?> typeResolverBuilder = findTypeResolver;
        if (findTypeResolver.getDefaultImpl() == null) {
            typeResolverBuilder = findTypeResolver;
            if (javaType.isAbstract()) {
                JavaType mapAbstractType = mapAbstractType(deserializationConfig, javaType);
                typeResolverBuilder = findTypeResolver;
                if (mapAbstractType != null) {
                    typeResolverBuilder = findTypeResolver;
                    if (!mapAbstractType.hasRawClass(javaType.getRawClass())) {
                        typeResolverBuilder = findTypeResolver.defaultImpl(mapAbstractType.getRawClass());
                    }
                }
            }
        }
        try {
            return typeResolverBuilder.buildTypeDeserializer(deserializationConfig, javaType, collection);
        } catch (IllegalArgumentException | IllegalStateException e) {
            InvalidDefinitionException from = InvalidDefinitionException.from((JsonParser) null, ClassUtil.exceptionMessage(e), javaType);
            from.initCause(e);
            throw from;
        }
    }

    public ValueInstantiator findValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotatedClass classInfo = beanDescription.getClassInfo();
        Object findValueInstantiator = deserializationContext.getAnnotationIntrospector().findValueInstantiator(classInfo);
        ValueInstantiator _valueInstantiatorInstance = findValueInstantiator != null ? _valueInstantiatorInstance(config, classInfo, findValueInstantiator) : null;
        ValueInstantiator valueInstantiator = _valueInstantiatorInstance;
        if (_valueInstantiatorInstance == null) {
            ValueInstantiator findStdValueInstantiator = JDKValueInstantiators.findStdValueInstantiator(config, beanDescription.getBeanClass());
            valueInstantiator = findStdValueInstantiator;
            if (findStdValueInstantiator == null) {
                valueInstantiator = _constructDefaultValueInstantiator(deserializationContext, beanDescription);
            }
        }
        ValueInstantiator valueInstantiator2 = valueInstantiator;
        if (this._factoryConfig.hasValueInstantiators()) {
            Iterator<ValueInstantiators> it2 = this._factoryConfig.valueInstantiators().iterator();
            while (true) {
                valueInstantiator2 = valueInstantiator;
                if (!it2.hasNext()) {
                    break;
                }
                ValueInstantiators next = it2.next();
                ValueInstantiator findValueInstantiator2 = next.findValueInstantiator(config, beanDescription, valueInstantiator);
                valueInstantiator = findValueInstantiator2;
                if (findValueInstantiator2 == null) {
                    deserializationContext.reportBadTypeDefinition(beanDescription, "Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator", next.getClass().getName());
                    valueInstantiator = findValueInstantiator2;
                }
            }
        }
        ValueInstantiator valueInstantiator3 = valueInstantiator2;
        if (valueInstantiator2 != null) {
            valueInstantiator3 = valueInstantiator2.createContextual(deserializationContext, beanDescription);
        }
        return valueInstantiator3;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JavaType mapAbstractType(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        JavaType _mapAbstractType2;
        while (true) {
            _mapAbstractType2 = _mapAbstractType2(deserializationConfig, javaType);
            if (_mapAbstractType2 == null) {
                return javaType;
            }
            Class<?> rawClass = javaType.getRawClass();
            Class<?> rawClass2 = _mapAbstractType2.getRawClass();
            if (rawClass == rawClass2 || !rawClass.isAssignableFrom(rawClass2)) {
                break;
            }
            javaType = _mapAbstractType2;
        }
        throw new IllegalArgumentException("Invalid abstract type resolution from " + javaType + " to " + _mapAbstractType2 + ": latter is not a subtype of former");
    }

    public JavaType resolveMemberAndTypeAnnotations(DeserializationContext deserializationContext, AnnotatedMember annotatedMember, JavaType javaType) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            return javaType;
        }
        MapLikeType mapLikeType = javaType;
        if (javaType.isMapLikeType()) {
            mapLikeType = javaType;
            if (javaType.getKeyType() != null) {
                KeyDeserializer keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotatedMember, annotationIntrospector.findKeyDeserializer(annotatedMember));
                mapLikeType = javaType;
                if (keyDeserializerInstance != null) {
                    mapLikeType = ((MapLikeType) javaType).withKeyValueHandler(keyDeserializerInstance);
                    mapLikeType.getKeyType();
                }
            }
        }
        JavaType javaType2 = mapLikeType;
        if (mapLikeType.hasContentType()) {
            JsonDeserializer<Object> deserializerInstance = deserializationContext.deserializerInstance(annotatedMember, annotationIntrospector.findContentDeserializer(annotatedMember));
            JavaType javaType3 = mapLikeType;
            if (deserializerInstance != null) {
                javaType3 = mapLikeType.withContentValueHandler(deserializerInstance);
            }
            TypeDeserializer findPropertyContentTypeDeserializer = findPropertyContentTypeDeserializer(deserializationContext.getConfig(), javaType3, annotatedMember);
            javaType2 = javaType3;
            if (findPropertyContentTypeDeserializer != null) {
                javaType2 = javaType3.withContentTypeHandler(findPropertyContentTypeDeserializer);
            }
        }
        TypeDeserializer findPropertyTypeDeserializer = findPropertyTypeDeserializer(deserializationContext.getConfig(), javaType2, annotatedMember);
        JavaType javaType4 = javaType2;
        if (findPropertyTypeDeserializer != null) {
            javaType4 = javaType2.withTypeHandler(findPropertyTypeDeserializer);
        }
        return annotationIntrospector.refineDeserializationType(deserializationContext.getConfig(), annotatedMember, javaType4);
    }
}
