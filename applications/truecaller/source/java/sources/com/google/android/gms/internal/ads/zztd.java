package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztd.class */
public final class zztd implements zztb {
    private static final double[] zzc = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private String zza;
    private zzox zzb;
    private final zzuq zzd;
    private final zzamf zze;
    private final zztq zzf;
    private final boolean[] zzg;
    private final zztc zzh;
    private long zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;
    private boolean zzq;

    public zztd() {
        this(null);
    }

    public zztd(zzuq zzuqVar) {
        zzamf zzamfVar;
        this.zzd = zzuqVar;
        this.zzg = new boolean[4];
        this.zzh = new zztc(128);
        if (zzuqVar != null) {
            this.zzf = new zztq(178, 128);
            zzamfVar = new zzamf();
        } else {
            zzamfVar = null;
            this.zzf = null;
        }
        this.zze = zzamfVar;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        zzalw.zze(this.zzg);
        this.zzh.zza();
        zztq zztqVar = this.zzf;
        if (zztqVar != null) {
            zztqVar.zza();
        }
        this.zzi = 0L;
        this.zzj = false;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        this.zza = zzunVar.zzc();
        this.zzb = zznxVar.zzB(zzunVar.zzb(), 2);
        zzuq zzuqVar = this.zzd;
        if (zzuqVar != null) {
            zzuqVar.zza(zznxVar, zzunVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
        this.zzm = j;
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
    @Override // com.google.android.gms.internal.ads.zztb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzamf r10) {
        /*
            Method dump skipped, instructions count: 972
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztd.zzd(com.google.android.gms.internal.ads.zzamf):void");
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
    }
}
