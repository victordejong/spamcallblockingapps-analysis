package com.google.android.gms.internal.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzou.class */
public final class zzou {
    public static final zzou zza = new zzou(0, 0);
    public final long zzb;
    public final long zzc;

    public zzou(long j, long j2) {
        this.zzb = j;
        this.zzc = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzou.class != obj.getClass()) {
            return false;
        }
        zzou zzouVar = (zzou) obj;
        return this.zzb == zzouVar.zzb && this.zzc == zzouVar.zzc;
    }

    public final int hashCode() {
        return (((int) this.zzb) * 31) + ((int) this.zzc);
    }

    public final String toString() {
        long j = this.zzb;
        long j2 = this.zzc;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        return C22128a.m8693K2(sb, j2, "]");
    }
}
