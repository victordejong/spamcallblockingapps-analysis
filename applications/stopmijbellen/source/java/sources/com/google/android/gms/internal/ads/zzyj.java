package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyj.class */
public final class zzyj implements zzwp {
    public static final zzww zza = zzyi.zza;
    private zzws zzg;
    private boolean zzi;
    private long zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private boolean zzo;
    private zzyh zzp;
    private zzyn zzq;
    private final zzfd zzb = new zzfd(4);
    private final zzfd zzc = new zzfd(9);
    private final zzfd zzd = new zzfd(11);
    private final zzfd zze = new zzfd();
    private final zzyk zzf = new zzyk();
    private int zzh = 1;

    private final zzfd zze(zzwq zzwqVar) throws IOException {
        if (this.zzm > this.zze.zzb()) {
            zzfd zzfdVar = this.zze;
            int zzb = zzfdVar.zzb();
            zzfdVar.zzD(new byte[Math.max(zzb + zzb, this.zzm)], 0);
        } else {
            this.zze.zzF(0);
        }
        this.zze.zzE(this.zzm);
        ((zzwk) zzwqVar).zzn(this.zze.zzH(), 0, this.zzm, false);
        return this.zze;
    }

    @RequiresNonNull({"extractorOutput"})
    private final void zzf() {
        if (!this.zzo) {
            this.zzg.zzL(new zzxo(-9223372036854775807L, 0L));
            this.zzo = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0008 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzwq r9, com.google.android.gms.internal.ads.zzxm r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzyj.zza(com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzxm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzg = zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        if (j == 0) {
            this.zzh = 1;
            this.zzi = false;
        } else {
            this.zzh = 3;
        }
        this.zzk = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        zzwk zzwkVar = (zzwk) zzwqVar;
        zzwkVar.zzm(this.zzb.zzH(), 0, 3, false);
        this.zzb.zzF(0);
        if (this.zzb.zzm() != 4607062) {
            return false;
        }
        zzwkVar.zzm(this.zzb.zzH(), 0, 2, false);
        this.zzb.zzF(0);
        if ((this.zzb.zzo() & 250) != 0) {
            return false;
        }
        zzwkVar.zzm(this.zzb.zzH(), 0, 4, false);
        this.zzb.zzF(0);
        int zze = this.zzb.zze();
        zzwqVar.zzj();
        zzwk zzwkVar2 = (zzwk) zzwqVar;
        zzwkVar2.zzl(zze, false);
        zzwkVar2.zzm(this.zzb.zzH(), 0, 4, false);
        this.zzb.zzF(0);
        return this.zzb.zze() == 0;
    }
}
