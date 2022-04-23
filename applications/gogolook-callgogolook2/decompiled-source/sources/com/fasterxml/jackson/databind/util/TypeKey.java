package com.fasterxml.jackson.databind.util;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.fasterxml.jackson.databind.JavaType;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/TypeKey.class */
public class TypeKey {
    public Class<?> _class;
    public int _hashCode;
    public boolean _isTyped;
    public JavaType _type;

    public TypeKey() {
    }

    public TypeKey(JavaType javaType, boolean z) {
        this._type = javaType;
        this._class = null;
        this._isTyped = z;
        this._hashCode = z ? typedHash(javaType) : untypedHash(javaType);
    }

    public TypeKey(Class<?> cls, boolean z) {
        this._class = cls;
        this._type = null;
        this._isTyped = z;
        this._hashCode = z ? typedHash(cls) : untypedHash(cls);
    }

    public static final int typedHash(JavaType javaType) {
        return javaType.hashCode() - 2;
    }

    public static final int typedHash(Class<?> cls) {
        return cls.getName().hashCode() + 1;
    }

    public static final int untypedHash(JavaType javaType) {
        return javaType.hashCode() - 1;
    }

    public static final int untypedHash(Class<?> cls) {
        return cls.getName().hashCode();
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != TypeKey.class) {
            return false;
        }
        TypeKey typeKey = (TypeKey) obj;
        if (typeKey._isTyped != this._isTyped) {
            return false;
        }
        Class<?> cls = this._class;
        if (cls == null) {
            return this._type.equals(typeKey._type);
        }
        if (typeKey._class == cls) {
            z = true;
        }
        return z;
    }

    public Class<?> getRawType() {
        return this._class;
    }

    public JavaType getType() {
        return this._type;
    }

    public final int hashCode() {
        return this._hashCode;
    }

    public boolean isTyped() {
        return this._isTyped;
    }

    public final String toString() {
        if (this._class != null) {
            return "{class: " + this._class.getName() + ", typed? " + this._isTyped + CssParser.BLOCK_END;
        }
        return "{type: " + this._type + ", typed? " + this._isTyped + CssParser.BLOCK_END;
    }
}
