package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.ConfigFeature;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/MapperFeature.class */
public enum MapperFeature implements ConfigFeature {
    USE_ANNOTATIONS(true),
    AUTO_DETECT_CREATORS(true),
    AUTO_DETECT_FIELDS(true),
    AUTO_DETECT_GETTERS(true),
    AUTO_DETECT_IS_GETTERS(true),
    AUTO_DETECT_SETTERS(true),
    REQUIRE_SETTERS_FOR_GETTERS(false),
    USE_GETTERS_AS_SETTERS(true),
    CAN_OVERRIDE_ACCESS_MODIFIERS(true),
    OVERRIDE_PUBLIC_ACCESS_MODIFIERS(true),
    INFER_PROPERTY_MUTATORS(true),
    ALLOW_FINAL_FIELDS_AS_MUTATORS(true),
    PROPAGATE_TRANSIENT_MARKER(false),
    USE_STATIC_TYPING(false),
    DEFAULT_VIEW_INCLUSION(true),
    SORT_PROPERTIES_ALPHABETICALLY(false),
    ACCEPT_CASE_INSENSITIVE_PROPERTIES(false),
    USE_WRAPPER_NAME_AS_PROPERTY_NAME(false),
    USE_STD_BEAN_NAMING(false),
    ALLOW_EXPLICIT_PROPERTY_RENAMING(false),
    IGNORE_DUPLICATE_MODULE_REGISTRATIONS(true);
    
    public final boolean _defaultState;
    public final int _mask = 1 << ordinal();

    MapperFeature(boolean z) {
        this._defaultState = z;
    }

    @Override // com.fasterxml.jackson.databind.cfg.ConfigFeature
    public boolean enabledByDefault() {
        return this._defaultState;
    }

    @Override // com.fasterxml.jackson.databind.cfg.ConfigFeature
    public int getMask() {
        return this._mask;
    }
}
