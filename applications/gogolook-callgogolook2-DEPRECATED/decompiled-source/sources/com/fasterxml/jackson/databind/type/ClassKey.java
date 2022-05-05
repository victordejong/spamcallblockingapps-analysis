package com.fasterxml.jackson.databind.type;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/type/ClassKey.class */
public final class ClassKey implements Comparable<ClassKey>, Serializable {
    public Class<?> _class;
    public String _className;
    public int _hashCode;

    public ClassKey() {
        this._class = null;
        this._className = null;
        this._hashCode = 0;
    }

    public ClassKey(Class<?> cls) {
        this._class = cls;
        this._className = cls.getName();
        this._hashCode = this._className.hashCode();
    }

    public int compareTo(ClassKey classKey) {
        return this._className.compareTo(classKey._className);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != ClassKey.class) {
            return false;
        }
        if (((ClassKey) obj)._class != this._class) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this._hashCode;
    }

    public String toString() {
        return this._className;
    }
}
