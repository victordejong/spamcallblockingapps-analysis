package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/POJOPropertiesCollector.class */
public class POJOPropertiesCollector {
    protected final AccessorNamingStrategy _accessorNaming;
    protected final AnnotationIntrospector _annotationIntrospector;
    protected LinkedList<AnnotatedMember> _anyGetterField;
    protected LinkedList<AnnotatedMember> _anyGetters;
    protected LinkedList<AnnotatedMember> _anySetterField;
    protected LinkedList<AnnotatedMethod> _anySetters;
    protected final AnnotatedClass _classDef;
    protected boolean _collected;
    protected final MapperConfig<?> _config;
    protected LinkedList<POJOPropertyBuilder> _creatorProperties;
    protected Map<PropertyName, PropertyName> _fieldRenameMappings;
    protected final boolean _forSerialization;
    protected HashSet<String> _ignoredPropertyNames;
    protected LinkedHashMap<Object, AnnotatedMember> _injectables;
    protected LinkedList<AnnotatedMember> _jsonKeyAccessors;
    protected LinkedList<AnnotatedMember> _jsonValueAccessors;
    @Deprecated
    protected String _mutatorPrefix;
    protected LinkedHashMap<String, POJOPropertyBuilder> _properties;
    @Deprecated
    protected final boolean _stdBeanNaming;
    protected final JavaType _type;
    protected final boolean _useAnnotations;
    protected final VisibilityChecker<?> _visibilityChecker;

    /* JADX INFO: Access modifiers changed from: protected */
    public POJOPropertiesCollector(MapperConfig<?> mapperConfig, boolean z, JavaType javaType, AnnotatedClass annotatedClass, AccessorNamingStrategy accessorNamingStrategy) {
        this._mutatorPrefix = "set";
        this._config = mapperConfig;
        this._forSerialization = z;
        this._type = javaType;
        this._classDef = annotatedClass;
        if (mapperConfig.isAnnotationProcessingEnabled()) {
            this._useAnnotations = true;
            this._annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        } else {
            this._useAnnotations = false;
            this._annotationIntrospector = AnnotationIntrospector.nopInstance();
        }
        this._visibilityChecker = mapperConfig.getDefaultVisibilityChecker(javaType.getRawClass(), annotatedClass);
        this._accessorNaming = accessorNamingStrategy;
        this._stdBeanNaming = mapperConfig.isEnabled(MapperFeature.USE_STD_BEAN_NAMING);
    }

    @Deprecated
    protected POJOPropertiesCollector(MapperConfig<?> mapperConfig, boolean z, JavaType javaType, AnnotatedClass annotatedClass, String str) {
        this(mapperConfig, z, javaType, annotatedClass, _accessorNaming(mapperConfig, annotatedClass, str));
        this._mutatorPrefix = str;
    }

    private static AccessorNamingStrategy _accessorNaming(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, String str) {
        String str2 = str;
        if (str == null) {
            str2 = "set";
        }
        return new DefaultAccessorNamingStrategy.Provider().withSetterPrefix(str2).forPOJO(mapperConfig, annotatedClass);
    }

    private boolean _anyIndexed(Collection<POJOPropertyBuilder> collection) {
        for (POJOPropertyBuilder pOJOPropertyBuilder : collection) {
            if (pOJOPropertyBuilder.getMetadata().hasIndex()) {
                return true;
            }
        }
        return false;
    }

    private String _checkRenameByField(String str) {
        Map<PropertyName, PropertyName> map = this._fieldRenameMappings;
        String str2 = str;
        if (map != null) {
            PropertyName propertyName = map.get(_propNameFromSimple(str));
            str2 = str;
            if (propertyName != null) {
                str2 = propertyName.getSimpleName();
            }
        }
        return str2;
    }

    private PropertyNamingStrategy _findNamingStrategy() {
        PropertyNamingStrategy namingStrategyInstance;
        Object findNamingStrategy = this._annotationIntrospector.findNamingStrategy(this._classDef);
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

    private PropertyName _propNameFromSimple(String str) {
        return PropertyName.construct(str, null);
    }

    protected void _addCreatorParam(Map<String, POJOPropertyBuilder> map, AnnotatedParameter annotatedParameter) {
        JsonCreator.Mode findCreatorAnnotation;
        String findImplicitPropertyName = this._annotationIntrospector.findImplicitPropertyName(annotatedParameter);
        String str = findImplicitPropertyName;
        if (findImplicitPropertyName == null) {
            str = "";
        }
        PropertyName findNameForDeserialization = this._annotationIntrospector.findNameForDeserialization(annotatedParameter);
        boolean z = findNameForDeserialization != null && !findNameForDeserialization.isEmpty();
        if (!z) {
            if (!str.isEmpty() && (findCreatorAnnotation = this._annotationIntrospector.findCreatorAnnotation(this._config, annotatedParameter.getOwner())) != null && findCreatorAnnotation != JsonCreator.Mode.DISABLED) {
                findNameForDeserialization = PropertyName.construct(str);
            } else {
                return;
            }
        }
        String _checkRenameByField = _checkRenameByField(str);
        POJOPropertyBuilder _property = (!z || !_checkRenameByField.isEmpty()) ? _property(map, _checkRenameByField) : _property(map, findNameForDeserialization);
        _property.addCtor(annotatedParameter, findNameForDeserialization, z, true, false);
        this._creatorProperties.add(_property);
    }

    protected void _addCreators(Map<String, POJOPropertyBuilder> map) {
        if (this._useAnnotations) {
            Iterator<AnnotatedConstructor> it2 = this._classDef.getConstructors().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                AnnotatedConstructor next = it2.next();
                if (this._creatorProperties == null) {
                    this._creatorProperties = new LinkedList<>();
                }
                int parameterCount = next.getParameterCount();
                for (int i = 0; i < parameterCount; i++) {
                    _addCreatorParam(map, next.getParameter(i));
                }
            }
            for (AnnotatedMethod annotatedMethod : this._classDef.getFactoryMethods()) {
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

    protected void _addFields(Map<String, POJOPropertyBuilder> map) {
        boolean z;
        boolean z2;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        boolean z3 = !this._forSerialization && !this._config.isEnabled(MapperFeature.ALLOW_FINAL_FIELDS_AS_MUTATORS);
        boolean isEnabled = this._config.isEnabled(MapperFeature.PROPAGATE_TRANSIENT_MARKER);
        for (AnnotatedField annotatedField : this._classDef.fields()) {
            if (Boolean.TRUE.equals(annotationIntrospector.hasAsKey(this._config, annotatedField))) {
                if (this._jsonKeyAccessors == null) {
                    this._jsonKeyAccessors = new LinkedList<>();
                }
                this._jsonKeyAccessors.add(annotatedField);
            }
            if (Boolean.TRUE.equals(annotationIntrospector.hasAsValue(annotatedField))) {
                if (this._jsonValueAccessors == null) {
                    this._jsonValueAccessors = new LinkedList<>();
                }
                this._jsonValueAccessors.add(annotatedField);
            } else {
                boolean equals = Boolean.TRUE.equals(annotationIntrospector.hasAnyGetter(annotatedField));
                boolean equals2 = Boolean.TRUE.equals(annotationIntrospector.hasAnySetter(annotatedField));
                if (equals || equals2) {
                    if (equals) {
                        if (this._anyGetterField == null) {
                            this._anyGetterField = new LinkedList<>();
                        }
                        this._anyGetterField.add(annotatedField);
                    }
                    if (equals2) {
                        if (this._anySetterField == null) {
                            this._anySetterField = new LinkedList<>();
                        }
                        this._anySetterField.add(annotatedField);
                    }
                } else {
                    String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedField);
                    String str = findImplicitPropertyName;
                    if (findImplicitPropertyName == null) {
                        str = annotatedField.getName();
                    }
                    String modifyFieldName = this._accessorNaming.modifyFieldName(annotatedField, str);
                    if (modifyFieldName != null) {
                        PropertyName _propNameFromSimple = _propNameFromSimple(modifyFieldName);
                        PropertyName findRenameByField = annotationIntrospector.findRenameByField(this._config, annotatedField, _propNameFromSimple);
                        if (findRenameByField != null && !findRenameByField.equals(_propNameFromSimple)) {
                            if (this._fieldRenameMappings == null) {
                                this._fieldRenameMappings = new HashMap();
                            }
                            this._fieldRenameMappings.put(findRenameByField, _propNameFromSimple);
                        }
                        PropertyName findNameForSerialization = this._forSerialization ? annotationIntrospector.findNameForSerialization(annotatedField) : annotationIntrospector.findNameForDeserialization(annotatedField);
                        boolean z4 = findNameForSerialization != null;
                        if (!z4 || !findNameForSerialization.isEmpty()) {
                            z = z4;
                        } else {
                            findNameForSerialization = _propNameFromSimple(modifyFieldName);
                            z = false;
                        }
                        boolean z5 = findNameForSerialization != null;
                        boolean z6 = z5;
                        if (!z5) {
                            z6 = this._visibilityChecker.isFieldVisible(annotatedField);
                        }
                        boolean hasIgnoreMarker = annotationIntrospector.hasIgnoreMarker(annotatedField);
                        if (!annotatedField.isTransient() || z4) {
                            z2 = hasIgnoreMarker;
                        } else if (isEnabled) {
                            z6 = false;
                            z2 = true;
                        } else {
                            z2 = hasIgnoreMarker;
                            z6 = false;
                        }
                        if (!z3 || findNameForSerialization != null || z2 || !Modifier.isFinal(annotatedField.getModifiers())) {
                            _property(map, modifyFieldName).addField(annotatedField, findNameForSerialization, z, z6, z2);
                        }
                    }
                }
            }
        }
    }

    protected void _addGetterMethod(Map<String, POJOPropertyBuilder> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        String str;
        boolean z;
        PropertyName propertyName;
        Class<?> rawReturnType = annotatedMethod.getRawReturnType();
        if (rawReturnType == Void.TYPE) {
            return;
        }
        if (rawReturnType == Void.class && !this._config.isEnabled(MapperFeature.ALLOW_VOID_VALUED_PROPERTIES)) {
            return;
        }
        if (Boolean.TRUE.equals(annotationIntrospector.hasAnyGetter(annotatedMethod))) {
            if (this._anyGetters == null) {
                this._anyGetters = new LinkedList<>();
            }
            this._anyGetters.add(annotatedMethod);
        } else if (Boolean.TRUE.equals(annotationIntrospector.hasAsKey(this._config, annotatedMethod))) {
            if (this._jsonKeyAccessors == null) {
                this._jsonKeyAccessors = new LinkedList<>();
            }
            this._jsonKeyAccessors.add(annotatedMethod);
        } else if (Boolean.TRUE.equals(annotationIntrospector.hasAsValue(annotatedMethod))) {
            if (this._jsonValueAccessors == null) {
                this._jsonValueAccessors = new LinkedList<>();
            }
            this._jsonValueAccessors.add(annotatedMethod);
        } else {
            PropertyName findNameForSerialization = annotationIntrospector.findNameForSerialization(annotatedMethod);
            boolean z2 = false;
            z2 = findNameForSerialization != null;
            if (!z2) {
                String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                str = findImplicitPropertyName;
                if (findImplicitPropertyName == null) {
                    str = this._accessorNaming.findNameForRegularGetter(annotatedMethod, annotatedMethod.getName());
                }
                if (str == null) {
                    str = this._accessorNaming.findNameForIsGetter(annotatedMethod, annotatedMethod.getName());
                    if (str != null) {
                        z = this._visibilityChecker.isIsGetterVisible(annotatedMethod);
                    } else {
                        return;
                    }
                } else {
                    z = this._visibilityChecker.isGetterVisible(annotatedMethod);
                }
                propertyName = findNameForSerialization;
            } else {
                String findImplicitPropertyName2 = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
                String str2 = findImplicitPropertyName2;
                if (findImplicitPropertyName2 == null) {
                    String findNameForRegularGetter = this._accessorNaming.findNameForRegularGetter(annotatedMethod, annotatedMethod.getName());
                    str2 = findNameForRegularGetter;
                    if (findNameForRegularGetter == null) {
                        str2 = this._accessorNaming.findNameForIsGetter(annotatedMethod, annotatedMethod.getName());
                    }
                }
                str = str2;
                if (str2 == null) {
                    str = annotatedMethod.getName();
                }
                propertyName = findNameForSerialization.isEmpty() ? _propNameFromSimple(str) : findNameForSerialization;
                z = true;
            }
            _property(map, _checkRenameByField(str)).addGetter(annotatedMethod, propertyName, z2, z, annotationIntrospector.hasIgnoreMarker(annotatedMethod));
        }
    }

    protected void _addInjectables(Map<String, POJOPropertyBuilder> map) {
        for (AnnotatedMember annotatedMember : this._classDef.fields()) {
            _doAddInjectable(this._annotationIntrospector.findInjectableValue(annotatedMember), annotatedMember);
        }
        for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
            if (annotatedMethod.getParameterCount() == 1) {
                _doAddInjectable(this._annotationIntrospector.findInjectableValue(annotatedMethod), annotatedMethod);
            }
        }
    }

    protected void _addMethods(Map<String, POJOPropertyBuilder> map) {
        for (AnnotatedMethod annotatedMethod : this._classDef.memberMethods()) {
            int parameterCount = annotatedMethod.getParameterCount();
            if (parameterCount == 0) {
                _addGetterMethod(map, annotatedMethod, this._annotationIntrospector);
            } else if (parameterCount == 1) {
                _addSetterMethod(map, annotatedMethod, this._annotationIntrospector);
            } else if (parameterCount == 2 && Boolean.TRUE.equals(this._annotationIntrospector.hasAnySetter(annotatedMethod))) {
                if (this._anySetters == null) {
                    this._anySetters = new LinkedList<>();
                }
                this._anySetters.add(annotatedMethod);
            }
        }
    }

    protected void _addSetterMethod(Map<String, POJOPropertyBuilder> map, AnnotatedMethod annotatedMethod, AnnotationIntrospector annotationIntrospector) {
        PropertyName propertyName;
        String str;
        boolean z;
        PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedMethod);
        boolean z2 = false;
        z2 = findNameForDeserialization != null;
        if (!z2) {
            String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
            String str2 = findImplicitPropertyName;
            if (findImplicitPropertyName == null) {
                str2 = this._accessorNaming.findNameForMutator(annotatedMethod, annotatedMethod.getName());
            }
            if (str2 != null) {
                z = this._visibilityChecker.isSetterVisible(annotatedMethod);
                str = str2;
                propertyName = findNameForDeserialization;
                z2 = z2;
            } else {
                return;
            }
        } else {
            String findImplicitPropertyName2 = annotationIntrospector.findImplicitPropertyName(annotatedMethod);
            String str3 = findImplicitPropertyName2;
            if (findImplicitPropertyName2 == null) {
                str3 = this._accessorNaming.findNameForMutator(annotatedMethod, annotatedMethod.getName());
            }
            String str4 = str3;
            if (str3 == null) {
                str4 = annotatedMethod.getName();
            }
            propertyName = findNameForDeserialization.isEmpty() ? _propNameFromSimple(str4) : findNameForDeserialization;
            str = str4;
            z = true;
        }
        _property(map, _checkRenameByField(str)).addSetter(annotatedMethod, propertyName, z2, z, annotationIntrospector.hasIgnoreMarker(annotatedMethod));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _collectIgnorals(String str) {
        if (!this._forSerialization && str != null) {
            if (this._ignoredPropertyNames == null) {
                this._ignoredPropertyNames = new HashSet<>();
            }
            this._ignoredPropertyNames.add(str);
        }
    }

    protected void _doAddInjectable(JacksonInject.Value value, AnnotatedMember annotatedMember) {
        if (value != null) {
            Object id = value.getId();
            if (this._injectables == null) {
                this._injectables = new LinkedHashMap<>();
            }
            AnnotatedMember put = this._injectables.put(id, annotatedMember);
            if (put != null && put.getClass() == annotatedMember.getClass()) {
                String name = id.getClass().getName();
                throw new IllegalArgumentException("Duplicate injectable value with id '" + id + "' (of type " + name + ")");
            }
        }
    }

    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> map, PropertyName propertyName) {
        String simpleName = propertyName.getSimpleName();
        POJOPropertyBuilder pOJOPropertyBuilder = map.get(simpleName);
        POJOPropertyBuilder pOJOPropertyBuilder2 = pOJOPropertyBuilder;
        if (pOJOPropertyBuilder == null) {
            pOJOPropertyBuilder2 = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._forSerialization, propertyName);
            map.put(simpleName, pOJOPropertyBuilder2);
        }
        return pOJOPropertyBuilder2;
    }

    protected POJOPropertyBuilder _property(Map<String, POJOPropertyBuilder> map, String str) {
        POJOPropertyBuilder pOJOPropertyBuilder = map.get(str);
        POJOPropertyBuilder pOJOPropertyBuilder2 = pOJOPropertyBuilder;
        if (pOJOPropertyBuilder == null) {
            pOJOPropertyBuilder2 = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._forSerialization, PropertyName.construct(str));
            map.put(str, pOJOPropertyBuilder2);
        }
        return pOJOPropertyBuilder2;
    }

    protected void _removeUnwantedAccessor(Map<String, POJOPropertyBuilder> map) {
        boolean isEnabled = this._config.isEnabled(MapperFeature.INFER_PROPERTY_MUTATORS);
        for (POJOPropertyBuilder pOJOPropertyBuilder : map.values()) {
            pOJOPropertyBuilder.removeNonVisible(isEnabled, this._forSerialization ? null : this);
        }
    }

    protected void _removeUnwantedProperties(Map<String, POJOPropertyBuilder> map) {
        Iterator<POJOPropertyBuilder> it2 = map.values().iterator();
        while (it2.hasNext()) {
            POJOPropertyBuilder next = it2.next();
            if (!next.anyVisible()) {
                it2.remove();
            } else if (next.anyIgnorals()) {
                if (!next.isExplicitlyIncluded()) {
                    it2.remove();
                    _collectIgnorals(next.getName());
                } else {
                    next.removeIgnored();
                    if (!next.couldDeserialize()) {
                        _collectIgnorals(next.getName());
                    }
                }
            }
        }
    }

    protected void _renameProperties(Map<String, POJOPropertyBuilder> map) {
        HashSet<String> hashSet;
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it2 = map.entrySet().iterator();
        LinkedList linkedList = null;
        while (it2.hasNext()) {
            POJOPropertyBuilder value = it2.next().getValue();
            Set<PropertyName> findExplicitNames = value.findExplicitNames();
            if (!findExplicitNames.isEmpty()) {
                it2.remove();
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
            Iterator it3 = linkedList.iterator();
            while (it3.hasNext()) {
                POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) it3.next();
                String name = pOJOPropertyBuilder.getName();
                POJOPropertyBuilder pOJOPropertyBuilder2 = map.get(name);
                if (pOJOPropertyBuilder2 == null) {
                    map.put(name, pOJOPropertyBuilder);
                } else {
                    pOJOPropertyBuilder2.addAll(pOJOPropertyBuilder);
                }
                if (_replaceCreatorProperty(pOJOPropertyBuilder, this._creatorProperties) && (hashSet = this._ignoredPropertyNames) != null) {
                    hashSet.remove(name);
                }
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
    protected void _renameUsing(java.util.Map<java.lang.String, com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder> r6, com.fasterxml.jackson.databind.PropertyNamingStrategy r7) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertiesCollector._renameUsing(java.util.Map, com.fasterxml.jackson.databind.PropertyNamingStrategy):void");
    }

    protected void _renameWithWrappers(Map<String, POJOPropertyBuilder> map) {
        PropertyName findWrapperName;
        Iterator<Map.Entry<String, POJOPropertyBuilder>> it2 = map.entrySet().iterator();
        LinkedList linkedList = null;
        while (it2.hasNext()) {
            POJOPropertyBuilder value = it2.next().getValue();
            AnnotatedMember primaryMember = value.getPrimaryMember();
            if (primaryMember != null && (findWrapperName = this._annotationIntrospector.findWrapperName(primaryMember)) != null && findWrapperName.hasSimpleName() && !findWrapperName.equals(value.getFullName())) {
                LinkedList linkedList2 = linkedList;
                if (linkedList == null) {
                    linkedList2 = new LinkedList();
                }
                linkedList2.add(value.withName(findWrapperName));
                it2.remove();
                linkedList = linkedList2;
            }
        }
        if (linkedList != null) {
            Iterator it3 = linkedList.iterator();
            while (it3.hasNext()) {
                POJOPropertyBuilder pOJOPropertyBuilder = (POJOPropertyBuilder) it3.next();
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

    protected boolean _replaceCreatorProperty(POJOPropertyBuilder pOJOPropertyBuilder, List<POJOPropertyBuilder> list) {
        if (list == null) {
            return false;
        }
        String internalName = pOJOPropertyBuilder.getInternalName();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).getInternalName().equals(internalName)) {
                list.set(i, pOJOPropertyBuilder);
                return true;
            }
        }
        return false;
    }

    protected void _sortProperties(Map<String, POJOPropertyBuilder> map) {
        Collection<POJOPropertyBuilder> collection;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        Boolean findSerializationSortAlphabetically = annotationIntrospector.findSerializationSortAlphabetically(this._classDef);
        boolean shouldSortPropertiesAlphabetically = findSerializationSortAlphabetically == null ? this._config.shouldSortPropertiesAlphabetically() : findSerializationSortAlphabetically.booleanValue();
        boolean _anyIndexed = _anyIndexed(map.values());
        String[] findSerializationPropertyOrder = annotationIntrospector.findSerializationPropertyOrder(this._classDef);
        if (shouldSortPropertiesAlphabetically || _anyIndexed || this._creatorProperties != null || findSerializationPropertyOrder != null) {
            int size = map.size();
            Map<? extends Object, ? extends Object> treeMap = shouldSortPropertiesAlphabetically ? new TreeMap<>() : new LinkedHashMap<>(size + size);
            for (POJOPropertyBuilder pOJOPropertyBuilder : map.values()) {
                treeMap.put(pOJOPropertyBuilder.getName(), pOJOPropertyBuilder);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(size + size);
            if (findSerializationPropertyOrder != null) {
                for (String str : findSerializationPropertyOrder) {
                    POJOPropertyBuilder pOJOPropertyBuilder2 = (POJOPropertyBuilder) treeMap.remove(str);
                    String str2 = str;
                    POJOPropertyBuilder pOJOPropertyBuilder3 = pOJOPropertyBuilder2;
                    if (pOJOPropertyBuilder2 == null) {
                        Iterator<POJOPropertyBuilder> it2 = map.values().iterator();
                        while (true) {
                            str2 = str;
                            pOJOPropertyBuilder3 = pOJOPropertyBuilder2;
                            if (!it2.hasNext()) {
                                break;
                            }
                            pOJOPropertyBuilder3 = it2.next();
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
            if (_anyIndexed) {
                TreeMap treeMap2 = new TreeMap();
                Iterator<Map.Entry<? extends Object, ? extends Object>> it3 = treeMap.entrySet().iterator();
                while (it3.hasNext()) {
                    POJOPropertyBuilder pOJOPropertyBuilder4 = (POJOPropertyBuilder) it3.next().getValue();
                    Integer index = pOJOPropertyBuilder4.getMetadata().getIndex();
                    if (index != null) {
                        treeMap2.put(index, pOJOPropertyBuilder4);
                        it3.remove();
                    }
                }
                for (POJOPropertyBuilder pOJOPropertyBuilder5 : treeMap2.values()) {
                    linkedHashMap.put(pOJOPropertyBuilder5.getName(), pOJOPropertyBuilder5);
                }
            }
            if (this._creatorProperties != null && (!shouldSortPropertiesAlphabetically || this._config.isEnabled(MapperFeature.SORT_CREATOR_PROPERTIES_FIRST))) {
                if (shouldSortPropertiesAlphabetically) {
                    TreeMap treeMap3 = new TreeMap();
                    Iterator<POJOPropertyBuilder> it4 = this._creatorProperties.iterator();
                    while (it4.hasNext()) {
                        POJOPropertyBuilder next = it4.next();
                        treeMap3.put(next.getName(), next);
                    }
                    collection = treeMap3.values();
                } else {
                    collection = this._creatorProperties;
                }
                for (POJOPropertyBuilder pOJOPropertyBuilder6 : collection) {
                    String name = pOJOPropertyBuilder6.getName();
                    if (treeMap.containsKey(name)) {
                        linkedHashMap.put(name, pOJOPropertyBuilder6);
                    }
                }
            }
            linkedHashMap.putAll(treeMap);
            map.clear();
            map.putAll(linkedHashMap);
        }
    }

    protected void collectAll() {
        LinkedHashMap<String, POJOPropertyBuilder> linkedHashMap = new LinkedHashMap<>();
        _addFields(linkedHashMap);
        _addMethods(linkedHashMap);
        if (!this._classDef.isNonStaticInnerClass()) {
            _addCreators(linkedHashMap);
        }
        _removeUnwantedProperties(linkedHashMap);
        _removeUnwantedAccessor(linkedHashMap);
        _renameProperties(linkedHashMap);
        _addInjectables(linkedHashMap);
        for (POJOPropertyBuilder pOJOPropertyBuilder : linkedHashMap.values()) {
            pOJOPropertyBuilder.mergeAnnotations(this._forSerialization);
        }
        for (POJOPropertyBuilder pOJOPropertyBuilder2 : linkedHashMap.values()) {
            pOJOPropertyBuilder2.trimByVisibility();
        }
        PropertyNamingStrategy _findNamingStrategy = _findNamingStrategy();
        if (_findNamingStrategy != null) {
            _renameUsing(linkedHashMap, _findNamingStrategy);
        }
        if (this._config.isEnabled(MapperFeature.USE_WRAPPER_NAME_AS_PROPERTY_NAME)) {
            _renameWithWrappers(linkedHashMap);
        }
        _sortProperties(linkedHashMap);
        this._properties = linkedHashMap;
        this._collected = true;
    }

    public AnnotatedMember getAnyGetterField() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._anyGetterField;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-getter' fields defined (%s vs %s)", this._anyGetterField.get(0), this._anyGetterField.get(1));
        }
        return this._anyGetterField.getFirst();
    }

    public AnnotatedMember getAnyGetterMethod() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._anyGetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-getter' methods defined (%s vs %s)", this._anyGetters.get(0), this._anyGetters.get(1));
        }
        return this._anyGetters.getFirst();
    }

    public AnnotatedMember getAnySetterField() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._anySetterField;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-setter' fields defined (%s vs %s)", this._anySetterField.get(0), this._anySetterField.get(1));
        }
        return this._anySetterField.getFirst();
    }

    public AnnotatedMethod getAnySetterMethod() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMethod> linkedList = this._anySetters;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'any-setter' methods defined (%s vs %s)", this._anySetters.get(0), this._anySetters.get(1));
        }
        return this._anySetters.getFirst();
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

    public AnnotatedMember getJsonKeyAccessor() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._jsonKeyAccessors;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'as-key' properties defined (%s vs %s)", this._jsonKeyAccessors.get(0), this._jsonKeyAccessors.get(1));
        }
        return this._jsonKeyAccessors.get(0);
    }

    public AnnotatedMember getJsonValueAccessor() {
        if (!this._collected) {
            collectAll();
        }
        LinkedList<AnnotatedMember> linkedList = this._jsonValueAccessors;
        if (linkedList == null) {
            return null;
        }
        if (linkedList.size() > 1) {
            reportProblem("Multiple 'as-value' properties defined (%s vs %s)", this._jsonValueAccessors.get(0), this._jsonValueAccessors.get(1));
        }
        return this._jsonValueAccessors.get(0);
    }

    public ObjectIdInfo getObjectIdInfo() {
        ObjectIdInfo findObjectIdInfo = this._annotationIntrospector.findObjectIdInfo(this._classDef);
        ObjectIdInfo objectIdInfo = findObjectIdInfo;
        if (findObjectIdInfo != null) {
            objectIdInfo = this._annotationIntrospector.findObjectReferenceInfo(this._classDef, findObjectIdInfo);
        }
        return objectIdInfo;
    }

    public List<BeanPropertyDefinition> getProperties() {
        return new ArrayList(getPropertyMap().values());
    }

    protected Map<String, POJOPropertyBuilder> getPropertyMap() {
        if (!this._collected) {
            collectAll();
        }
        return this._properties;
    }

    public JavaType getType() {
        return this._type;
    }

    protected void reportProblem(String str, Object... objArr) {
        String str2 = str;
        if (objArr.length > 0) {
            str2 = String.format(str, objArr);
        }
        throw new IllegalArgumentException("Problem with definition of " + this._classDef + ": " + str2);
    }
}
