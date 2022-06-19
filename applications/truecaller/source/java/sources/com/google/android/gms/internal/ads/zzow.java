package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzow.class */
public final class zzow {
    public final int zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public zzow(int i, byte[] bArr, int i2, int i3) {
        this.zza = i;
        this.zzb = bArr;
        this.zzc = i2;
        this.zzd = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzow.class != obj.getClass()) {
            return false;
        }
        zzow zzowVar = (zzow) obj;
        return this.zza == zzowVar.zza && this.zzc == zzowVar.zzc && this.zzd == zzowVar.zzd && Arrays.equals(this.zzb, zzowVar.zzb);
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.zzb) + (this.zza * 31)) * 31) + this.zzc) * 31) + this.zzd;
    }
}
