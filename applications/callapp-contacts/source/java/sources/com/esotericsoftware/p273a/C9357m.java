package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.m */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/m.class */
public final class C9357m {

    /* renamed from: a */
    final int f32080a;

    /* renamed from: b */
    final String f32081b;

    /* renamed from: c */
    final String f32082c;

    /* renamed from: d */
    final String f32083d;

    /* renamed from: e */
    final boolean f32084e;

    public C9357m(int i, String str, String str2, String str3) {
        this(i, str, str2, str3, i == 9);
    }

    public C9357m(int i, String str, String str2, String str3, boolean z) {
        this.f32080a = i;
        this.f32081b = str;
        this.f32082c = str2;
        this.f32083d = str3;
        this.f32084e = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9357m)) {
            return false;
        }
        C9357m c9357m = (C9357m) obj;
        return this.f32080a == c9357m.f32080a && this.f32084e == c9357m.f32084e && this.f32081b.equals(c9357m.f32081b) && this.f32082c.equals(c9357m.f32082c) && this.f32083d.equals(c9357m.f32083d);
    }

    public final int hashCode() {
        return this.f32080a + (this.f32084e ? 64 : 0) + (this.f32081b.hashCode() * this.f32082c.hashCode() * this.f32083d.hashCode());
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f32081b);
        stringBuffer.append('.');
        stringBuffer.append(this.f32082c);
        stringBuffer.append(this.f32083d);
        stringBuffer.append(" (");
        stringBuffer.append(this.f32080a);
        stringBuffer.append(this.f32084e ? " itf" : "");
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}
