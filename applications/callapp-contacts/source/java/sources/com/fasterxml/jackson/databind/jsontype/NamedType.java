package com.fasterxml.jackson.databind.jsontype;

import java.io.Serializable;
import java.util.Objects;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/NamedType.class */
public final class NamedType implements Serializable {
    private static final long serialVersionUID = 1;
    protected final Class<?> _class;
    protected final int _hashCode;
    protected String _name;

    public NamedType(Class<?> cls) {
        this(cls, null);
    }

    public NamedType(Class<?> cls, String str) {
        this._class = cls;
        this._hashCode = cls.getName().hashCode() + (str == null ? 0 : str.hashCode());
        setName(str);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        NamedType namedType = (NamedType) obj;
        return this._class == namedType._class && Objects.equals(this._name, namedType._name);
    }

    public final String getName() {
        return this._name;
    }

    public final Class<?> getType() {
        return this._class;
    }

    public final boolean hasName() {
        return this._name != null;
    }

    public final int hashCode() {
        return this._hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r4.isEmpty() != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setName(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 == 0) goto Ld
            r0 = r4
            r5 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lf
        Ld:
            r0 = 0
            r5 = r0
        Lf:
            r0 = r3
            r1 = r5
            r0._name = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.jsontype.NamedType.setName(java.lang.String):void");
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[NamedType, class ");
        sb.append(this._class.getName());
        sb.append(", name: ");
        if (this._name == null) {
            str = JsonReaderKt.NULL;
        } else {
            str = "'" + this._name + "'";
        }
        sb.append(str);
        sb.append("]");
        return sb.toString();
    }
}
