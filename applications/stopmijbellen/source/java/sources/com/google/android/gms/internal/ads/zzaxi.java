package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxi.class */
public final class zzaxi {
    public final List<byte[]> zza;
    public final int zzb;

    private zzaxi(List<byte[]> list, int i) {
        this.zza = list;
        this.zzb = i;
    }

    public static zzaxi zza(zzawu zzawuVar) throws zzapj {
        try {
            zzawuVar.zzw(21);
            int zzg = zzawuVar.zzg();
            int zzg2 = zzawuVar.zzg();
            int zzc = zzawuVar.zzc();
            int i = 0;
            for (int i2 = 0; i2 < zzg2; i2++) {
                zzawuVar.zzw(1);
                int zzj = zzawuVar.zzj();
                for (int i3 = 0; i3 < zzj; i3++) {
                    int zzj2 = zzawuVar.zzj();
                    i += zzj2 + 4;
                    zzawuVar.zzw(zzj2);
                }
            }
            zzawuVar.zzv(zzc);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < zzg2; i5++) {
                zzawuVar.zzw(1);
                int zzj3 = zzawuVar.zzj();
                for (int i6 = 0; i6 < zzj3; i6++) {
                    int zzj4 = zzawuVar.zzj();
                    System.arraycopy(zzaws.zza, 0, bArr, i4, 4);
                    int i7 = i4 + 4;
                    System.arraycopy(zzawuVar.zza, zzawuVar.zzc(), bArr, i7, zzj4);
                    i4 = i7 + zzj4;
                    zzawuVar.zzw(zzj4);
                }
            }
            return new zzaxi(i == 0 ? null : Collections.singletonList(bArr), (zzg & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzapj("Error parsing HEVC config", e);
        }
    }
}
