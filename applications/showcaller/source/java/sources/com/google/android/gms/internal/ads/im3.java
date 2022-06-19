package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/im3.class */
public final class im3 {

    /* renamed from: a */
    public final long f24359a;

    /* renamed from: b */
    public final long f24360b;

    public im3(long j, long j2) {
        this.f24359a = j;
        this.f24360b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof im3)) {
            return false;
        }
        im3 im3Var = (im3) obj;
        return this.f24359a == im3Var.f24359a && this.f24360b == im3Var.f24360b;
    }

    public final int hashCode() {
        return (((int) this.f24359a) * 31) + ((int) this.f24360b);
    }
}
