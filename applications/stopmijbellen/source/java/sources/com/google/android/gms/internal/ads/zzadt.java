package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadt.class */
public final class zzadt implements zzadr {
    private static final double[] zza = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private String zzb;
    private zzxt zzc;
    private final zzafg zzd;
    private final zzfd zze;
    private final zzaeg zzf;
    private final boolean[] zzg;
    private final zzads zzh;
    private long zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;
    private boolean zzq;

    public zzadt() {
        this(null);
    }

    public zzadt(zzafg zzafgVar) {
        zzfd zzfdVar;
        this.zzd = zzafgVar;
        this.zzg = new boolean[4];
        this.zzh = new zzads(128);
        if (zzafgVar != null) {
            this.zzf = new zzaeg(178, 128);
            zzfdVar = new zzfd();
        } else {
            zzfdVar = null;
            this.zzf = null;
        }
        this.zze = zzfdVar;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01c1  */
    /* JADX WARN: Type inference failed for: r0v171, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v172 */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r1v74, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzadr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzfd r10) {
        /*
            Method dump skipped, instructions count: 972
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadt.zza(com.google.android.gms.internal.ads.zzfd):void");
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzb = zzafdVar.zzb();
        this.zzc = zzwsVar.zzv(zzafdVar.zza(), 2);
        zzafg zzafgVar = this.zzd;
        if (zzafgVar != null) {
            zzafgVar.zzb(zzwsVar, zzafdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        zzeu.zze(this.zzg);
        this.zzh.zzb();
        zzaeg zzaegVar = this.zzf;
        if (zzaegVar != null) {
            zzaegVar.zzb();
        }
        this.zzi = 0L;
        this.zzj = false;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }
}
