package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyo.class */
public final class zzyo implements zzwp {
    private zzws zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private zzaak zzg;
    private zzwq zzh;
    private zzyr zzi;
    private zzacf zzj;
    private final zzfd zza = new zzfd(6);
    private long zzf = -1;

    private final int zze(zzwq zzwqVar) throws IOException {
        this.zza.zzC(2);
        ((zzwk) zzwqVar).zzm(this.zza.zzH(), 0, 2, false);
        return this.zza.zzo();
    }

    private final void zzf() {
        zzg(new zzdc[0]);
        zzws zzwsVar = this.zzb;
        Objects.requireNonNull(zzwsVar);
        zzwsVar.zzB();
        this.zzb.zzL(new zzxo(-9223372036854775807L, 0L));
        this.zzc = 6;
    }

    private final void zzg(zzdc... zzdcVarArr) {
        zzws zzwsVar = this.zzb;
        Objects.requireNonNull(zzwsVar);
        zzxt zzv = zzwsVar.zzv(1024, 4);
        zzz zzzVar = new zzz();
        zzzVar.zzz("image/jpeg");
        zzzVar.zzM(new zzdd(zzdcVarArr));
        zzv.zzk(zzzVar.zzY());
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x0294  */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzwq r14, com.google.android.gms.internal.ads.zzxm r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 839
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzyo.zza(com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzxm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzb = zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        if (j == 0) {
            this.zzc = 0;
            this.zzj = null;
        } else if (this.zzc != 5) {
        } else {
            zzacf zzacfVar = this.zzj;
            Objects.requireNonNull(zzacfVar);
            zzacfVar.zzc(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        if (zze(zzwqVar) != 65496) {
            return false;
        }
        int zze = zze(zzwqVar);
        this.zzd = zze;
        int i = zze;
        if (zze == 65504) {
            this.zza.zzC(2);
            zzwk zzwkVar = (zzwk) zzwqVar;
            zzwkVar.zzm(this.zza.zzH(), 0, 2, false);
            zzwkVar.zzl(this.zza.zzo() - 2, false);
            i = zze(zzwqVar);
            this.zzd = i;
        }
        if (i != 65505) {
            return false;
        }
        zzwk zzwkVar2 = (zzwk) zzwqVar;
        zzwkVar2.zzl(2, false);
        this.zza.zzC(6);
        zzwkVar2.zzm(this.zza.zzH(), 0, 6, false);
        return this.zza.zzs() == 1165519206 && this.zza.zzo() == 0;
    }
}
