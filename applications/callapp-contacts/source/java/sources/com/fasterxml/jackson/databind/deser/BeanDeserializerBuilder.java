package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializerBuilder.class */
public class BeanDeserializerBuilder {
    protected SettableAnyProperty _anySetter;
    protected HashMap<String, SettableBeanProperty> _backRefProperties;
    protected final BeanDescription _beanDesc;
    protected AnnotatedMethod _buildMethod;
    protected JsonPOJOBuilder.Value _builderConfig;
    protected final DeserializationConfig _config;
    protected final DeserializationContext _context;
    protected HashSet<String> _ignorableProps;
    protected boolean _ignoreAllUnknown;
    protected HashSet<String> _includableProps;
    protected List<ValueInjector> _injectables;
    protected ObjectIdReader _objectIdReader;
    protected final Map<String, SettableBeanProperty> _properties;
    protected ValueInstantiator _valueInstantiator;

    public BeanDeserializerBuilder(BeanDescription beanDescription, DeserializationContext deserializationContext) {
        this._properties = new LinkedHashMap();
        this._beanDesc = beanDescription;
        this._context = deserializationContext;
        this._config = deserializationContext.getConfig();
    }

    protected BeanDeserializerBuilder(BeanDeserializerBuilder beanDeserializerBuilder) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this._properties = linkedHashMap;
        this._beanDesc = beanDeserializerBuilder._beanDesc;
        this._context = beanDeserializerBuilder._context;
        this._config = beanDeserializerBuilder._config;
        linkedHashMap.putAll(beanDeserializerBuilder._properties);
        this._injectables = _copy(beanDeserializerBuilder._injectables);
        this._backRefProperties = _copy(beanDeserializerBuilder._backRefProperties);
        this._ignorableProps = beanDeserializerBuilder._ignorableProps;
        this._includableProps = beanDeserializerBuilder._includableProps;
        this._valueInstantiator = beanDeserializerBuilder._valueInstantiator;
        this._objectIdReader = beanDeserializerBuilder._objectIdReader;
        this._anySetter = beanDeserializerBuilder._anySetter;
        this._ignoreAllUnknown = beanDeserializerBuilder._ignoreAllUnknown;
        this._buildMethod = beanDeserializerBuilder._buildMethod;
        this._builderConfig = beanDeserializerBuilder._builderConfig;
    }

    private static HashMap<String, SettableBeanProperty> _copy(HashMap<String, SettableBeanProperty> hashMap) {
        if (hashMap == null) {
            return null;
        }
        return new HashMap<>(hashMap);
    }

    private static <T> List<T> _copy(List<T> list) {
        if (list == null) {
            return null;
        }
        return new ArrayList(list);
    }

    protected Map<String, List<PropertyName>> _collectAliases(Collection<SettableBeanProperty> collection) {
        AnnotationIntrospector annotationIntrospector = this._config.getAnnotationIntrospector();
        HashMap hashMap = null;
        if (annotationIntrospector != null) {
            Iterator<SettableBeanProperty> it2 = collection.iterator();
            HashMap hashMap2 = null;
            while (true) {
                hashMap = hashMap2;
                if (!it2.hasNext()) {
                    break;
                }
                SettableBeanProperty next = it2.next();
                List<PropertyName> findPropertyAliases = annotationIntrospector.findPropertyAliases(next.getMember());
                if (findPropertyAliases != null && !findPropertyAliases.isEmpty()) {
                    HashMap hashMap3 = hashMap2;
                    if (hashMap2 == null) {
                        hashMap3 = new HashMap();
                    }
                    hashMap3.put(next.getName(), findPropertyAliases);
                    hashMap2 = hashMap3;
                }
            }
        }
        return hashMap == null ? Collections.emptyMap() : hashMap;
    }

    protected boolean _findCaseInsensitivity() {
        Boolean feature = this._beanDesc.findExpectedFormat(null).getFeature(JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        return feature == null ? this._config.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES) : feature.booleanValue();
    }

    protected void _fixAccess(Collection<SettableBeanProperty> collection) {
        if (this._config.canOverrideAccessModifiers()) {
            for (SettableBeanProperty settableBeanProperty : collection) {
                settableBeanProperty.fixAccess(this._config);
            }
        }
        SettableAnyProperty settableAnyProperty = this._anySetter;
        if (settableAnyProperty != null) {
            settableAnyProperty.fixAccess(this._config);
        }
        AnnotatedMethod annotatedMethod = this._buildMethod;
        if (annotatedMethod != null) {
            annotatedMethod.fixAccess(this._config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
    }

    public void addBackReferenceProperty(String str, SettableBeanProperty settableBeanProperty) {
        if (this._backRefProperties == null) {
            this._backRefProperties = new HashMap<>(4);
        }
        if (this._config.canOverrideAccessModifiers()) {
            settableBeanProperty.fixAccess(this._config);
        }
        this._backRefProperties.put(str, settableBeanProperty);
    }

    public void addCreatorProperty(SettableBeanProperty settableBeanProperty) {
        addProperty(settableBeanProperty);
    }

    public void addIgnorable(String str) {
        if (this._ignorableProps == null) {
            this._ignorableProps = new HashSet<>();
        }
        this._ignorableProps.add(str);
    }

    public void addIncludable(String str) {
        if (this._includableProps == null) {
            this._includableProps = new HashSet<>();
        }
        this._includableProps.add(str);
    }

    public void addInjectable(PropertyName propertyName, JavaType javaType, Annotations annotations, AnnotatedMember annotatedMember, Object obj) {
        if (this._injectables == null) {
            this._injectables = new ArrayList();
        }
        if (this._config.canOverrideAccessModifiers()) {
            annotatedMember.fixAccess(this._config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        this._injectables.add(new ValueInjector(propertyName, javaType, annotatedMember, obj));
    }

    public void addOrReplaceProperty(SettableBeanProperty settableBeanProperty, boolean z) {
        this._properties.put(settableBeanProperty.getName(), settableBeanProperty);
    }

    public void addProperty(SettableBeanProperty settableBeanProperty) {
        SettableBeanProperty put = this._properties.put(settableBeanProperty.getName(), settableBeanProperty);
        if (put == null || put == settableBeanProperty) {
            return;
        }
        throw new IllegalArgumentException("Duplicate property '" + settableBeanProperty.getName() + "' for " + this._beanDesc.getType());
    }

    public JsonDeserializer<?> build() {
        Collection<SettableBeanProperty> values = this._properties.values();
        _fixAccess(values);
        BeanPropertyMap construct = BeanPropertyMap.construct(this._config, values, _collectAliases(values), _findCaseInsensitivity());
        construct.assignIndexes();
        boolean z = !this._config.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        if (!z) {
            Iterator<SettableBeanProperty> it2 = values.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().hasViews()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        ObjectIdReader objectIdReader = this._objectIdReader;
        BeanPropertyMap beanPropertyMap = construct;
        if (objectIdReader != null) {
            beanPropertyMap = construct.withProperty(new ObjectIdValueProperty(objectIdReader, PropertyMetadata.STD_REQUIRED));
        }
        return new BeanDeserializer(this, this._beanDesc, beanPropertyMap, this._backRefProperties, this._ignorableProps, this._ignoreAllUnknown, this._includableProps, z);
    }

    public AbstractDeserializer buildAbstract() {
        return new AbstractDeserializer(this, this._beanDesc, this._backRefProperties, this._properties);
    }

    public JsonDeserializer<?> buildBuilderBased(JavaType javaType, String str) throws JsonMappingException {
        AnnotatedMethod annotatedMethod = this._buildMethod;
        boolean z = true;
        if (annotatedMethod != null) {
            Class<?> rawReturnType = annotatedMethod.getRawReturnType();
            Class<?> rawClass = javaType.getRawClass();
            if (rawReturnType != rawClass && !rawReturnType.isAssignableFrom(rawClass) && !rawClass.isAssignableFrom(rawReturnType)) {
                this._context.reportBadDefinition(this._beanDesc.getType(), String.format("Build method `%s` has wrong return type (%s), not compatible with POJO type (%s)", this._buildMethod.getFullName(), ClassUtil.getClassDescription(rawReturnType), ClassUtil.getTypeDescription(javaType)));
            }
        } else if (!str.isEmpty()) {
            this._context.reportBadDefinition(this._beanDesc.getType(), String.format("Builder class %s does not have build method (name: '%s')", ClassUtil.getTypeDescription(this._beanDesc.getType()), str));
        }
        Collection<SettableBeanProperty> values = this._properties.values();
        _fixAccess(values);
        BeanPropertyMap construct = BeanPropertyMap.construct(this._config, values, _collectAliases(values), _findCaseInsensitivity());
        construct.assignIndexes();
        boolean z2 = !this._config.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        if (!z2) {
            for (SettableBeanProperty settableBeanProperty : values) {
                if (settableBeanProperty.hasViews()) {
                    break;
                }
            }
        }
        z = z2;
        ObjectIdReader objectIdReader = this._objectIdReader;
        BeanPropertyMap beanPropertyMap = construct;
        if (objectIdReader != null) {
            beanPropertyMap = construct.withProperty(new ObjectIdValueProperty(objectIdReader, PropertyMetadata.STD_REQUIRED));
        }
        return createBuilderBasedDeserializer(javaType, beanPropertyMap, z);
    }

    protected JsonDeserializer<?> createBuilderBasedDeserializer(JavaType javaType, BeanPropertyMap beanPropertyMap, boolean z) {
        return new BuilderBasedDeserializer(this, this._beanDesc, javaType, beanPropertyMap, this._backRefProperties, this._ignorableProps, this._ignoreAllUnknown, this._includableProps, z);
    }

    public SettableBeanProperty findProperty(PropertyName propertyName) {
        return this._properties.get(propertyName.getSimpleName());
    }

    public SettableAnyProperty getAnySetter() {
        return this._anySetter;
    }

    public AnnotatedMethod getBuildMethod() {
        return this._buildMethod;
    }

    public List<ValueInjector> getInjectables() {
        return this._injectables;
    }

    public ObjectIdReader getObjectIdReader() {
        return this._objectIdReader;
    }

    public ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }

    public boolean hasIgnorable(String str) {
        return IgnorePropertiesUtil.shouldIgnore(str, this._ignorableProps, this._includableProps);
    }

    public void setAnySetter(SettableAnyProperty settableAnyProperty) {
        if (this._anySetter == null || settableAnyProperty == null) {
            this._anySetter = settableAnyProperty;
            return;
        }
        throw new IllegalStateException("_anySetter already set to non-null");
    }

    public void setIgnoreUnknownProperties(boolean z) {
        this._ignoreAllUnknown = z;
    }

    public void setObjectIdReader(ObjectIdReader objectIdReader) {
        this._objectIdReader = objectIdReader;
    }

    public void setPOJOBuilder(AnnotatedMethod annotatedMethod, JsonPOJOBuilder.Value value) {
        this._buildMethod = annotatedMethod;
        this._builderConfig = value;
    }

    public void setValueInstantiator(ValueInstantiator valueInstantiator) {
        this._valueInstantiator = valueInstantiator;
    }
}
