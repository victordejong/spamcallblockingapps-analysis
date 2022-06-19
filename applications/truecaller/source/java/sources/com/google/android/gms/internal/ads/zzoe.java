package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoe.class */
public final class zzoe {
    public static zzaiv zza(zznv zznvVar, boolean z) throws IOException {
        zzaiv zza = new zzol().zza(zznvVar, z ? null : zzajw.zza);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }

    public static zzog zzb(zzamf zzamfVar) {
        long[] jArr;
        long[] jArr2;
        zzamfVar.zzk(1);
        int zzr = zzamfVar.zzr();
        long zzg = zzamfVar.zzg();
        long j = zzr;
        int i = zzr / 18;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        int i2 = 0;
        while (true) {
            jArr = jArr3;
            jArr2 = jArr4;
            if (i2 >= i) {
                break;
            }
            long zzx = zzamfVar.zzx();
            if (zzx == -1) {
                jArr = Arrays.copyOf(jArr3, i2);
                jArr2 = Arrays.copyOf(jArr4, i2);
                break;
            }
            jArr3[i2] = zzx;
            jArr4[i2] = zzamfVar.zzx();
            zzamfVar.zzk(2);
            i2++;
        }
        zzamfVar.zzk((int) ((zzg + j) - zzamfVar.zzg()));
        return new zzog(jArr, jArr2);
    }
}
