package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ac2.class */
final class ac2 {

    /* renamed from: a */
    private final Object f5952a;

    /* renamed from: b */
    private final int f5953b;

    public ac2(Object obj, int i) {
        this.f5952a = obj;
        this.f5953b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ac2)) {
            return false;
        }
        ac2 ac2Var = (ac2) obj;
        return this.f5952a == ac2Var.f5952a && this.f5953b == ac2Var.f5953b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f5952a) * 65535) + this.f5953b;
    }
}
