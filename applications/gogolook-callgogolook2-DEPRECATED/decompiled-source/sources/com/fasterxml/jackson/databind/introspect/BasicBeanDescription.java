package com.fasterxml.jackson.databind.introspect;

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
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/BasicBeanDescription.class */
public class BasicBeanDescription extends BeanDescription {
    public final AnnotationIntrospector _annotationIntrospector;
    public final AnnotatedClass _classInfo;
    public final MapperConfig<?> _config;
    public ObjectIdInfo _objectIdInfo;
    public final POJOPropertiesCollector _propCollector;
    public List<BeanPropertyDefinition> _properties;

    public BasicBeanDescription(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass, List<BeanPropertyDefinition> list) {
        super(javaType);
        AnnotationIntrospector annotationIntrospector = null;
        this._propCollector = null;
        this._config = mapperConfig;
        MapperConfig<?> mapperConfig2 = this._config;
        if (mapperConfig2 != null) {
            annotationIntrospector = mapperConfig2.getAnnotationIntrospector();
        }
        this._annotationIntrospector = annotationIntrospector;
        this._classInfo = annotatedClass;
        this._properties = list;
    }

    public BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector) {
        this(pOJOPropertiesCollector, pOJOPropertiesCollector.getType(), pOJOPropertiesCollector.getClassDef());
        this._objectIdInfo = pOJOPropertiesCollector.getObjectIdInfo();
    }

    public BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector, JavaType javaType, AnnotatedClass annotatedClass) {
        super(javaType);
        this._propCollector = pOJOPropertiesCollector;
        this._config = pOJOPropertiesCollector.getConfig();
        MapperConfig<?> mapperConfig = this._config;
        this._annotationIntrospector = mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector();
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

    public Converter<Object, Object> _createConverter(Object obj) {
        Converter<?, ?> converter = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Converter) {
            return (Converter) obj;
        }
        if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == Converter.None.class || ClassUtil.isBogusClass(cls)) {
                return null;
            }
            if (Converter.class.isAssignableFrom(cls)) {
                HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                if (handlerInstantiator != null) {
                    converter = handlerInstantiator.converterInstance(this._config, this._classInfo, cls);
                }
                Converter<?, ?> converter2 = converter;
                if (converter == null) {
                    converter2 = (Converter) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
                }
                return converter2;
            }
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<Converter>");
        }
        throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type " + obj.getClass().getName() + "; expected type Converter or Class<Converter> instead");
    }

    public List<BeanPropertyDefinition> _properties() {
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
        AnnotatedMember anyGetter = pOJOPropertiesCollector == null ? null : pOJOPropertiesCollector.getAnyGetter();
        if (anyGetter == null || Map.class.isAssignableFrom(anyGetter.getRawType())) {
            return anyGetter;
        }
        throw new IllegalArgumentException("Invalid 'any-getter' annotation on method " + anyGetter.getName() + "(): return type is not instance of java.util.Map");
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMethod findAnySetter() throws IllegalArgumentException {
        Class<?> rawParameterType;
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        AnnotatedMethod anySetterMethod = pOJOPropertiesCollector == null ? null : pOJOPropertiesCollector.getAnySetterMethod();
        if (anySetterMethod == null || (rawParameterType = anySetterMethod.getRawParameterType(0)) == String.class || rawParameterType == Object.class) {
            return anySetterMethod;
        }
        throw new IllegalArgumentException("Invalid 'any-setter' annotation on method " + anySetterMethod.getName() + "(): first argument not of type String or Object, but " + rawParameterType.getName());
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Map<String, AnnotatedMember> findBackReferenceProperties() {
        AnnotationIntrospector.ReferenceProperty findReferenceType;
        HashMap hashMap = null;
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            AnnotatedMember mutator = beanPropertyDefinition.getMutator();
            if (!(mutator == null || (findReferenceType = this._annotationIntrospector.findReferenceType(mutator)) == null || !findReferenceType.isBackReference())) {
                HashMap hashMap2 = hashMap;
                if (hashMap == null) {
                    hashMap2 = new HashMap();
                }
                String name = findReferenceType.getName();
                if (hashMap2.put(name, mutator) == null) {
                    hashMap = hashMap2;
                } else {
                    throw new IllegalArgumentException("Multiple back-reference properties with name '" + name + "'");
                }
            }
        }
        return hashMap;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedConstructor findDefaultConstructor() {
        return this._classInfo.getDefaultConstructor();
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
        JsonFormat.Value findFormat;
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        return (annotationIntrospector == null || (findFormat = annotationIntrospector.findFormat(this._classInfo)) == null) ? value : findFormat;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Method findFactoryMethod(Class<?>... clsArr) {
        for (AnnotatedMethod annotatedMethod : this._classInfo.getStaticMethods()) {
            if (isFactoryMethod(annotatedMethod)) {
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
    public AnnotatedMethod findJsonValueMethod() {
        POJOPropertiesCollector pOJOPropertiesCollector = this._propCollector;
        return pOJOPropertiesCollector == null ? null : pOJOPropertiesCollector.getJsonValueMethod();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        return this._classInfo.findMethod(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Class<?> findPOJOBuilder() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        return annotationIntrospector == null ? null : annotationIntrospector.findPOJOBuilder(this._classInfo);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JsonPOJOBuilder.Value findPOJOBuilderConfig() {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        return annotationIntrospector == null ? null : annotationIntrospector.findPOJOBuilderConfig(this._classInfo);
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
        List<AnnotatedMethod> staticMethods = this._classInfo.getStaticMethods();
        if (staticMethods.isEmpty()) {
            return staticMethods;
        }
        ArrayList arrayList = new ArrayList();
        for (AnnotatedMethod annotatedMethod : staticMethods) {
            if (isFactoryMethod(annotatedMethod)) {
                arrayList.add(annotatedMethod);
            }
        }
        return arrayList;
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
            if (e instanceof Error) {
                throw ((Error) e);
            } else if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            } else {
                throw new IllegalArgumentException("Failed to instantiate bean of type " + this._classInfo.getAnnotated().getName() + ": (" + e.getClass().getName() + ") " + e.getMessage(), e);
            }
        }
    }

    public boolean isFactoryMethod(AnnotatedMethod annotatedMethod) {
        if (!getBeanClass().isAssignableFrom(annotatedMethod.getRawReturnType())) {
            return false;
        }
        if (this._annotationIntrospector.hasCreatorAnnotation(annotatedMethod)) {
            return true;
        }
        String name = annotatedMethod.getName();
        if ("valueOf".equals(name)) {
            return true;
        }
        if (!"fromString".equals(name) || 1 != annotatedMethod.getParameterCount()) {
            return false;
        }
        Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
        return rawParameterType == String.class || CharSequence.class.isAssignableFrom(rawParameterType);
    }

    public boolean removeProperty(String str) {
        Iterator<BeanPropertyDefinition> it = _properties().iterator();
        while (it.hasNext()) {
            if (it.next().getName().equals(str)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JavaType resolveType(Type type) {
        if (type == null) {
            return null;
        }
        return this._config.getTypeFactory().constructType(type, this._type.getBindings());
    }
}
