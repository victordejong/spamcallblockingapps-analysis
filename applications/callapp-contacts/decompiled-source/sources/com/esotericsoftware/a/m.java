package com.esotericsoftware.a;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    final int f18912a;

    /* renamed from: b  reason: collision with root package name */
    final String f18913b;

    /* renamed from: c  reason: collision with root package name */
    final String f18914c;

    /* renamed from: d  reason: collision with root package name */
    final String f18915d;
    final boolean e;

    public m(int i, String str, String str2, String str3) {
        this(i, str, str2, str3, i == 9);
    }

    public m(int i, String str, String str2, String str3, boolean z) {
        this.f18912a = i;
        this.f18913b = str;
        this.f18914c = str2;
        this.f18915d = str3;
        this.e = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f18912a == mVar.f18912a && this.e == mVar.e && this.f18913b.equals(mVar.f18913b) && this.f18914c.equals(mVar.f18914c) && this.f18915d.equals(mVar.f18915d);
    }

    public final int hashCode() {
        return this.f18912a + (this.e ? 64 : 0) + (this.f18913b.hashCode() * this.f18914c.hashCode() * this.f18915d.hashCode());
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f18913b);
        stringBuffer.append('.');
        stringBuffer.append(this.f18914c);
        stringBuffer.append(this.f18915d);
        stringBuffer.append(" (");
        stringBuffer.append(this.f18912a);
        stringBuffer.append(this.e ? " itf" : "");
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}
