package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfit.class */
final class zzfit {
    public final String zza;
    public final String zzb;

    public zzfit(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfit)) {
            return false;
        }
        zzfit zzfitVar = (zzfit) obj;
        return this.zza.equals(zzfitVar.zza) && this.zzb.equals(zzfitVar.zzb);
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }
}
