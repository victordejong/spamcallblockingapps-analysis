package com.bumptech.glide.i;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private Class<?> f3469a;

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f3470b;

    public g() {
    }

    public g(Class<?> cls, Class<?> cls2) {
        a(cls, cls2);
    }

    public final void a(Class<?> cls, Class<?> cls2) {
        this.f3469a = cls;
        this.f3470b = cls2;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                g gVar = (g) obj;
                if (!this.f3469a.equals(gVar.f3469a)) {
                    z = false;
                } else if (!this.f3470b.equals(gVar.f3470b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return (this.f3469a.hashCode() * 31) + this.f3470b.hashCode();
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f3469a + ", second=" + this.f3470b + '}';
    }
}
