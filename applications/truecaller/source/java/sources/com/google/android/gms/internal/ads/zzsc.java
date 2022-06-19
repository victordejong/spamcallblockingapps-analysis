package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsc.class */
public final class zzsc extends zzsm {
    private zzoh zza;
    private zzsb zzb;

    private static boolean zzd(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    public final void zza(boolean z) {
        super.zza(z);
        if (z) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    public final long zzb(zzamf zzamfVar) {
        if (zzd(zzamfVar.zzi())) {
            int i = (zzamfVar.zzi()[2] & 255) >> 4;
            int i2 = i;
            if (i != 6) {
                i2 = i;
                if (i == 7) {
                    i2 = 7;
                }
                int zzc = zzoc.zzc(zzamfVar, i2);
                zzamfVar.zzh(0);
                return zzc;
            }
            zzamfVar.zzk(4);
            zzamfVar.zzH();
            int zzc2 = zzoc.zzc(zzamfVar, i2);
            zzamfVar.zzh(0);
            return zzc2;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean zzc(zzamf zzamfVar, long j, zzsk zzskVar) {
        byte[] zzi = zzamfVar.zzi();
        zzoh zzohVar = this.zza;
        if (zzohVar == null) {
            zzoh zzohVar2 = new zzoh(zzi, 17);
            this.zza = zzohVar2;
            zzskVar.zza = zzohVar2.zzc(Arrays.copyOfRange(zzi, 9, zzamfVar.zze()), null);
            return true;
        } else if ((zzi[0] & Byte.MAX_VALUE) == 3) {
            zzog zzb = zzoe.zzb(zzamfVar);
            zzoh zze = zzohVar.zze(zzb);
            this.zza = zze;
            this.zzb = new zzsb(zze, zzb);
            return true;
        } else if (!zzd(zzi)) {
            return true;
        } else {
            zzsb zzsbVar = this.zzb;
            if (zzsbVar != null) {
                zzsbVar.zza(j);
                zzskVar.zzb = this.zzb;
            }
            Objects.requireNonNull(zzskVar.zza);
            return false;
        }
    }
}
