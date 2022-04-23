package com.bumptech.glide.g;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private Class<?> f7355a;

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f7356b;

    /* renamed from: c  reason: collision with root package name */
    private Class<?> f7357c;

    public i() {
    }

    public i(Class<?> cls, Class<?> cls2) {
        a(cls, cls2, null);
    }

    public i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        a(cls, cls2, cls3);
    }

    public final void a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f7355a = cls;
        this.f7356b = cls2;
        this.f7357c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f7355a.equals(iVar.f7355a) && this.f7356b.equals(iVar.f7356b) && k.a(this.f7357c, iVar.f7357c);
    }

    public final int hashCode() {
        int hashCode = this.f7355a.hashCode();
        int hashCode2 = this.f7356b.hashCode();
        Class<?> cls = this.f7357c;
        return (((hashCode * 31) + hashCode2) * 31) + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f7355a + ", second=" + this.f7356b + '}';
    }
}
