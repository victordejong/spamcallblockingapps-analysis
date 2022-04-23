package com.google.firebase.components;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    final Class<?> f32275a;

    /* renamed from: b  reason: collision with root package name */
    final int f32276b;

    /* renamed from: c  reason: collision with root package name */
    final int f32277c;

    private r(Class<?> cls, int i, int i2) {
        this.f32275a = (Class) z.a(cls, "Null dependency anInterface.");
        this.f32276b = i;
        this.f32277c = i2;
    }

    public static r a(Class<?> cls) {
        return new r(cls, 0, 0);
    }

    public static r b(Class<?> cls) {
        return new r(cls, 1, 0);
    }

    public static r c(Class<?> cls) {
        return new r(cls, 2, 0);
    }

    public static r d(Class<?> cls) {
        return new r(cls, 0, 1);
    }

    public final boolean a() {
        return this.f32276b == 2;
    }

    public final boolean b() {
        return this.f32277c == 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f32275a == rVar.f32275a && this.f32276b == rVar.f32276b && this.f32277c == rVar.f32277c;
    }

    public final int hashCode() {
        return ((((this.f32275a.hashCode() ^ 1000003) * 1000003) ^ this.f32276b) * 1000003) ^ this.f32277c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f32275a);
        sb.append(", type=");
        int i = this.f32276b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.f32277c;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else if (i2 == 2) {
            str = "deferred";
        } else {
            throw new AssertionError("Unsupported injection: ".concat(String.valueOf(i2)));
        }
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
