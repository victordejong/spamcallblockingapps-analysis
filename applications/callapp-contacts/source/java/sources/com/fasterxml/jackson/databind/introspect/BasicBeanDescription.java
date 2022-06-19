package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/BasicBeanDescription.class */
public class BasicBeanDescription extends BeanDescription {
    private static final Class<?>[] NO_VIEWS = new Class[0];
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final AnnotatedClass _classInfo;
    protected final MapperConfig<?> _config;
    protected Class<?>[] _defaultViews;
    protected boolean _defaultViewsResolved;
    protected ObjectIdInfo _objectIdInfo;
    protected final POJOPropertiesCollector _propCollector;
    protected List<BeanPropertyDefinition> _properties;

    protected BasicBeanDescription(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass, List<BeanPropertyDefinition> list) {
        super(javaType);
        this._propCollector = null;
        this._config = mapperConfig;
        if (mapperConfig == null) {
            this._annotationIntrospector = null;
        } else {
            this._annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        }
        this._classInfo = annotatedClass;
        this._properties = list;
    }

    protected BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector) {
        this(pOJOPropertiesCollector, pOJOPropertiesCollector.getType(), pOJOPropertiesCollector.getClassDef());
        this._objectIdInfo = pOJOPropertiesCollector.getObjectIdInfo();
    }

    protected BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector, JavaType javaType, AnnotatedClass annotatedClass) {
        super(javaType);
        this._propCollector = pOJOPropertiesCollector;
        MapperConfig<?> config = pOJOPropertiesCollector.getConfig();
        this._config = config;
        if (config == null) {
            this._annotationIntrospector = null;
        } else {
            this._annotationIntrospector = config.getAnnotationIntrospector();
        }
        this._classInfo = annotatedClass;
    }

    public static BasicBeanDescription forDeserialization(POJOPropertiesCollector pOJOPropertiesCollector) {
        return new BasicBeanDescription(pOJOPropertiesCollector);
    }

    public static BasicBeanDescription forOtherUse(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass) {
        return new BasicBeanDescription(mapperConfig, javaType, annotatedClass, Collections.emptyList());
    }

    public static BasicBeanDescription forSerialization(POJOPropertiesCollector pOJOPropertiesCollector) {
        return new BasicBeanDescription(pOJOPropertiesCollector);
    }

    protected Converter<Object, Object> _createConverter(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Converter) {
            return (Converter) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type " + obj.getClass().getName() + "; expected type Converter or Class<Converter> instead");
        }
        Class<?> cls = (Class) obj;
        if (cls == Converter.None.class || ClassUtil.isBogusClass(cls)) {
            return null;
        }
        if (!Converter.class.isAssignableFrom(cls)) {
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<Converter>");
        }
        HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
        Converter<?, ?> converterInstance = handlerInstantiator == null ? null : handlerInstantiator.converterInstance(this._config, this._classInfo, cls);
        Converter<?, ?> converter = converterInstance;
        if (converterInstance == null) {
            converter = (Converter) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
        }
        return converter;
    }

    protected List<BeanPropertyDefinition> _properties() {
        if (this._properties == null) {
            this._properties = this._propCollector.getProperties();
        }
        return this._properties;
    }

    public boolean addProperty(BeanPropertyDefinition beanPropertyDefinition) {
        if (hasProperty(beanPropertyDefinition.getFullName())) {
            return false;
        }
        _properties().add(beanPropertyDefinition);
        return true;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMember findAnyGetter() throws IllegalArgumentException {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        if (pOJOPropertiesCollector != null) {
            AnnotatedMember anyGetterMethod = pOJOPropertiesCollector.getAnyGetterMethod();
            if (anyGetterMethod != null) {
                if (!Map.class.isAssignableFrom(anyGetterMethod.getRawType())) {
                    throw new IllegalArgumentException(String.format("Invalid 'any-getter' annotation on method %s(): return type is not instance of java.util.Map", anyGetterMethod.getName()));
                }
                return anyGetterMethod;
            }
            AnnotatedMember anyGetterField = this._propCollector.getAnyGetterField();
            if (anyGetterField == null) {
                return null;
            }
            if (!Map.class.isAssignableFrom(anyGetterField.getRawType())) {
                throw new IllegalArgumentException(String.format("Invalid 'any-getter' annotation on field '%s': type is not instance of java.util.Map", anyGetterField.getName()));
            }
            return anyGetterField;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMember findAnySetterAccessor() throws IllegalArgumentException {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        if (pOJOPropertiesCollector != null) {
            AnnotatedMethod anySetterMethod = pOJOPropertiesCollector.getAnySetterMethod();
            if (anySetterMethod != null) {
                Class<?> rawParameterType = anySetterMethod.getRawParameterType(0);
                if (rawParameterType != String.class && rawParameterType != Object.class) {
                    throw new IllegalArgumentException(String.format("Invalid 'any-setter' annotation on method '%s()': first argument not of type String or Object, but %s", anySetterMethod.getName(), rawParameterType.getName()));
                }
                return anySetterMethod;
            }
            AnnotatedMember anySetterField = this._propCollector.getAnySetterField();
            if (anySetterField == null) {
                return null;
            }
            if (!Map.class.isAssignableFrom(anySetterField.getRawType())) {
                throw new IllegalArgumentException(String.format("Invalid 'any-setter' annotation on field '%s': type is not instance of java.util.Map", anySetterField.getName()));
            }
            return anySetterField;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public List<BeanPropertyDefinition> findBackReferences() {
        ArrayList arrayList = null;
        HashSet hashSet = null;
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            AnnotationIntrospector.ReferenceProperty findReferenceType = beanPropertyDefinition.findReferenceType();
            if (findReferenceType != null && findReferenceType.isBackReference()) {
                String name = findReferenceType.getName();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashSet = new HashSet();
                    hashSet.add(name);
                } else if (!hashSet.add(name)) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name " + ClassUtil.name(name));
                }
                arrayList.add(beanPropertyDefinition);
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedConstructor findDefaultConstructor() {
        return this._classInfo.getDefaultConstructor();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Class<?>[] findDefaultViews() {
        if (!this._defaultViewsResolved) {
            this._defaultViewsResolved = true;
            AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
            Class<?>[] findViews = annotationIntrospector == null ? null : annotationIntrospector.findViews(this._classInfo);
            Class<?>[] clsArr = findViews;
            if (findViews == null) {
                clsArr = findViews;
                if (!this._config.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION)) {
                    clsArr = NO_VIEWS;
                }
            }
            this._defaultViews = clsArr;
        }
        return this._defaultViews;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Converter<Object, Object> findDeserializationConverter() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return null;
        }
        return _createConverter(annotationIntrospector.findDeserializationConverter(this._classInfo));
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JsonFormat.Value findExpectedFormat(JsonFormat.Value value) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        JsonFormat.Value value2 = value;
        if (annotationIntrospector != null) {
            JsonFormat.Value findFormat = annotationIntrospector.findFormat(this._classInfo);
            value2 = value;
            if (findFormat != null) {
                value2 = value == null ? findFormat : value.withOverrides(findFormat);
            }
        }
        JsonFormat.Value defaultPropertyFormat = this._config.getDefaultPropertyFormat(this._classInfo.getRawType());
        JsonFormat.Value value3 = value2;
        if (defaultPropertyFormat != null) {
            value3 = value2 == null ? defaultPropertyFormat : value2.withOverrides(defaultPropertyFormat);
        }
        return value3;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Method findFactoryMethod(Class<?>... clsArr) {
        for (AnnotatedMethod annotatedMethod : this._classInfo.getFactoryMethods()) {
            if (isFactoryMethod(annotatedMethod) && annotatedMethod.getParameterCount() == 1) {
                Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
                for (Class<?> cls : clsArr) {
                    if (rawParameterType.isAssignableFrom(cls)) {
                        return annotatedMethod.getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Map<Object, AnnotatedMember> findInjectables() {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        return pOJOPropertiesCollector != null ? pOJOPropertiesCollector.getInjectables() : Collections.emptyMap();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMember findJsonKeyAccessor() {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        if (pOJOPropertiesCollector == null) {
            return null;
        }
        return pOJOPropertiesCollector.getJsonKeyAccessor();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMember findJsonValueAccessor() {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        if (pOJOPropertiesCollector == null) {
            return null;
        }
        return pOJOPropertiesCollector.getJsonValueAccessor();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        return this._classInfo.findMethod(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Class<?> findPOJOBuilder() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findPOJOBuilder(this._classInfo);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JsonPOJOBuilder.Value findPOJOBuilderConfig() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findPOJOBuilderConfig(this._classInfo);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public List<BeanPropertyDefinition> findProperties() {
        return _properties();
    }

    public BeanPropertyDefinition findProperty(PropertyName propertyName) {
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            if (beanPropertyDefinition.hasName(propertyName)) {
                return beanPropertyDefinition;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JsonInclude.Value findPropertyInclusion(JsonInclude.Value value) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        JsonInclude.Value value2 = value;
        if (annotationIntrospector != null) {
            JsonInclude.Value findPropertyInclusion = annotationIntrospector.findPropertyInclusion(this._classInfo);
            value2 = value;
            if (findPropertyInclusion != null) {
                if (value == null) {
                    return findPropertyInclusion;
                }
                value2 = value.withOverrides(findPropertyInclusion);
            }
        }
        return value2;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Converter<Object, Object> findSerializationConverter() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector == null) {
            return null;
        }
        return _createConverter(annotationIntrospector.findSerializationConverter(this._classInfo));
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Constructor<?> findSingleArgConstructor(Class<?>... clsArr) {
        for (AnnotatedConstructor annotatedConstructor : this._classInfo.getConstructors()) {
            if (annotatedConstructor.getParameterCount() == 1) {
                Class<?> rawParameterType = annotatedConstructor.getRawParameterType(0);
                for (Class<?> cls : clsArr) {
                    if (cls == rawParameterType) {
                        return annotatedConstructor.getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Annotations getClassAnnotations() {
        return this._classInfo.getAnnotations();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedClass getClassInfo() {
        return this._classInfo;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public List<AnnotatedConstructor> getConstructors() {
        return this._classInfo.getConstructors();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public List<AnnotatedMethod> getFactoryMethods() {
        List<AnnotatedMethod> factoryMethods = this._classInfo.getFactoryMethods();
        if (factoryMethods.isEmpty()) {
            return factoryMethods;
        }
        ArrayList arrayList = null;
        for (AnnotatedMethod annotatedMethod : factoryMethods) {
            if (isFactoryMethod(annotatedMethod)) {
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(annotatedMethod);
                arrayList = arrayList2;
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Set<String> getIgnoredPropertyNames() {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        Set<String> ignoredPropertyNames = pOJOPropertiesCollector == null ? null : pOJOPropertiesCollector.getIgnoredPropertyNames();
        Set<String> set = ignoredPropertyNames;
        if (ignoredPropertyNames == null) {
            set = Collections.emptySet();
        }
        return set;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public ObjectIdInfo getObjectIdInfo() {
        return this._objectIdInfo;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public boolean hasKnownClassAnnotations() {
        return this._classInfo.hasAnnotations();
    }

    public boolean hasProperty(PropertyName propertyName) {
        return findProperty(propertyName) != null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Object instantiateBean(boolean z) {
        AnnotatedConstructor defaultConstructor = this._classInfo.getDefaultConstructor();
        if (defaultConstructor == null) {
            return null;
        }
        if (z) {
            defaultConstructor.fixAccess(this._config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        try {
            return defaultConstructor.getAnnotated().newInstance(new Object[0]);
        } catch (Exception e) {
            e = e;
            while (e.getCause() != null) {
                e = e.getCause();
            }
            ClassUtil.throwIfError(e);
            ClassUtil.throwIfRTE(e);
            throw new IllegalArgumentException("Failed to instantiate bean of type " + this._classInfo.getAnnotated().getName() + ": (" + e.getClass().getName() + ") " + ClassUtil.exceptionMessage(e), e);
        }
    }

    protected boolean isFactoryMethod(AnnotatedMethod annotatedMethod) {
        if (!getBeanClass().isAssignableFrom(annotatedMethod.getRawReturnType())) {
            return false;
        }
        JsonCreator.Mode findCreatorAnnotation = this._annotationIntrospector.findCreatorAnnotation(this._config, annotatedMethod);
        if (findCreatorAnnotation != null && findCreatorAnnotation != JsonCreator.Mode.DISABLED) {
            return true;
        }
        String name = annotatedMethod.getName();
        if ("valueOf".equals(name) && annotatedMethod.getParameterCount() == 1) {
            return true;
        }
        if (!"fromString".equals(name) || annotatedMethod.getParameterCount() != 1) {
            return false;
        }
        Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
        return rawParameterType == String.class || CharSequence.class.isAssignableFrom(rawParameterType);
    }

    public boolean removeProperty(String str) {
        Iterator<BeanPropertyDefinition> it2 = _properties().iterator();
        while (it2.hasNext()) {
            if (it2.next().getName().equals(str)) {
                it2.remove();
                return true;
            }
        }
        return false;
    }
}
