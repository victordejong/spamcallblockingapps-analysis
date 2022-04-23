package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.ConfigFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/cfg/MapperConfigBase.class */
public abstract class MapperConfigBase<CFG extends ConfigFeature, T extends MapperConfigBase<CFG, T>> extends MapperConfig<T> implements Serializable {
    public static final int DEFAULT_MAPPER_FEATURES = MapperConfig.collectFeatureDefaults(MapperFeature.class);
    public final ContextAttributes _attributes;
    public final SimpleMixInResolver _mixIns;
    public final PropertyName _rootName;
    public final RootNameLookup _rootNames;
    public final SubtypeResolver _subtypeResolver;
    public final Class<?> _view;

    public MapperConfigBase(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup) {
        super(baseSettings, DEFAULT_MAPPER_FEATURES);
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = subtypeResolver;
        this._rootNames = rootNameLookup;
        this._rootName = null;
        this._view = null;
        this._attributes = ContextAttributes.getEmpty();
    }

    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, int i) {
        super(mapperConfigBase, i);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
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

    public final PropertyName getFullRootName() {
        return this._rootName;
    }

    public final SubtypeResolver getSubtypeResolver() {
        return this._subtypeResolver;
    }
}
