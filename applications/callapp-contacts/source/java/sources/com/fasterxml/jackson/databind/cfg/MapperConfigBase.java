package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.ConfigFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/MapperConfigBase.class */
public abstract class MapperConfigBase<CFG extends ConfigFeature, T extends MapperConfigBase<CFG, T>> extends MapperConfig<T> implements Serializable {
    protected final ContextAttributes _attributes;
    protected final ConfigOverrides _configOverrides;
    protected final SimpleMixInResolver _mixIns;
    protected final PropertyName _rootName;
    protected final RootNameLookup _rootNames;
    protected final SubtypeResolver _subtypeResolver;
    protected final Class<?> _view;
    protected static final ConfigOverride EMPTY_OVERRIDE = ConfigOverride.empty();
    private static final int DEFAULT_MAPPER_FEATURES = collectFeatureDefaults(MapperFeature.class);
    private static final int AUTO_DETECT_MASK = (((MapperFeature.AUTO_DETECT_FIELDS.getMask() | MapperFeature.AUTO_DETECT_GETTERS.getMask()) | MapperFeature.AUTO_DETECT_IS_GETTERS.getMask()) | MapperFeature.AUTO_DETECT_SETTERS.getMask()) | MapperFeature.AUTO_DETECT_CREATORS.getMask();

    public MapperConfigBase(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(baseSettings, DEFAULT_MAPPER_FEATURES);
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = subtypeResolver;
        this._rootNames = rootNameLookup;
        this._rootName = null;
        this._view = null;
        this._attributes = ContextAttributes.getEmpty();
        this._configOverrides = configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, int i) {
        super(mapperConfigBase, i);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, PropertyName propertyName) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = propertyName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, BaseSettings baseSettings) {
        super(mapperConfigBase, baseSettings);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, ContextAttributes contextAttributes) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = contextAttributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, SimpleMixInResolver simpleMixInResolver) {
        super(mapperConfigBase);
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, SubtypeResolver subtypeResolver) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(mapperConfigBase, mapperConfigBase._base.copy());
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = subtypeResolver;
        this._rootNames = rootNameLookup;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = configOverrides;
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, Class<?> cls) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = cls;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    protected abstract T _withBase(BaseSettings baseSettings);

    protected abstract T _withMapperFeatures(int i);

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver
    public ClassIntrospector.MixInResolver copy() {
        throw new UnsupportedOperationException();
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver
    public final Class<?> findMixInClassFor(Class<?> cls) {
        return this._mixIns.findMixInClassFor(cls);
    }

    public PropertyName findRootName(JavaType javaType) {
        PropertyName propertyName = this._rootName;
        return propertyName != null ? propertyName : this._rootNames.findRootName(javaType, this);
    }

    public PropertyName findRootName(Class<?> cls) {
        PropertyName propertyName = this._rootName;
        return propertyName != null ? propertyName : this._rootNames.findRootName(cls, this);
    }

    public final Class<?> getActiveView() {
        return this._view;
    }

    public final ContextAttributes getAttributes() {
        return this._attributes;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final ConfigOverride getConfigOverride(Class<?> cls) {
        ConfigOverride findOverride = this._configOverrides.findOverride(cls);
        ConfigOverride configOverride = findOverride;
        if (findOverride == null) {
            configOverride = EMPTY_OVERRIDE;
        }
        return configOverride;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonInclude.Value getDefaultInclusion(Class<?> cls, Class<?> cls2) {
        JsonInclude.Value includeAsProperty = getConfigOverride(cls2).getIncludeAsProperty();
        JsonInclude.Value defaultPropertyInclusion = getDefaultPropertyInclusion(cls);
        return defaultPropertyInclusion == null ? includeAsProperty : defaultPropertyInclusion.withOverrides(includeAsProperty);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public Boolean getDefaultMergeable() {
        return this._configOverrides.getDefaultMergeable();
    }

    public Boolean getDefaultMergeable(Class<?> cls) {
        Boolean mergeable;
        ConfigOverride findOverride = this._configOverrides.findOverride(cls);
        return (findOverride == null || (mergeable = findOverride.getMergeable()) == null) ? this._configOverrides.getDefaultMergeable() : mergeable;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        return this._configOverrides.findFormatDefaults(cls);
    }

    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls) {
        JsonIgnoreProperties.Value ignorals;
        ConfigOverride findOverride = this._configOverrides.findOverride(cls);
        if (findOverride == null || (ignorals = findOverride.getIgnorals()) == null) {
            return null;
        }
        return ignorals;
    }

    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls, AnnotatedClass annotatedClass) {
        AnnotationIntrospector annotationIntrospector = getAnnotationIntrospector();
        return JsonIgnoreProperties.Value.merge(annotationIntrospector == null ? null : annotationIntrospector.findPropertyIgnoralByName(this, annotatedClass), getDefaultPropertyIgnorals(cls));
    }

    public final JsonInclude.Value getDefaultPropertyInclusion() {
        return this._configOverrides.getDefaultInclusion();
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls) {
        JsonInclude.Value include = getConfigOverride(cls).getInclude();
        JsonInclude.Value defaultPropertyInclusion = getDefaultPropertyInclusion();
        return defaultPropertyInclusion == null ? include : defaultPropertyInclusion.withOverrides(include);
    }

    public final JsonIncludeProperties.Value getDefaultPropertyInclusions(Class<?> cls, AnnotatedClass annotatedClass) {
        AnnotationIntrospector annotationIntrospector = getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findPropertyInclusionByName(this, annotatedClass);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonSetter.Value getDefaultSetterInfo() {
        return this._configOverrides.getDefaultSetterInfo();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final VisibilityChecker<?> getDefaultVisibilityChecker() {
        VisibilityChecker<?> defaultVisibility = this._configOverrides.getDefaultVisibility();
        int i = this._mapperFeatures;
        int i2 = AUTO_DETECT_MASK;
        VisibilityChecker<?> visibilityChecker = defaultVisibility;
        if ((i & i2) != i2) {
            VisibilityChecker<?> visibilityChecker2 = defaultVisibility;
            if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS)) {
                visibilityChecker2 = defaultVisibility.withFieldVisibility(JsonAutoDetect.Visibility.NONE);
            }
            VisibilityChecker<?> visibilityChecker3 = visibilityChecker2;
            if (!isEnabled(MapperFeature.AUTO_DETECT_GETTERS)) {
                visibilityChecker3 = visibilityChecker2.withGetterVisibility(JsonAutoDetect.Visibility.NONE);
            }
            VisibilityChecker<?> visibilityChecker4 = visibilityChecker3;
            if (!isEnabled(MapperFeature.AUTO_DETECT_IS_GETTERS)) {
                visibilityChecker4 = visibilityChecker3.withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
            }
            VisibilityChecker<?> visibilityChecker5 = visibilityChecker4;
            if (!isEnabled(MapperFeature.AUTO_DETECT_SETTERS)) {
                visibilityChecker5 = visibilityChecker4.withSetterVisibility(JsonAutoDetect.Visibility.NONE);
            }
            visibilityChecker = visibilityChecker5;
            if (!isEnabled(MapperFeature.AUTO_DETECT_CREATORS)) {
                visibilityChecker = visibilityChecker5.withCreatorVisibility(JsonAutoDetect.Visibility.NONE);
            }
        }
        return visibilityChecker;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final VisibilityChecker<?> getDefaultVisibilityChecker(Class<?> cls, AnnotatedClass annotatedClass) {
        VisibilityChecker<?> defaultVisibilityChecker = getDefaultVisibilityChecker();
        AnnotationIntrospector annotationIntrospector = getAnnotationIntrospector();
        VisibilityChecker<?> visibilityChecker = defaultVisibilityChecker;
        if (annotationIntrospector != null) {
            visibilityChecker = annotationIntrospector.findAutoDetectVisibility(annotatedClass, defaultVisibilityChecker);
        }
        ConfigOverride findOverride = this._configOverrides.findOverride(cls);
        VisibilityChecker<?> visibilityChecker2 = visibilityChecker;
        if (findOverride != null) {
            visibilityChecker2 = visibilityChecker.withOverrides(findOverride.getVisibility());
        }
        return visibilityChecker2;
    }

    public final PropertyName getFullRootName() {
        return this._rootName;
    }

    public final SubtypeResolver getSubtypeResolver() {
        return this._subtypeResolver;
    }

    public final T with(Base64Variant base64Variant) {
        return _withBase(this._base.with(base64Variant));
    }

    public final T with(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withAnnotationIntrospector(annotationIntrospector));
    }

    public final T with(MapperFeature mapperFeature, boolean z) {
        int mask = z ? mapperFeature.getMask() | this._mapperFeatures : (mapperFeature.getMask() ^ (-1)) & this._mapperFeatures;
        return mask == this._mapperFeatures ? this : _withMapperFeatures(mask);
    }

    public final T with(PropertyNamingStrategy propertyNamingStrategy) {
        return _withBase(this._base.withPropertyNamingStrategy(propertyNamingStrategy));
    }

    public final T with(HandlerInstantiator handlerInstantiator) {
        return _withBase(this._base.withHandlerInstantiator(handlerInstantiator));
    }

    public final T with(AccessorNamingStrategy.Provider provider) {
        return _withBase(this._base.withAccessorNaming(provider));
    }

    public final T with(TypeResolverBuilder<?> typeResolverBuilder) {
        return _withBase(this._base.withTypeResolverBuilder(typeResolverBuilder));
    }

    public final T with(TypeFactory typeFactory) {
        return _withBase(this._base.withTypeFactory(typeFactory));
    }

    public T with(DateFormat dateFormat) {
        return _withBase(this._base.withDateFormat(dateFormat));
    }

    public final T with(Locale locale) {
        return _withBase(this._base.with(locale));
    }

    public final T with(TimeZone timeZone) {
        return _withBase(this._base.with(timeZone));
    }

    public final T with(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i |= mapperFeature.getMask();
        }
        return i == this._mapperFeatures ? this : _withMapperFeatures(i);
    }

    public final T without(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i &= mapperFeature.getMask() ^ (-1);
        }
        return i == this._mapperFeatures ? this : _withMapperFeatures(i);
    }
}
