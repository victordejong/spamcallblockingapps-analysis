package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ud3.class */
final class ud3 {

    /* renamed from: a */
    private final Object f30585a;

    /* renamed from: b */
    private final int f30586b;

    public ud3(Object obj, int i) {
        this.f30585a = obj;
        this.f30586b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ud3)) {
            return false;
        }
        ud3 ud3Var = (ud3) obj;
        return this.f30585a == ud3Var.f30585a && this.f30586b == ud3Var.f30586b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f30585a) * 65535) + this.f30586b;
    }
}
