package com.google.android.gms.internal.ads;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzba.class */
public final class zzba {
    public final String zza;
    public final zzafv zzb;
    public final zzafv zzc;
    public final int zzd;
    public final int zze;

    public zzba(String str, zzafv zzafvVar, zzafv zzafvVar2, int i, int i2) {
        boolean z = false;
        int i3 = i2;
        if (i != 0) {
            i3 = i2;
            i3 = i2 == 0 ? 0 : i3;
            zzakt.zza(z);
            zzakt.zzf(str);
            this.zza = str;
            Objects.requireNonNull(zzafvVar);
            this.zzb = zzafvVar;
            Objects.requireNonNull(zzafvVar2);
            this.zzc = zzafvVar2;
            this.zzd = i;
            this.zze = i3;
        }
        z = true;
        zzakt.zza(z);
        zzakt.zzf(str);
        this.zza = str;
        Objects.requireNonNull(zzafvVar);
        this.zzb = zzafvVar;
        Objects.requireNonNull(zzafvVar2);
        this.zzc = zzafvVar2;
        this.zzd = i;
        this.zze = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzba.class != obj.getClass()) {
            return false;
        }
        zzba zzbaVar = (zzba) obj;
        return this.zzd == zzbaVar.zzd && this.zze == zzbaVar.zze && this.zza.equals(zzbaVar.zza) && this.zzb.equals(zzbaVar.zzb) && this.zzc.equals(zzbaVar.zzc);
    }

    public final int hashCode() {
        int i = this.zzd;
        int m8579q2 = C22128a.m8579q2(this.zza, (((i + 527) * 31) + this.zze) * 31, 31);
        return this.zzc.hashCode() + ((this.zzb.hashCode() + m8579q2) * 31);
    }
}
