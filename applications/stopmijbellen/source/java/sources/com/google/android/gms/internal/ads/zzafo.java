package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafo.class */
final class zzafo {
    public static zzafm zza(zzwq zzwqVar) throws IOException {
        zzafn zzafnVar;
        byte[] bArr;
        zzfd zzfdVar = new zzfd(16);
        if (zzafn.zza(zzwqVar, zzfdVar).zza != 1380533830) {
            return null;
        }
        byte[] zzH = zzfdVar.zzH();
        zzwk zzwkVar = (zzwk) zzwqVar;
        zzwkVar.zzm(zzH, 0, 4, false);
        zzfdVar.zzF(0);
        if (zzfdVar.zze() != 1463899717) {
            return null;
        }
        zzafn zza = zzafn.zza(zzwqVar, zzfdVar);
        while (true) {
            zzafnVar = zza;
            if (zzafnVar.zza == 1718449184) {
                break;
            }
            zzwkVar.zzl((int) zzafnVar.zzb, false);
            zza = zzafn.zza(zzwqVar, zzfdVar);
        }
        zzdy.zzf(zzafnVar.zzb >= 16);
        zzwkVar.zzm(zzfdVar.zzH(), 0, 16, false);
        zzfdVar.zzF(0);
        int zzi = zzfdVar.zzi();
        int zzi2 = zzfdVar.zzi();
        int zzh = zzfdVar.zzh();
        int zzh2 = zzfdVar.zzh();
        int zzi3 = zzfdVar.zzi();
        int zzi4 = zzfdVar.zzi();
        int i = ((int) zzafnVar.zzb) - 16;
        if (i > 0) {
            bArr = new byte[i];
            zzwkVar.zzm(bArr, 0, i, false);
        } else {
            bArr = zzfn.zzf;
        }
        return new zzafm(zzi, zzi2, zzh, zzh2, zzi3, zzi4, bArr);
    }
}
