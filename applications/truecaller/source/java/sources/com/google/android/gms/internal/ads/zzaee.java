package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaee.class */
public final class zzaee {
    public static final zzaee zza = new zzaee(0, 0, 0);
    public static final zzadw<zzaee> zze = zzaed.zza;
    public final int zzb = 0;
    public final int zzc;
    public final int zzd;

    public zzaee(int i, int i2, int i3) {
        this.zzc = i2;
        this.zzd = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaee)) {
            return false;
        }
        zzaee zzaeeVar = (zzaee) obj;
        int i = zzaeeVar.zzb;
        return this.zzc == zzaeeVar.zzc && this.zzd == zzaeeVar.zzd;
    }

    public final int hashCode() {
        return ((this.zzc + 16337) * 31) + this.zzd;
    }
}
