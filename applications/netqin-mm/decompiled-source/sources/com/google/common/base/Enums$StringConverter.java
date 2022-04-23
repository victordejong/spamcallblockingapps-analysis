package com.google.common.base;

import java.io.Serializable;
import java.lang.Enum;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Enums$StringConverter.class */
public final class Enums$StringConverter<T extends Enum<T>> extends Converter<String, T> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Class<T> enumClass;

    public Enums$StringConverter(Class<T> cls) {
        C4933n.m24795a(cls);
        this.enumClass = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.Converter
    public /* bridge */ /* synthetic */ String doBackward(Object obj) {
        return doBackward((Enums$StringConverter<T>) ((Enum) obj));
    }

    public String doBackward(T t) {
        return t.name();
    }

    public T doForward(String str) {
        return (T) Enum.valueOf(this.enumClass, str);
    }

    @Override // com.google.common.base.Converter, p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        if (obj instanceof Enums$StringConverter) {
            return this.enumClass.equals(((Enums$StringConverter) obj).enumClass);
        }
        return false;
    }

    public int hashCode() {
        return this.enumClass.hashCode();
    }

    public String toString() {
        return "Enums.stringConverter(" + this.enumClass.getName() + ".class)";
    }
}
