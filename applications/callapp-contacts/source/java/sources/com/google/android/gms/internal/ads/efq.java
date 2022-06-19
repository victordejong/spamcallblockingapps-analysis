package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efq.class */
public final class efq {

    /* renamed from: a */
    final long f48973a;

    /* renamed from: b */
    final String f48974b;

    /* renamed from: c */
    final int f48975c;

    public efq(long j, String str, int i) {
        this.f48973a = j;
        this.f48974b = str;
        this.f48975c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof efq)) {
            return false;
        }
        efq efqVar = (efq) obj;
        return efqVar.f48973a == this.f48973a && efqVar.f48975c == this.f48975c;
    }

    public final int hashCode() {
        return (int) this.f48973a;
    }
}
