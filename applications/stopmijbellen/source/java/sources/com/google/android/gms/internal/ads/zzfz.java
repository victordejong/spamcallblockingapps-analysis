package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfz.class */
public final class zzfz {
    public final String zza;
    public final zzab zzb;
    public final zzab zzc;
    public final int zzd;
    public final int zze;

    public zzfz(String str, zzab zzabVar, zzab zzabVar2, int i, int i2) {
        boolean z = false;
        int i3 = i2;
        if (i != 0) {
            i3 = i2;
            i3 = i2 == 0 ? 0 : i3;
            zzdy.zzd(z);
            zzdy.zzc(str);
            this.zza = str;
            Objects.requireNonNull(zzabVar);
            this.zzb = zzabVar;
            Objects.requireNonNull(zzabVar2);
            this.zzc = zzabVar2;
            this.zzd = i;
            this.zze = i3;
        }
        z = true;
        zzdy.zzd(z);
        zzdy.zzc(str);
        this.zza = str;
        Objects.requireNonNull(zzabVar);
        this.zzb = zzabVar;
        Objects.requireNonNull(zzabVar2);
        this.zzc = zzabVar2;
        this.zzd = i;
        this.zze = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzfz.class != obj.getClass()) {
            return false;
        }
        zzfz zzfzVar = (zzfz) obj;
        return this.zzd == zzfzVar.zzd && this.zze == zzfzVar.zze && this.zza.equals(zzfzVar.zza) && this.zzb.equals(zzfzVar.zzb) && this.zzc.equals(zzfzVar.zzc);
    }

    public final int hashCode() {
        int i = this.zzd;
        int m4793d = C1676a.m4793d(this.zza, (((i + 527) * 31) + this.zze) * 31, 31);
        return this.zzc.hashCode() + ((this.zzb.hashCode() + m4793d) * 31);
    }
}
