package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxa.class */
public final class zzxa {
    public static zzdd zza(zzwq zzwqVar, boolean z) throws IOException {
        zzdd zza = new zzxh().zza(zzwqVar, z ? null : zzzt.zza);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }

    public static zzxc zzb(zzfd zzfdVar) {
        long[] jArr;
        long[] jArr2;
        zzfdVar.zzG(1);
        int zzm = zzfdVar.zzm();
        long zzc = zzfdVar.zzc();
        long j = zzm;
        int i = zzm / 18;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        int i2 = 0;
        while (true) {
            jArr = jArr3;
            jArr2 = jArr4;
            if (i2 >= i) {
                break;
            }
            long zzr = zzfdVar.zzr();
            if (zzr == -1) {
                jArr = Arrays.copyOf(jArr3, i2);
                jArr2 = Arrays.copyOf(jArr4, i2);
                break;
            }
            jArr3[i2] = zzr;
            jArr4[i2] = zzfdVar.zzr();
            zzfdVar.zzG(2);
            i2++;
        }
        zzfdVar.zzG((int) ((zzc + j) - zzfdVar.zzc()));
        return new zzxc(jArr, jArr2);
    }
}
