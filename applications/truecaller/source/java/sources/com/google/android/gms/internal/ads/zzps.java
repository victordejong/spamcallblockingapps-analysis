package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.ContentFormat;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzps.class */
public final class zzps implements zznu {
    private zznx zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private zzakn zzg;
    private zznv zzh;
    private zzpv zzi;
    private zzrp zzj;
    private final zzamf zza = new zzamf(6);
    private long zzf = -1;

    private final int zze(zznv zznvVar) throws IOException {
        this.zza.zza(2);
        ((zznp) zznvVar).zzh(this.zza.zzi(), 0, 2, false);
        return this.zza.zzo();
    }

    private final void zzf() {
        zzg(new zzaiu[0]);
        zznx zznxVar = this.zzb;
        Objects.requireNonNull(zznxVar);
        zznxVar.zzC();
        this.zzb.zzD(new zzos(-9223372036854775807L, 0L));
        this.zzc = 6;
    }

    private final void zzg(zzaiu... zzaiuVarArr) {
        zznx zznxVar = this.zzb;
        Objects.requireNonNull(zznxVar);
        zzox zzB = zznxVar.zzB(1024, 4);
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzM(ContentFormat.IMAGE_JPEG);
        zzaftVar.zzL(new zzaiv(zzaiuVarArr));
        zzB.zzs(zzaftVar.zzah());
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        if (zze(zznvVar) != 65496) {
            return false;
        }
        int zze = zze(zznvVar);
        this.zzd = zze;
        int i = zze;
        if (zze == 65504) {
            this.zza.zza(2);
            zznp zznpVar = (zznp) zznvVar;
            zznpVar.zzh(this.zza.zzi(), 0, 2, false);
            zznpVar.zzj(this.zza.zzo() - 2, false);
            i = zze(zznvVar);
            this.zzd = i;
        }
        if (i != 65505) {
            return false;
        }
        zznp zznpVar2 = (zznp) zznvVar;
        zznpVar2.zzj(2, false);
        this.zza.zza(6);
        zznpVar2.zzh(this.zza.zzi(), 0, 6, false);
        return this.zza.zzt() == 1165519206 && this.zza.zzo() == 0;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzb = zznxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x02b1  */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    @Override // com.google.android.gms.internal.ads.zznu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(com.google.android.gms.internal.ads.zznv r14, com.google.android.gms.internal.ads.zzoq r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzps.zzc(com.google.android.gms.internal.ads.zznv, com.google.android.gms.internal.ads.zzoq):int");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        if (j == 0) {
            this.zzc = 0;
            this.zzj = null;
        } else if (this.zzc != 5) {
        } else {
            zzrp zzrpVar = this.zzj;
            Objects.requireNonNull(zzrpVar);
            zzrpVar.zzd(j, j2);
        }
    }
}
