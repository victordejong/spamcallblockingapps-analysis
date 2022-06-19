package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapw.class */
public final class zzapw {
    public final int zza = 1;
    public final byte[] zzb;

    public zzapw(int i, byte[] bArr) {
        this.zzb = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzapw.class == obj.getClass() && Arrays.equals(this.zzb, ((zzapw) obj).zzb);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzb) + 31;
    }
}
