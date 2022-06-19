package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavl.class */
public final class zzavl {
    public final List<byte[]> zza;
    public final int zzb;

    private zzavl(List<byte[]> list, int i) {
        this.zza = list;
        this.zzb = i;
    }

    public static zzavl zza(zzaux zzauxVar) throws zzanp {
        try {
            zzauxVar.zzj(21);
            int zzl = zzauxVar.zzl();
            int zzl2 = zzauxVar.zzl();
            int zzg = zzauxVar.zzg();
            int i = 0;
            for (int i2 = 0; i2 < zzl2; i2++) {
                zzauxVar.zzj(1);
                int zzm = zzauxVar.zzm();
                for (int i3 = 0; i3 < zzm; i3++) {
                    int zzm2 = zzauxVar.zzm();
                    i += zzm2 + 4;
                    zzauxVar.zzj(zzm2);
                }
            }
            zzauxVar.zzi(zzg);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < zzl2; i5++) {
                zzauxVar.zzj(1);
                int zzm3 = zzauxVar.zzm();
                for (int i6 = 0; i6 < zzm3; i6++) {
                    int zzm4 = zzauxVar.zzm();
                    System.arraycopy(zzauv.zza, 0, bArr, i4, 4);
                    int i7 = i4 + 4;
                    System.arraycopy(zzauxVar.zza, zzauxVar.zzg(), bArr, i7, zzm4);
                    i4 = i7 + zzm4;
                    zzauxVar.zzj(zzm4);
                }
            }
            return new zzavl(i == 0 ? null : Collections.singletonList(bArr), (zzl & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing HEVC config", e);
        }
    }
}
