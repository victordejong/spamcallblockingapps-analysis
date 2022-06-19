package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxh.class */
public final class zzxh {
    private final zzfd zza = new zzfd(10);

    public final zzdd zza(zzwq zzwqVar, zzzr zzzrVar) throws IOException {
        int i;
        zzdd zzddVar = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                ((zzwk) zzwqVar).zzm(this.zza.zzH(), 0, 10, false);
                this.zza.zzF(0);
                if (this.zza.zzm() != 4801587) {
                    break;
                }
                this.zza.zzG(3);
                int zzj = this.zza.zzj();
                int i3 = zzj + 10;
                if (zzddVar == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.zza.zzH(), 0, bArr, 0, 10);
                    ((zzwk) zzwqVar).zzm(bArr, 10, zzj, false);
                    zzddVar = zzzt.zza(bArr, i3, zzzrVar, new zzde());
                } else {
                    ((zzwk) zzwqVar).zzl(zzj, false);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        zzwqVar.zzj();
        ((zzwk) zzwqVar).zzl(i, false);
        return zzddVar;
    }
}
