package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuy.class */
public final class zzuy {
    public static zzuw zza(zznv zznvVar) throws IOException {
        zzux zzuxVar;
        byte[] bArr;
        zzamf zzamfVar = new zzamf(16);
        if (zzux.zza(zznvVar, zzamfVar).zza != 1380533830) {
            return null;
        }
        byte[] zzi = zzamfVar.zzi();
        zznp zznpVar = (zznp) zznvVar;
        zznpVar.zzh(zzi, 0, 4, false);
        zzamfVar.zzh(0);
        if (zzamfVar.zzv() != 1463899717) {
            return null;
        }
        zzux zza = zzux.zza(zznvVar, zzamfVar);
        while (true) {
            zzuxVar = zza;
            if (zzuxVar.zza == 1718449184) {
                break;
            }
            zznpVar.zzj((int) zzuxVar.zzb, false);
            zza = zzux.zza(zznvVar, zzamfVar);
        }
        zzakt.zzd(zzuxVar.zzb >= 16);
        zznpVar.zzh(zzamfVar.zzi(), 0, 16, false);
        zzamfVar.zzh(0);
        int zzp = zzamfVar.zzp();
        int zzp2 = zzamfVar.zzp();
        int zzC = zzamfVar.zzC();
        int zzC2 = zzamfVar.zzC();
        int zzp3 = zzamfVar.zzp();
        int zzp4 = zzamfVar.zzp();
        int i = ((int) zzuxVar.zzb) - 16;
        if (i > 0) {
            bArr = new byte[i];
            zznpVar.zzh(bArr, 0, i, false);
        } else {
            bArr = zzamq.zzf;
        }
        return new zzuw(zzp, zzp2, zzC, zzC2, zzp3, zzp4, bArr);
    }
}
