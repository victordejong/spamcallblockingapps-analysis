package com.bumptech.glide.p116g;
/* renamed from: com.bumptech.glide.g.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/i.class */
public final class C3642i {

    /* renamed from: a */
    private Class<?> f13752a;

    /* renamed from: b */
    private Class<?> f13753b;

    /* renamed from: c */
    private Class<?> f13754c;

    public C3642i() {
    }

    public C3642i(Class<?> cls, Class<?> cls2) {
        m37589a(cls, cls2, null);
    }

    public C3642i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        m37589a(cls, cls2, cls3);
    }

    /* renamed from: a */
    public final void m37589a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f13752a = cls;
        this.f13753b = cls2;
        this.f13754c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C3642i c3642i = (C3642i) obj;
        return this.f13752a.equals(c3642i.f13752a) && this.f13753b.equals(c3642i.f13753b) && C3644k.m37577a(this.f13754c, c3642i.f13754c);
    }

    public final int hashCode() {
        int hashCode = this.f13752a.hashCode();
        int hashCode2 = this.f13753b.hashCode();
        Class<?> cls = this.f13754c;
        return (((hashCode * 31) + hashCode2) * 31) + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f13752a + ", second=" + this.f13753b + '}';
    }
}
