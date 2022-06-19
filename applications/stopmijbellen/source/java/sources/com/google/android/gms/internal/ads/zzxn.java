package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxn.class */
public final class zzxn {
    public final zzxq zza;
    public final zzxq zzb;

    public zzxn(zzxq zzxqVar, zzxq zzxqVar2) {
        this.zza = zzxqVar;
        this.zzb = zzxqVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzxn.class != obj.getClass()) {
            return false;
        }
        zzxn zzxnVar = (zzxn) obj;
        return this.zza.equals(zzxnVar.zza) && this.zzb.equals(zzxnVar.zzb);
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    public final String toString() {
        String zzxqVar = this.zza.toString();
        String concat = this.zza.equals(this.zzb) ? "" : ", ".concat(this.zzb.toString());
        return C1676a.m4788i(new StringBuilder(concat.length() + zzxqVar.length() + 2), "[", zzxqVar, concat, "]");
    }
}
