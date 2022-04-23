package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.d5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/d5.class */
final class C2103d5 {

    /* renamed from: a */
    private final Object f9737a;

    /* renamed from: b */
    private final int f9738b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2103d5(Object obj, int i) {
        this.f9737a = obj;
        this.f9738b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2103d5)) {
            return false;
        }
        C2103d5 d5Var = (C2103d5) obj;
        return this.f9737a == d5Var.f9737a && this.f9738b == d5Var.f9738b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f9737a) * 65535) + this.f9738b;
    }
}
