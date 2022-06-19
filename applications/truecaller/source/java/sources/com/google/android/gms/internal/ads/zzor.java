package com.google.android.gms.internal.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzor.class */
public final class zzor {
    public final zzou zza;
    public final zzou zzb;

    public zzor(zzou zzouVar, zzou zzouVar2) {
        this.zza = zzouVar;
        this.zzb = zzouVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzor.class != obj.getClass()) {
            return false;
        }
        zzor zzorVar = (zzor) obj;
        return this.zza.equals(zzorVar.zza) && this.zzb.equals(zzorVar.zzb);
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    public final String toString() {
        String zzouVar = this.zza.toString();
        String concat = this.zza.equals(this.zzb) ? "" : ", ".concat(this.zzb.toString());
        return C22128a.m8606k(new StringBuilder(concat.length() + zzouVar.length() + 2), "[", zzouVar, concat, "]");
    }
}
