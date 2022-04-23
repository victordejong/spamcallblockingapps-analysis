package com.bumptech.glide.p029o;
/* renamed from: com.bumptech.glide.o.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/i.class */
public class C0855i {

    /* renamed from: a */
    private Class<?> f3825a;

    /* renamed from: b */
    private Class<?> f3826b;

    /* renamed from: c */
    private Class<?> f3827c;

    public C0855i() {
    }

    public C0855i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        m10763a(cls, cls2, cls3);
    }

    /* renamed from: a */
    public void m10763a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f3825a = cls;
        this.f3826b = cls2;
        this.f3827c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0855i.class != obj.getClass()) {
            return false;
        }
        C0855i iVar = (C0855i) obj;
        return this.f3825a.equals(iVar.f3825a) && this.f3826b.equals(iVar.f3826b) && C0857k.m10755c(this.f3827c, iVar.f3827c);
    }

    public int hashCode() {
        int hashCode = this.f3825a.hashCode();
        int hashCode2 = this.f3826b.hashCode();
        Class<?> cls = this.f3827c;
        return (((hashCode * 31) + hashCode2) * 31) + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f3825a + ", second=" + this.f3826b + '}';
    }
}
