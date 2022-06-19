package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacs.class */
public final class zzacs extends zzadc {
    private zzxd zza;
    private zzacr zzb;

    private static boolean zzd(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final long zza(zzfd zzfdVar) {
        if (zzd(zzfdVar.zzH())) {
            int i = (zzfdVar.zzH()[2] & 255) >> 4;
            int i2 = i;
            if (i != 6) {
                i2 = i;
                if (i == 7) {
                    i2 = 7;
                }
                int zza = zzwy.zza(zzfdVar, i2);
                zzfdVar.zzF(0);
                return zza;
            }
            zzfdVar.zzG(4);
            zzfdVar.zzu();
            int zza2 = zzwy.zza(zzfdVar, i2);
            zzfdVar.zzF(0);
            return zza2;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean zzc(zzfd zzfdVar, long j, zzacz zzaczVar) {
        byte[] zzH = zzfdVar.zzH();
        zzxd zzxdVar = this.zza;
        if (zzxdVar == null) {
            zzxd zzxdVar2 = new zzxd(zzH, 17);
            this.zza = zzxdVar2;
            zzaczVar.zza = zzxdVar2.zzc(Arrays.copyOfRange(zzH, 9, zzfdVar.zzd()), null);
            return true;
        } else if ((zzH[0] & Byte.MAX_VALUE) == 3) {
            zzxc zzb = zzxa.zzb(zzfdVar);
            zzxd zzf = zzxdVar.zzf(zzb);
            this.zza = zzf;
            this.zzb = new zzacr(zzf, zzb);
            return true;
        } else if (!zzd(zzH)) {
            return true;
        } else {
            zzacr zzacrVar = this.zzb;
            if (zzacrVar != null) {
                zzacrVar.zza(j);
                zzaczVar.zzb = this.zzb;
            }
            Objects.requireNonNull(zzaczVar.zza);
            return false;
        }
    }
}
