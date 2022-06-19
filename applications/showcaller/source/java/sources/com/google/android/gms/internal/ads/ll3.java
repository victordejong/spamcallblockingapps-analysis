package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ll3.class */
final class ll3 {

    /* renamed from: a */
    public final int f26174a;

    /* renamed from: b */
    public final boolean f26175b;

    public ll3(int i, boolean z) {
        this.f26174a = i;
        this.f26175b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ll3.class != obj.getClass()) {
            return false;
        }
        ll3 ll3Var = (ll3) obj;
        return this.f26174a == ll3Var.f26174a && this.f26175b == ll3Var.f26175b;
    }

    public final int hashCode() {
        return (this.f26174a * 31) + (this.f26175b ? 1 : 0);
    }
}
