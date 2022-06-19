package com.google.firebase.components;
/* renamed from: com.google.firebase.components.q */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/q.class */
public final class C8881q {

    /* renamed from: a */
    private final Class<?> f38836a;

    /* renamed from: b */
    private final int f38837b;

    /* renamed from: c */
    private final int f38838c;

    private C8881q(Class<?> cls, int i, int i2) {
        this.f38836a = (Class) C8889y.m2419c(cls, "Null dependency anInterface.");
        this.f38837b = i;
        this.f38838c = i2;
    }

    /* renamed from: a */
    private static String m2446a(int i) {
        if (i != 0) {
            if (i == 1) {
                return "provider";
            }
            if (i == 2) {
                return "deferred";
            }
            throw new AssertionError("Unsupported injection: " + i);
        }
        return "direct";
    }

    /* renamed from: g */
    public static C8881q m2440g(Class<?> cls) {
        return new C8881q(cls, 0, 0);
    }

    /* renamed from: h */
    public static C8881q m2439h(Class<?> cls) {
        return new C8881q(cls, 0, 1);
    }

    /* renamed from: i */
    public static C8881q m2438i(Class<?> cls) {
        return new C8881q(cls, 1, 0);
    }

    /* renamed from: j */
    public static C8881q m2437j(Class<?> cls) {
        return new C8881q(cls, 2, 0);
    }

    /* renamed from: b */
    public Class<?> m2445b() {
        return this.f38836a;
    }

    /* renamed from: c */
    public boolean m2444c() {
        return this.f38838c == 2;
    }

    /* renamed from: d */
    public boolean m2443d() {
        return this.f38838c == 0;
    }

    /* renamed from: e */
    public boolean m2442e() {
        boolean z = true;
        if (this.f38837b != 1) {
            z = false;
        }
        return z;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C8881q) {
            C8881q c8881q = (C8881q) obj;
            z = false;
            if (this.f38836a == c8881q.f38836a) {
                z = false;
                if (this.f38837b == c8881q.f38837b) {
                    z = false;
                    if (this.f38838c == c8881q.f38838c) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public boolean m2441f() {
        return this.f38837b == 2;
    }

    public int hashCode() {
        return ((((this.f38836a.hashCode() ^ 1000003) * 1000003) ^ this.f38837b) * 1000003) ^ this.f38838c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f38836a);
        sb.append(", type=");
        int i = this.f38837b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        sb.append(m2446a(this.f38838c));
        sb.append("}");
        return sb.toString();
    }
}
