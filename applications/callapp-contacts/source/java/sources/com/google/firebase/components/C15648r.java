package com.google.firebase.components;
/* renamed from: com.google.firebase.components.r */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/r.class */
public final class C15648r {

    /* renamed from: a */
    final Class<?> f56055a;

    /* renamed from: b */
    final int f56056b;

    /* renamed from: c */
    final int f56057c;

    private C15648r(Class<?> cls, int i, int i2) {
        this.f56055a = (Class) C15656z.m8491a(cls, "Null dependency anInterface.");
        this.f56056b = i;
        this.f56057c = i2;
    }

    /* renamed from: a */
    public static C15648r m8512a(Class<?> cls) {
        return new C15648r(cls, 0, 0);
    }

    /* renamed from: b */
    public static C15648r m8510b(Class<?> cls) {
        return new C15648r(cls, 1, 0);
    }

    /* renamed from: c */
    public static C15648r m8509c(Class<?> cls) {
        return new C15648r(cls, 2, 0);
    }

    /* renamed from: d */
    public static C15648r m8508d(Class<?> cls) {
        return new C15648r(cls, 0, 1);
    }

    /* renamed from: a */
    public final boolean m8513a() {
        return this.f56056b == 2;
    }

    /* renamed from: b */
    public final boolean m8511b() {
        return this.f56057c == 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C15648r) {
            C15648r c15648r = (C15648r) obj;
            return this.f56055a == c15648r.f56055a && this.f56056b == c15648r.f56056b && this.f56057c == c15648r.f56057c;
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f56055a.hashCode() ^ 1000003) * 1000003) ^ this.f56056b) * 1000003) ^ this.f56057c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f56055a);
        sb.append(", type=");
        int i = this.f56056b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.f56057c;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else if (i2 != 2) {
            throw new AssertionError("Unsupported injection: ".concat(String.valueOf(i2)));
        } else {
            str = "deferred";
        }
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
