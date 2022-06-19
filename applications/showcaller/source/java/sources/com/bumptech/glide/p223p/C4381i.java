package com.bumptech.glide.p223p;
/* renamed from: com.bumptech.glide.p.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/i.class */
public class C4381i {

    /* renamed from: a */
    private Class<?> f13388a;

    /* renamed from: b */
    private Class<?> f13389b;

    /* renamed from: c */
    private Class<?> f13390c;

    public C4381i() {
    }

    public C4381i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        m22723a(cls, cls2, cls3);
    }

    /* renamed from: a */
    public void m22723a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f13388a = cls;
        this.f13389b = cls2;
        this.f13390c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4381i.class != obj.getClass()) {
            return false;
        }
        C4381i c4381i = (C4381i) obj;
        return this.f13388a.equals(c4381i.f13388a) && this.f13389b.equals(c4381i.f13389b) && C4383k.m22715c(this.f13390c, c4381i.f13390c);
    }

    public int hashCode() {
        int hashCode = this.f13388a.hashCode();
        int hashCode2 = this.f13389b.hashCode();
        Class<?> cls = this.f13390c;
        return (((hashCode * 31) + hashCode2) * 31) + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f13388a + ", second=" + this.f13389b + '}';
    }
}
