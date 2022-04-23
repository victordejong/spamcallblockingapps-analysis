package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/POJOPropertiesCollector.class */
public class POJOPropertiesCollector {
    public final AnnotationIntrospector _annotationIntrospector;
    public LinkedList<AnnotatedMember> _anyGetters;
    public LinkedList<AnnotatedMethod> _anySetters;
    public final AnnotatedClass _classDef;
    public boolean _collected;
    public final MapperConfig<?> _config;
    public LinkedList<POJOPropertyBuilder> _creatorProperties;
    public final boolean _forSerialization;
    public HashSet<String> _ignoredPropertyNames;
    public LinkedHashMap<Object, AnnotatedMember> _injectables;
    public LinkedList<AnnotatedMethod> _jsonValueGetters;
    public final String _mutatorPrefix;
    public LinkedHashMap<String, POJOPropertyBuilder> _properties;
    public final boolean _stdBeanNaming;
    public final JavaType _type;
    public final VisibilityChecker<?> _visibilityChecker;

    public POJOPropertiesCollector(MapperConfig<?> mapperConfig, boolean z, JavaType javaType, AnnotatedClass annotatedClass, String str) {
        this._config = mapperConfig;
        this._stdBeanNaming = mapperConfig.isEnabled(MapperFeature.USE_STD_BEAN_NAMING);
        this._forSerialization = z;
        this._type = javaType;
        this._classDef = annotatedClass;
        this._mutatorPrefix = str == null ? "set" : str;
        this._annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? this._config.getAnnotationIntrospector() : null;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            this._visibilityChecker = this._config.getDefaultVisibilityChecker();
        } else {
            this._visibilityChecker = annotationIntrospector.findAutoDetectVisibility(annotatedClass, this._config.getDefaultVisibilityChecker());
        }
    }

    public void _addCreatorParam(Map<String, POJOPropertyBuilder> map, AnnotatedParameter annotatedParameter) {
        String findImplicitPropertyName = this._annotationIntrospector.findImplicitPropertyName(annotatedParameter);
        String str = findImplicitPropertyName;
        if (findImplicitPropertyName == null) {
            str = "";
        }
        PropertyName findNameForDeserialization = this._annotationIntrospector.findNameForDeserialization(annotatedParameter);
        boolean z = findNameForDeserialization != null && !findNameForDeserialization.isEmpty();
        if (!z) {
            if (!str.isEmpty() && this._annotationIntrospector.hasCreatorAnnotation(annotatedParameter.getOwner())) {
                findNameForDeserialization = PropertyName.construct(str);
            } else {
                return;
            }
        }
        POJOPropertyBuilder _property = (!z || !str.isEmpty()) ? _property(map, str) : _property(map, findNameForDeserialization);
        _property.addCtor(annotatedParameter, findNameForDeserialization, z, true, false);
        this._creatorProperties.add(_property);
    }

    public void _addCreators(Map<String, POJOPropertyBuilder> map) {
        if (this._annotationIntrospector != null) {
            Iterator<AnnotatedConstructor> it = this._classDef.getConstructors().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AnnotatedConstructor next = it.next();
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList<>();
                }
                int parameterCount = next.getParameterCount();
                for (int i = 0; i < parameterCount; i++) {
                    _addCreatorParam(map, next.getParameter(i));
                }
            }
            for (AnnotatedMethod annotatedMethod : this._classDef.getStaticMethods()) {
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList<>();
                }
                int parameterCount2 = annotatedMethod.getParameterCount();
                for (int i2 = 0; i2 < parameterCount2; i2++) {
                    _addCreatorParam(map, annotatedMethod.getParameter(i2));
                }
            }
        }
    }

    public void _addFields(Map<String, POJOPropertyBuilder> map) {
        boolean z;
        boolean z2;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        boolean z3 = !this._forSerialization && !this._config.isEnabled(MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS);
        boolean isEnabled = this._config.isEnabled(MapperFeature.PROPAGATE_TRANSIENT_MARKER);
        for (AnnotatedField annotatedField : this._classDef.fields()) {
            PropertyName propertyName = null;
            String findImplicitPropertyName = annotationIntrospector == null ? null : annotationIntrospector.findImplicitPropertyName(annotatedField);
            String str = findImplicitPropertyName;
            if (findImplicitPropertyName == null) {
                str = annotatedField.getName();
            }
            if (annotationIntrospector != null) {
                propertyName = this._forSerialization ? annotationIntrospector.findNameForSerialization(annotatedField) : annotationIntrospector.findNameForDeserialization(annotatedField);
            }
            boolean z4 = propertyName != null;
            if (!z4 || !propertyName.isEmpty()) {
                z = z4;
            } else {
                propertyName = _propNameFromSimple(str);
                z = false;
            }
            boolean z5 = propertyName != null;
            boolean z6 = z5;
            if (!z5) {
                z6 = this._visibilityChecker.isFieldVisible(annotatedField);
            }
            boolean z7 = annotationIntrospector != null && annotationIntrospector.hasIgnoreMarker(annotatedField);
            if (!annotatedField.isTransient()) {
                z2 = z7;
            } else if (isEnabled) {
                z6 = false;
                z2 = true;
            } else {
                z2 = z7;
                z6 = false;
            }
            if (!z3 || propertyName != null || z2 || !Modifier.isFinal(annotatedField.getModifiers())) {
                _property(map, str).addField(annotatedField, propertyName, z, z6, z2);
            }
        }
    }

    public void _addGetterMethod(Map<String, POJOPropertyBuilder> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        boolean z;
        String str;
        if (annotatedMethod.hasReturnType()) {
            if (annotationIntrospector != null) {
                if (annotationIntrospector.hasAnyGetterAnnotation(annotatedMethod)) {
                    if (this._anyGetters == null) {
                        this._anyGetters = new LinkedList<>();
                    }
                    this._anyGetters.add(annotatedMethod);
                    return;
                } else if (annotationIntrospector.hasAsValueAnnotation(annotatedMethod)) {
                    if (this._jsonValueGetters == null) {
                        this._jsonValueGetters = new LinkedList<>();
                    }
                    this._jsonValueGetters.add(annotatedMethod);
                    return;
                }
            }
            String str2 = null;
            String str3 = null;
            PropertyName findNameForSerialization = annotationIntrospector == null ? null : annotationIntrospector.findNameForSerialization(annotatedMethod);
            boolean z2 = findNameForSerialization != null;
            if (!z2) {
                if (annotationIntrospector != null) {
                    str3 = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                }
                str = str3;
                if (str3 == null) {
                    str = BeanUtil.okNameForRegularGetter(annotatedMethod, annotatedMethod.getName(), this._stdBeanNaming);
                }
                if (str == null) {
                    str = BeanUtil.okNameForIsGetter(annotatedMethod, annotatedMethod.getName(), this._stdBeanNaming);
                    if (str != null) {
                        z = this._visibilityChecker.isIsGetterVisible(annotatedMethod);
                    } else {
                        return;
                    }
                } else {
                    z = this._visibilityChecker.isGetterVisible(annotatedMethod);
                }
            } else {
                if (annotationIntrospector != null) {
                    str2 = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                }
                String str4 = str2;
                if (str2 == null) {
                    str4 = BeanUtil.okNameForGetter(annotatedMethod, this._stdBeanNaming);
                }
                str = str4;
                if (str4 == null) {
                    str = annotatedMethod.getName();
                }
                findNameForSerialization = findNameForSerialization;
                if (findNameForSerialization.isEmpty()) {
                    findNameForSerialization = _propNameFromSimple(str);
                    z2 = false;
                }
                z = true;
            }
            _property(map, str).addGetter(annotatedMethod, findNameForSerialization, z2, z, annotationIntrospector == null ? false : annotationIntrospector.hasIgnoreMarker(annotatedMethod));
        }
    }

    public void _addInjectables(Map<String, POJOPropertyBuilder> map) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector != null) {
            for (AnnotatedMember annotatedMember : this._classDef.fields()) {
                _doAddInjectable(annotationIntrospector.findInjectableValueId(annotatedMember), annotatedMember);
            }
            for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
                if (annotatedMethod.getParameterCount() == 1) {
                    _doAddInjectable(annotationIntrospector.findInjectableValueId(annotatedMethod), annotatedMethod);
                }
            }
        }
    }

    public void _addMethods(Map<String, POJOPropertyBuilder> map) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
            int parameterCount = annotatedMethod.getParameterCount();
            if (parameterCount == 0) {
                _addGetterMethod(map, annotatedMethod, annotationIntrospector);
            } else if (parameterCount == 1) {
                _addSetterMethod(map, annotatedMethod, annotationIntrospector);
            } else if (parameterCount == 2 && annotationIntrospector != null && annotationIntrospector.hasAnySetterAnnotation(annotatedMethod)) {
                if (this._anySetters == null) {
                    this._anySetters = new LinkedList<>();
                }
                this._anySetters.add(annotatedMethod);
            }
        }
    }

    public void _addSetterMethod(Map<String, POJOPropertyBuilder> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        boolean z;
        String str;
        String str2 = null;
        String str3 = null;
        PropertyName findNameForDeserialization = annotationIntrospector == null ? null : annotationIntrospector.findNameForDeserialization(annotatedMethod);
        boolean z2 = findNameForDeserialization != null;
        if (!z2) {
            if (annotationIntrospector != null) {
                str3 = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
            }
            str = str3;
            if (str3 == null) {
                str = BeanUtil.okNameForMutator(annotatedMethod, this._mutatorPrefix, this._stdBeanNaming);
            }
            if (str != null) {
                z = this._visibilityChecker.isSetterVisible(annotatedMethod);
            } else {
                return;
            }
        } else {
            if (annotationIntrospector != null) {
                str2 = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
            }
            String str4 = str2;
            if (str2 == null) {
                str4 = BeanUtil.okNameForMutator(annotatedMethod, this._mutatorPrefix, this._stdBeanNaming);
            }
            str = str4;
            if (str4 == null) {
                str = annotatedMethod.getName();
            }
            findNameForDeserialization = findNameForDeserialization;
            if (findNameForDeserialization.isEmpty()) {
                findNameForDeserialization = _propNameFromSimple(str);
                z2 = false;
            }
            z = true;
        }
        _property(map, str).addSetter(annotatedMethod, findNameForDeserialization, z2, z, annotationIntrospector == null ? false : annotationIntrospector.hasIgnoreMarker(annotatedMethod));
    }

    public final void _collectIgnorals(String str) {
        if (!this._forSerialization) {
            if (this._ignoredPropertyNames == null) {
                this._ignoredPropertyNames = new HashSet<>();
            }
            this._ignoredPropertyNames.add(str);
        }
    }

    public void _doAddInjectable(Object obj, AnnotatedMember annotatedMember) {
        if (obj != null) {
            if (this._injectables == null) {
                this._injectables = new LinkedHashMap<>();
            }
            if (this._injectables.put(obj, annotatedMember) != null) {
                String name = obj.getClass().getName();
                throw new IllegalArgumentException("Duplicate injectable value with id '" + String.valueOf(obj) + "' (of type " + name + ")");
            }
        }
    }

    public final PropertyNamingStrategy _findNamingStrategy() {
        PropertyNamingStrategy namingStrategyInstance;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        Object findNamingStrategy = annotationIntrospector == null ? null : annotationIntrospector.findNamingStrategy(this._classDef);
        if (findNamingStrategy == null) {
            return this._config.getPropertyNamingStrategy();
        }
        if (findNamingStrategy instanceof PropertyNamingStrategy) {
            return (PropertyNamingStrategy) findNamingStrategy;
        }
        if (findNamingStrategy instanceof Class) {
            Class<?> cls = (Class) findNamingStrategy;
            if (cls == PropertyNamingStrategy.class) {
                return null;
            }
            if (PropertyNamingStrategy.class.isAssignableFrom(cls)) {
                HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                return (handlerInstantiator == null || (namingStrategyInstance = handlerInstantiator.namingStrategyInstance(this._config, this._classDef, cls)) == null) ? (PropertyNamingStrategy) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers()) : namingStrategyInstance;
            }
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<PropertyNamingStrategy>");
        }
        throw new IllegalStateException("AnnotationIntrospector returned PropertyNamingStrategy definition of type " + findNamingStrategy.getClass().getName() + "; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead");
    }

    public final PropertyName _propNameFromSimple(String str) {
        return PropertyName.construct(str, null);
    }

    public POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> map, PropertyName propertyName) {
        return _property(map, propertyName.getSimpleName());
    }

    public POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> map, String str) {
        POJOPropertyBuilder pOJOPropertyBuilder = map.get(str);
        POJOPropertyBuilder pOJOPropertyBuilder2 = pOJOPropertyBuilder;
        if (pOJOPropertyBuilder == null) {
            pOJOPropertyBuilder2 = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._forSerialization, PropertyName.construct(str));
            map.put(str, pOJOPropertyBuilder2);
        }
        return pOJOPropertyBuilder2;
    }

    public void _removeUnwantedAccessor(Map<String, POJOPropertyBuilder> map) {
        boolean isEnabled = this._config.isEnabled(MapperFeature.INFER_PROPERTY_MUTATORS);
        for (POJOPropertyBuilder pOJOPropertyBuilder : map.values()) {
            pOJOPropertyBuilder.removeNonVisible(isEnabled);
        }
    }

    public void _removeUnwantedProperties(Map<String, POJOPropertyBuilder> map) {
        Iterator<POJOPropertyBuilder> it = map.values().iterator();
        while (it.hasNext()) {
            POJOPropertyBuilder next = it.next();
            if (!next.anyVisible()) {
                it.remove();
            } else if (next.anyIgnorals()) {
                if (!next.isExplicitlyIncluded()) {
                    it.remove();
                    _collectIgnorals(next.getName());
                } else {
                    next.removeIgnored();
                    if (!this._forSerialization && !next.couldDeserialize()) {
                        _collectIgnorals(next.getName());
                    }
                }
            }
        }
    }

    public void _renameProperties(Map<String, POJOPropertyBuilder> map) {
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it = map.entrySet().iterator();
        LinkedList linkedList = null;
        while (it.hasNext()) {
            POJOPropertyBuilder value = it.next().getValue();
            Set<PropertyName> findExplicitNames = value.findExplicitNames();
            if (!findExplicitNames.isEmpty()) {
                it.remove();
                LinkedList linkedList2 = linkedList;
                if (linkedList == null) {
                    linkedList2 = new LinkedList();
                }
                if (findExplicitNames.size() == 1) {
                    linkedList2.add(value.withName(findExplicitNames.iterator().next()));
                    linkedList = linkedList2;
                } else {
                    linkedList2.addAll(value.explode(findExplicitNames));
                    linkedList = linkedList2;
                }
            }
        }
        if (linkedList != null) {
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) it2.next();
                String name = pOJOPropertyBuilder.getName();
                POJOPropertyBuilder pOJOPropertyBuilder2 = map.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    map.put(name, pOJOPropertyBuilder);
                } else {
                    pOJOPropertyBuilder2.addAll(pOJOPropertyBuilder);
                }
                _updateCreatorProperty(pOJOPropertyBuilder, this._creatorProperties);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0052, code lost:
        if (r5._config.isEnabled(com.fasterxml.jackson.databind.MapperFeature.ALLOW_EXPLICIT_PROPERTY_RENAMING) != false) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void _renameUsing(java.util.Map<java.lang.String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> r6, com.fasterxml.jackson.databind.PropertyNamingStrategy r7) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector._renameUsing(java.util.Map, com.fasterxml.jackson.databind.PropertyNamingStrategy):void");
    }

    public void _renameWithWrappers(Map<String, POJOPropertyBuilder> map) {
        PropertyName findWrapperName;
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it = map.entrySet().iterator();
        LinkedList linkedList = null;
        while (it.hasNext()) {
            POJOPropertyBuilder value = it.next().getValue();
            AnnotatedMember primaryMember = value.getPrimaryMember();
            if (primaryMember != null && (findWrapperName = this._annotationIntrospector.findWrapperName(primaryMember)) != null && findWrapperName.hasSimpleName() && !findWrapperName.equals(value.getFullName())) {
                LinkedList linkedList2 = linkedList;
                if (linkedList == null) {
                    linkedList2 = new LinkedList();
                }
                linkedList2.add(value.withName(findWrapperName));
                it.remove();
                linkedList = linkedList2;
            }
        }
        if (linkedList != null) {
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) it2.next();
                String name = pOJOPropertyBuilder.getName();
                POJOPropertyBuilder pOJOPropertyBuilder2 = map.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    map.put(name, pOJOPropertyBuilder);
                } else {
                    pOJOPropertyBuilder2.addAll(pOJOPropertyBuilder);
                }
            }
        }
    }

    public void _sortProperties(Map<String, POJOPropertyBuilder> map) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        String[] strArr = null;
        Boolean findSerializationSortAlphabetically = annotationIntrospector == null ? null : annotationIntrospector.findSerializationSortAlphabetically(this._classDef);
        boolean shouldSortPropertiesAlphabetically = findSerializationSortAlphabetically == null ? this._config.shouldSortPropertiesAlphabetically() : findSerializationSortAlphabetically.booleanValue();
        if (annotationIntrospector != null) {
            strArr = annotationIntrospector.findSerializationPropertyOrder(this._classDef);
        }
        if (!(!shouldSortPropertiesAlphabetically && this._creatorProperties == null && strArr == null)) {
            int size = map.size();
            Map<? extends Object, ? extends Object> treeMap = shouldSortPropertiesAlphabetically ? new TreeMap<>() : new LinkedHashMap<>(size + size);
            for (POJOPropertyBuilder pOJOPropertyBuilder : map.values()) {
                treeMap.put(pOJOPropertyBuilder.getName(), pOJOPropertyBuilder);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(size + size);
            if (strArr != null) {
                for (String str : strArr) {
                    POJOPropertyBuilder pOJOPropertyBuilder2 = (POJOPropertyBuilder) treeMap.get(str);
                    String str2 = str;
                    POJOPropertyBuilder pOJOPropertyBuilder3 = pOJOPropertyBuilder2;
                    if (pOJOPropertyBuilder2 == null) {
                        Iterator<POJOPropertyBuilder> it = map.values().iterator();
                        while (true) {
                            str2 = str;
                            pOJOPropertyBuilder3 = pOJOPropertyBuilder2;
                            if (!it.hasNext()) {
                                break;
                            }
                            pOJOPropertyBuilder3 = it.next();
                            if (str.equals(pOJOPropertyBuilder3.getInternalName())) {
                                str2 = pOJOPropertyBuilder3.getName();
                                break;
                            }
                        }
                    }
                    if (pOJOPropertyBuilder3 != null) {
                        linkedHashMap.put(str2, pOJOPropertyBuilder3);
                    }
                }
            }
            Collection<POJOPropertyBuilder> collection = this._creatorProperties;
            if (collection != null) {
                if (shouldSortPropertiesAlphabetically) {
                    TreeMap treeMap2 = new TreeMap();
                    Iterator<POJOPropertyBuilder> it2 = this._creatorProperties.iterator();
                    while (it2.hasNext()) {
                        POJOPropertyBuilder next = it2.next();
                        treeMap2.put(next.getName(), next);
                    }
                    collection = treeMap2.values();
                }
                for (POJOPropertyBuilder pOJOPropertyBuilder4 : collection) {
                    linkedHashMap.put(pOJOPropertyBuilder4.getName(), pOJOPropertyBuilder4);
                }
            }
            linkedHashMap.putAll(treeMap);
            map.clear();
            map.putAll(linkedHashMap);
        }
    }

    public void _updateCreatorProperty(POJOPropertyBuilder pOJOPropertyBuilder, List<POJOPropertyBuilder> list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).getInternalName().equals(pOJOPropertyBuilder.getInternalName())) {
                    list.set(i, pOJOPropertyBuilder);
                    return;
                }
            }
        }
    }

    public void collectAll() {
        LinkedHashMap<String, POJOPropertyBuilder> linkedHashMap = new LinkedHashMap<>();
        _addFields(linkedHashMap);
        _addMethods(linkedHashMap);
        _addCreators(linkedHashMap);
        _addInjectables(linkedHashMap);
        _removeUnwantedProperties(linkedHashMap);
        for (POJOPropertyBuilder pOJOPropertyBuilder : linkedHashMap.values()) {
            pOJOPropertyBuilder.mergeAnnotations(this._forSerialization);
        }
        _removeUnwantedAccessor(linkedHashMap);
        _renameProperties(linkedHashMap);
        PropertyNamingStrategy _findNamingStrategy = _findNamingStrategy();
        if (_findNamingStrategy != null) {
            _renameUsing(linkedHashMap, _findNamingStrategy);
        }
        for (POJOPropertyBuilder pOJOPropertyBuilder2 : linkedHashMap.values()) {
            pOJOPropertyBuilder2.trimByVisibility();
        }
        if (this._config.isEnabled(MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME)) {
            _renameWithWrappers(linkedHashMap);
        }
        _sortProperties(linkedHashMap);
        this._properties = linkedHashMap;
        this._collected = true;
    }

    public AnnotatedMember getAnyGetter() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._anyGetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() <= 1) {
            return this._anyGetters.getFirst();
        }
        reportProblem("Multiple 'any-getters' defined (" + this._anyGetters.get(0) + " vs " + this._anyGetters.get(1) + ")");
        throw null;
    }

    public AnnotatedMethod getAnySetterMethod() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMethod> linkedList = this._anySetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() <= 1) {
            return this._anySetters.getFirst();
        }
        reportProblem("Multiple 'any-setters' defined (" + this._anySetters.get(0) + " vs " + this._anySetters.get(1) + ")");
        throw null;
    }

    public AnnotatedClass getClassDef() {
        return this._classDef;
    }

    public MapperConfig<?> getConfig() {
        return this._config;
    }

    public Set<String> getIgnoredPropertyNames() {
        return this._ignoredPropertyNames;
    }

    public Map<Object, AnnotatedMember> getInjectables() {
        if (!this._collected) {
            collectAll();
        }
        return this._injectables;
    }

    public AnnotatedMethod getJsonValueMethod() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMethod> linkedList = this._jsonValueGetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() <= 1) {
            return this._jsonValueGetters.get(0);
        }
        reportProblem("Multiple value properties defined (" + this._jsonValueGetters.get(0) + " vs " + this._jsonValueGetters.get(1) + ")");
        throw null;
    }

    public ObjectIdInfo getObjectIdInfo() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return null;
        }
        ObjectIdInfo findObjectIdInfo = annotationIntrospector.findObjectIdInfo(this._classDef);
        ObjectIdInfo objectIdInfo = findObjectIdInfo;
        if (findObjectIdInfo != null) {
            objectIdInfo = this._annotationIntrospector.findObjectReferenceInfo(this._classDef, findObjectIdInfo);
        }
        return objectIdInfo;
    }

    public List<BeanPropertyDefinition> getProperties() {
        return new ArrayList(getPropertyMap().values());
    }

    public Map<String, POJOPropertyBuilder> getPropertyMap() {
        if (!this._collected) {
            collectAll();
        }
        return this._properties;
    }

    public JavaType getType() {
        return this._type;
    }

    public void reportProblem(String str) {
        throw new IllegalArgumentException("Problem with definition of " + this._classDef + ": " + str);
    }
}
