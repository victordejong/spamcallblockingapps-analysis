package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/ConfigOverrides.class */
public class ConfigOverrides implements Serializable {
    protected JsonInclude.Value _defaultInclusion;
    protected Boolean _defaultLeniency;
    protected Boolean _defaultMergeable;
    protected JsonSetter.Value _defaultSetterInfo;
    protected Map<Class<?>, MutableConfigOverride> _overrides;
    protected VisibilityChecker<?> _visibilityChecker;

    public ConfigOverrides() {
        this(null, JsonInclude.Value.empty(), JsonSetter.Value.empty(), VisibilityChecker.Std.defaultInstance(), null, null);
    }

    @Deprecated
    protected ConfigOverrides(Map<Class<?>, MutableConfigOverride> map, JsonInclude.Value value, JsonSetter.Value value2, VisibilityChecker<?> visibilityChecker, Boolean bool) {
        this(map, value, value2, visibilityChecker, bool, null);
    }

    protected ConfigOverrides(Map<Class<?>, MutableConfigOverride> map, JsonInclude.Value value, JsonSetter.Value value2, VisibilityChecker<?> visibilityChecker, Boolean bool, Boolean bool2) {
        this._overrides = map;
        this._defaultInclusion = value;
        this._defaultSetterInfo = value2;
        this._visibilityChecker = visibilityChecker;
        this._defaultMergeable = bool;
        this._defaultLeniency = bool2;
    }

    protected Map<Class<?>, MutableConfigOverride> _newMap() {
        return new HashMap();
    }

    public ConfigOverrides copy() {
        Map<Class<?>, MutableConfigOverride> map;
        if (this._overrides != null) {
            Map<Class<?>, MutableConfigOverride> _newMap = _newMap();
            Iterator<Map.Entry<Class<?>, MutableConfigOverride>> it2 = this._overrides.entrySet().iterator();
            while (true) {
                map = _newMap;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, MutableConfigOverride> next = it2.next();
                _newMap.put(next.getKey(), next.getValue().copy());
            }
        } else {
            map = null;
        }
        return new ConfigOverrides(map, this._defaultInclusion, this._defaultSetterInfo, this._visibilityChecker, this._defaultMergeable, this._defaultLeniency);
    }

    public JsonFormat.Value findFormatDefaults(Class<?> cls) {
        MutableConfigOverride mutableConfigOverride;
        JsonFormat.Value format;
        Map<Class<?>, MutableConfigOverride> map = this._overrides;
        if (map == null || (mutableConfigOverride = map.get(cls)) == null || (format = mutableConfigOverride.getFormat()) == null) {
            Boolean bool = this._defaultLeniency;
            return bool == null ? JsonFormat.Value.empty() : JsonFormat.Value.forLeniency(bool.booleanValue());
        }
        JsonFormat.Value value = format;
        if (!format.hasLenient()) {
            value = format.withLenient(this._defaultLeniency);
        }
        return value;
    }

    public MutableConfigOverride findOrCreateOverride(Class<?> cls) {
        if (this._overrides == null) {
            this._overrides = _newMap();
        }
        MutableConfigOverride mutableConfigOverride = this._overrides.get(cls);
        MutableConfigOverride mutableConfigOverride2 = mutableConfigOverride;
        if (mutableConfigOverride == null) {
            mutableConfigOverride2 = new MutableConfigOverride();
            this._overrides.put(cls, mutableConfigOverride2);
        }
        return mutableConfigOverride2;
    }

    public ConfigOverride findOverride(Class<?> cls) {
        Map<Class<?>, MutableConfigOverride> map = this._overrides;
        if (map == null) {
            return null;
        }
        return map.get(cls);
    }

    public JsonInclude.Value getDefaultInclusion() {
        return this._defaultInclusion;
    }

    public Boolean getDefaultMergeable() {
        return this._defaultMergeable;
    }

    public JsonSetter.Value getDefaultSetterInfo() {
        return this._defaultSetterInfo;
    }

    public VisibilityChecker<?> getDefaultVisibility() {
        return this._visibilityChecker;
    }

    public void setDefaultInclusion(JsonInclude.Value value) {
        this._defaultInclusion = value;
    }

    public void setDefaultLeniency(Boolean bool) {
        this._defaultLeniency = bool;
    }

    public void setDefaultMergeable(Boolean bool) {
        this._defaultMergeable = bool;
    }

    public void setDefaultSetterInfo(JsonSetter.Value value) {
        this._defaultSetterInfo = value;
    }

    public void setDefaultVisibility(VisibilityChecker<?> visibilityChecker) {
        this._visibilityChecker = visibilityChecker;
    }
}
