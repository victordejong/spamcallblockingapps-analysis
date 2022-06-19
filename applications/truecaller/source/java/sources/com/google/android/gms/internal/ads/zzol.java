package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzol.class */
public final class zzol {
    private final zzamf zza = new zzamf(10);

    public final zzaiv zza(zznv zznvVar, zzaju zzajuVar) throws IOException {
        int i;
        zzaiv zzaivVar = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                ((zznp) zznvVar).zzh(this.zza.zzi(), 0, 10, false);
                this.zza.zzh(0);
                if (this.zza.zzr() != 4801587) {
                    break;
                }
                this.zza.zzk(3);
                int zzA = this.zza.zzA();
                int i3 = zzA + 10;
                if (zzaivVar == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.zza.zzi(), 0, bArr, 0, 10);
                    ((zznp) zznvVar).zzh(bArr, 10, zzA, false);
                    zzaivVar = zzajw.zza(bArr, i3, zzajuVar, new zzaix());
                } else {
                    ((zznp) zznvVar).zzj(zzA, false);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        zznvVar.zzl();
        ((zznp) zznvVar).zzj(i, false);
        return zzaivVar;
    }
}
