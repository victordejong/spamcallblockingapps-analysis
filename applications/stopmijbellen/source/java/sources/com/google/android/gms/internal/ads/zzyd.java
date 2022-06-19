package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyd.class */
final class zzyd implements zzwf {
    private final zzxd zza;
    private final int zzb;
    private final zzwx zzc = new zzwx();

    public /* synthetic */ zzyd(zzxd zzxdVar, int i, zzyc zzycVar) {
        this.zza = zzxdVar;
        this.zzb = i;
    }

    private final long zzc(zzwq zzwqVar) throws IOException {
        while (zzwqVar.zzd() < zzwqVar.zzc() - 6) {
            zzxd zzxdVar = this.zza;
            int i = this.zzb;
            zzwx zzwxVar = this.zzc;
            long zzd = zzwqVar.zzd();
            byte[] bArr = new byte[2];
            zzwk zzwkVar = (zzwk) zzwqVar;
            zzwkVar.zzm(bArr, 0, 2, false);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                zzwqVar.zzj();
                zzwkVar.zzl((int) (zzd - zzwqVar.zze()), false);
            } else {
                zzfd zzfdVar = new zzfd(16);
                System.arraycopy(bArr, 0, zzfdVar.zzH(), 0, 2);
                zzfdVar.zzE(zzwt.zza(zzwqVar, zzfdVar.zzH(), 2, 14));
                zzwqVar.zzj();
                zzwkVar.zzl((int) (zzd - zzwqVar.zze()), false);
                if (zzwy.zzc(zzfdVar, zzxdVar, i, zzwxVar)) {
                    break;
                }
            }
            zzwkVar.zzl(1, false);
        }
        if (zzwqVar.zzd() >= zzwqVar.zzc() - 6) {
            ((zzwk) zzwqVar).zzl((int) (zzwqVar.zzc() - zzwqVar.zzd()), false);
            return this.zza.zzj;
        }
        return this.zzc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwf
    public final zzwe zza(zzwq zzwqVar, long j) throws IOException {
        long zze = zzwqVar.zze();
        long zzc = zzc(zzwqVar);
        long zzd = zzwqVar.zzd();
        ((zzwk) zzwqVar).zzl(Math.max(6, this.zza.zzc), false);
        long zzc2 = zzc(zzwqVar);
        return (zzc > j || zzc2 <= j) ? zzc2 <= j ? zzwe.zzf(zzc2, zzwqVar.zzd()) : zzwe.zzd(zzc, zze) : zzwe.zze(zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzwf
    public final /* synthetic */ void zzb() {
    }
}
