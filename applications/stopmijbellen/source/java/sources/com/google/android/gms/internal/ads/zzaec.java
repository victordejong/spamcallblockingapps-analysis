package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaec.class */
public final class zzaec implements zzadr {
    private final zzaes zza;
    private String zzb;
    private zzxt zzc;
    private zzaeb zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzaeg zzg = new zzaeg(32, 128);
    private final zzaeg zzh = new zzaeg(33, 128);
    private final zzaeg zzi = new zzaeg(34, 128);
    private final zzaeg zzj = new zzaeg(39, 128);
    private final zzaeg zzk = new zzaeg(40, 128);
    private long zzm = -9223372036854775807L;
    private final zzfd zzn = new zzfd();

    public zzaec(zzaes zzaesVar) {
        this.zza = zzaesVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        this.zzd.zzb(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zza(bArr, i, i2);
            this.zzh.zza(bArr, i, i2);
            this.zzi.zza(bArr, i, i2);
        }
        this.zzj.zza(bArr, i, i2);
        this.zzk.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x063c  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x06de  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0703 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02c8  */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzadr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzfd r10) {
        /*
            Method dump skipped, instructions count: 1826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaec.zza(com.google.android.gms.internal.ads.zzfd):void");
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzb = zzafdVar.zzb();
        zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 2);
        this.zzc = zzv;
        this.zzd = new zzaeb(zzv);
        this.zza.zzb(zzwsVar, zzafdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzm = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        this.zzl = 0L;
        this.zzm = -9223372036854775807L;
        zzeu.zze(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        zzaeb zzaebVar = this.zzd;
        if (zzaebVar != null) {
            zzaebVar.zzc();
        }
    }
}
