package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzry.class */
public final class zzry {

    /* renamed from: a */
    public final long f28944a;

    /* renamed from: b */
    public final String f28945b;

    /* renamed from: c */
    public final int f28946c;

    public zzry(long j, String str, int i) {
        this.f28944a = j;
        this.f28945b = str;
        this.f28946c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzry)) {
            return false;
        }
        zzry zzryVar = (zzry) obj;
        return zzryVar.f28944a == this.f28944a && zzryVar.f28946c == this.f28946c;
    }

    public final int hashCode() {
        return (int) this.f28944a;
    }
}
