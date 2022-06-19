package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqk.class */
public final class zzqk {
    private static final long[] zza = {128, 64, 32, 16, 8, 4, 2, 1};
    private final byte[] zzb = new byte[8];
    private int zzc;
    private int zzd;

    public static int zzd(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 >= 8) {
                i2 = -1;
                break;
            }
            i2 = i3 + 1;
            i3 = i2;
            if ((zza[i3] & i) != 0) {
                break;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    public static long zze(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (zza[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    public final void zza() {
        this.zzc = 0;
        this.zzd = 0;
    }

    public final long zzb(zznv zznvVar, boolean z, boolean z2, int i) throws IOException {
        if (this.zzc == 0) {
            if (!zznvVar.zza(this.zzb, 0, 1, z)) {
                return -1L;
            }
            int zzd = zzd(this.zzb[0] & 255);
            this.zzd = zzd;
            if (zzd == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.zzc = 1;
        }
        int i2 = this.zzd;
        if (i2 > i) {
            this.zzc = 0;
            return -2L;
        }
        if (i2 != 1) {
            ((zznp) zznvVar).zza(this.zzb, 1, i2 - 1, false);
        }
        this.zzc = 0;
        return zze(this.zzb, this.zzd, z2);
    }

    public final int zzc() {
        return this.zzd;
    }
}
