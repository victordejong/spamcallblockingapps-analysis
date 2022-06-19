package com.google.firebase.components;
/* renamed from: com.google.firebase.components.n */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/n.class */
public final class C4899n {

    /* renamed from: a */
    private final Class<?> f20997a;

    /* renamed from: b */
    private final int f20998b;

    /* renamed from: c */
    private final int f20999c;

    private C4899n(Class<?> cls, int i, int i2) {
        this.f20997a = (Class) C4903r.m2057a(cls, "Null dependency anInterface.");
        this.f20998b = i;
        this.f20999c = i2;
    }

    /* renamed from: a */
    public static C4899n m2072a(Class<?> cls) {
        return new C4899n(cls, 0, 0);
    }

    /* renamed from: b */
    public static C4899n m2070b(Class<?> cls) {
        return new C4899n(cls, 1, 0);
    }

    /* renamed from: c */
    public static C4899n m2068c(Class<?> cls) {
        return new C4899n(cls, 2, 0);
    }

    /* renamed from: a */
    public Class<?> m2073a() {
        return this.f20997a;
    }

    /* renamed from: b */
    public boolean m2071b() {
        boolean z = true;
        if (this.f20998b != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m2069c() {
        return this.f20998b == 2;
    }

    /* renamed from: d */
    public boolean m2067d() {
        return this.f20999c == 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4899n) {
            C4899n c4899n = (C4899n) obj;
            z = false;
            if (this.f20997a == c4899n.f20997a) {
                z = false;
                if (this.f20998b == c4899n.f20998b) {
                    z = false;
                    if (this.f20999c == c4899n.f20999c) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f20997a.hashCode() ^ 1000003) * 1000003) ^ this.f20998b) * 1000003) ^ this.f20999c;
    }

    public String toString() {
        return "Dependency{anInterface=" + this.f20997a + ", type=" + (this.f20998b == 1 ? "required" : this.f20998b == 0 ? "optional" : "set") + ", direct=" + (this.f20999c == 0) + "}";
    }
}
