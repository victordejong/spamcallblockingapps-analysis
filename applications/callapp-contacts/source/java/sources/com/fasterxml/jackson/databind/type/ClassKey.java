package com.fasterxml.jackson.databind.type;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/ClassKey.class */
public final class ClassKey implements Serializable, Comparable<ClassKey> {
    private Class<?> _class;
    private String _className;
    private int _hashCode;

    public ClassKey() {
        this._class = null;
        this._className = null;
        this._hashCode = 0;
    }

    public ClassKey(Class<?> cls) {
        this._class = cls;
        String name = cls.getName();
        this._className = name;
        this._hashCode = name.hashCode();
    }

    public final int compareTo(ClassKey classKey) {
        return this._className.compareTo(classKey._className);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass() == getClass() && ((ClassKey) obj)._class == this._class;
    }

    public final int hashCode() {
        return this._hashCode;
    }

    public final String toString() {
        return this._className;
    }
}
