package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonLocation;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/UnresolvedId.class */
public class UnresolvedId {
    public final Object _id;
    public final JsonLocation _location;
    public final Class<?> _type;

    public UnresolvedId(Object obj, Class<?> cls, JsonLocation jsonLocation) {
        this._id = obj;
        this._type = cls;
        this._location = jsonLocation;
    }

    public String toString() {
        Object obj = this._id;
        Class<?> cls = this._type;
        return String.format("Object id [%s] (for %s) at %s", obj, cls == null ? "NULL" : cls.getName(), this._location);
    }
}
