package com.fasterxml.jackson.core;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonLocation.class */
public class JsonLocation implements Serializable {

    /* renamed from: d */
    public static final JsonLocation f13581d = new JsonLocation(null, -1, -1, -1, -1);
    private static final long serialVersionUID = 1;
    protected final int _columnNr;
    protected final int _lineNr;
    protected final long _totalBytes;
    protected final long _totalChars;

    /* renamed from: e */
    final transient Object f13582e;

    public JsonLocation(Object obj, long j, int i, int i2) {
        this(obj, -1L, j, i, i2);
    }

    public JsonLocation(Object obj, long j, long j2, int i, int i2) {
        this.f13582e = obj;
        this._totalBytes = j;
        this._totalChars = j2;
        this._lineNr = i;
        this._columnNr = i2;
    }

    /* renamed from: a */
    private int m22420a(StringBuilder sb, String str) {
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return str.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.StringBuilder _appendSourceDesc(java.lang.StringBuilder r10) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonLocation._appendSourceDesc(java.lang.StringBuilder):java.lang.StringBuilder");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof JsonLocation)) {
            return false;
        }
        JsonLocation jsonLocation = (JsonLocation) obj;
        Object obj2 = this.f13582e;
        if (obj2 == null) {
            if (jsonLocation.f13582e != null) {
                return false;
            }
        } else if (!obj2.equals(jsonLocation.f13582e)) {
            return false;
        }
        if (this._lineNr != jsonLocation._lineNr || this._columnNr != jsonLocation._columnNr || this._totalChars != jsonLocation._totalChars || getByteOffset() != jsonLocation.getByteOffset()) {
            z = false;
        }
        return z;
    }

    public long getByteOffset() {
        return this._totalBytes;
    }

    public long getCharOffset() {
        return this._totalChars;
    }

    public int getColumnNr() {
        return this._columnNr;
    }

    public int getLineNr() {
        return this._lineNr;
    }

    public Object getSourceRef() {
        return this.f13582e;
    }

    public int hashCode() {
        Object obj = this.f13582e;
        return ((((obj == null ? 1 : obj.hashCode()) ^ this._lineNr) + this._columnNr) ^ ((int) this._totalChars)) + ((int) this._totalBytes);
    }

    public String sourceDescription() {
        return _appendSourceDesc(new StringBuilder(100)).toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(80);
        sb.append("[Source: ");
        _appendSourceDesc(sb);
        sb.append("; line: ");
        sb.append(this._lineNr);
        sb.append(", column: ");
        sb.append(this._columnNr);
        sb.append(']');
        return sb.toString();
    }
}
