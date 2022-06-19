package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vr3.class */
public final class vr3 {

    /* renamed from: a */
    public static final vr3 f31336a = new vr3(0, 0);

    /* renamed from: b */
    public final long f31337b;

    /* renamed from: c */
    public final long f31338c;

    public vr3(long j, long j2) {
        this.f31337b = j;
        this.f31338c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vr3.class != obj.getClass()) {
            return false;
        }
        vr3 vr3Var = (vr3) obj;
        return this.f31337b == vr3Var.f31337b && this.f31338c == vr3Var.f31338c;
    }

    public final int hashCode() {
        return (((int) this.f31337b) * 31) + ((int) this.f31338c);
    }

    public final String toString() {
        long j = this.f31337b;
        long j2 = this.f31338c;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }
}
