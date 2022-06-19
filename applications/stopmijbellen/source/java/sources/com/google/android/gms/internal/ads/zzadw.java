package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadw.class */
public final class zzadw implements zzadr {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    private final zzafg zzb;
    private final zzfd zzc;
    private final boolean[] zzd;
    private final zzadu zze;
    private final zzaeg zzf;
    private zzadv zzg;
    private long zzh;
    private String zzi;
    private zzxt zzj;
    private boolean zzk;
    private long zzl;

    public zzadw() {
        this(null);
    }

    public zzadw(zzafg zzafgVar) {
        this.zzb = zzafgVar;
        this.zzd = new boolean[4];
        this.zze = new zzadu(128);
        this.zzl = -9223372036854775807L;
        this.zzf = new zzaeg(178, 128);
        this.zzc = new zzfd();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0212  */
    @Override // com.google.android.gms.internal.ads.zzadr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzfd r7) {
        /*
            Method dump skipped, instructions count: 894
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadw.zza(com.google.android.gms.internal.ads.zzfd):void");
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzi = zzafdVar.zzb();
        zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 2);
        this.zzj = zzv;
        this.zzg = new zzadv(zzv);
        this.zzb.zzb(zzwsVar, zzafdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        zzeu.zze(this.zzd);
        this.zze.zzb();
        zzadv zzadvVar = this.zzg;
        if (zzadvVar != null) {
            zzadvVar.zzd();
        }
        this.zzf.zzb();
        this.zzh = 0L;
        this.zzl = -9223372036854775807L;
    }
}
