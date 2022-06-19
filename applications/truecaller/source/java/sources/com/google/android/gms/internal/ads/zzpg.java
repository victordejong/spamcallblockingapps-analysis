package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpg.class */
public final class zzpg implements zznk {
    private final zzoh zza;
    private final int zzb;
    private final zzob zzc = new zzob();

    public /* synthetic */ zzpg(zzoh zzohVar, int i, zzph zzphVar) {
        this.zza = zzohVar;
        this.zzb = i;
    }

    private final long zzc(zznv zznvVar) throws IOException {
        while (zznvVar.zzm() < zznvVar.zzo() - 6) {
            zzoh zzohVar = this.zza;
            int i = this.zzb;
            zzob zzobVar = this.zzc;
            long zzm = zznvVar.zzm();
            byte[] bArr = new byte[2];
            zznp zznpVar = (zznp) zznvVar;
            zznpVar.zzh(bArr, 0, 2, false);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                zznvVar.zzl();
                zznpVar.zzj((int) (zzm - zznvVar.zzn()), false);
            } else {
                zzamf zzamfVar = new zzamf(16);
                System.arraycopy(bArr, 0, zzamfVar.zzi(), 0, 2);
                zzamfVar.zzf(zzny.zzb(zznvVar, zzamfVar.zzi(), 2, 14));
                zznvVar.zzl();
                zznpVar.zzj((int) (zzm - zznvVar.zzn()), false);
                if (zzoc.zza(zzamfVar, zzohVar, i, zzobVar)) {
                    break;
                }
            }
            zznpVar.zzj(1, false);
        }
        if (zznvVar.zzm() >= zznvVar.zzo() - 6) {
            ((zznp) zznvVar).zzj((int) (zznvVar.zzo() - zznvVar.zzm()), false);
            return this.zza.zzj;
        }
        return this.zzc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zznk
    public final zznj zza(zznv zznvVar, long j) throws IOException {
        long zzn = zznvVar.zzn();
        long zzc = zzc(zznvVar);
        long zzm = zznvVar.zzm();
        ((zznp) zznvVar).zzj(Math.max(6, this.zza.zzc), false);
        long zzc2 = zzc(zznvVar);
        return (zzc > j || zzc2 <= j) ? zzc2 <= j ? zznj.zze(zzc2, zznvVar.zzm()) : zznj.zzd(zzc, zzn) : zznj.zzf(zzm);
    }

    @Override // com.google.android.gms.internal.ads.zznk
    public final void zzb() {
    }
}
