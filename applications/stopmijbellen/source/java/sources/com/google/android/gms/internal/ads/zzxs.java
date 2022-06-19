package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxs.class */
public final class zzxs {
    public final int zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public zzxs(int i, byte[] bArr, int i2, int i3) {
        this.zza = i;
        this.zzb = bArr;
        this.zzc = i2;
        this.zzd = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzxs.class != obj.getClass()) {
            return false;
        }
        zzxs zzxsVar = (zzxs) obj;
        return this.zza == zzxsVar.zza && this.zzc == zzxsVar.zzc && this.zzd == zzxsVar.zzd && Arrays.equals(this.zzb, zzxsVar.zzb);
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.zzb) + (this.zza * 31)) * 31) + this.zzc) * 31) + this.zzd;
    }
}
