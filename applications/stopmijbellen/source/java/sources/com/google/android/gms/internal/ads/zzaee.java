package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaee.class */
public final class zzaee implements zzadr {
    private final String zza;
    private final zzfd zzb;
    private final zzfc zzc;
    private zzxt zzd;
    private String zze;
    private zzab zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private long zzk = -9223372036854775807L;
    private boolean zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private long zzq;
    private int zzr;
    private long zzs;
    private int zzt;
    private String zzu;

    public zzaee(String str) {
        this.zza = str;
        zzfd zzfdVar = new zzfd(1024);
        this.zzb = zzfdVar;
        byte[] zzH = zzfdVar.zzH();
        this.zzc = new zzfc(zzH, zzH.length);
    }

    private final int zzf(zzfc zzfcVar) throws zzbj {
        int zza = zzfcVar.zza();
        zzvr zzb = zzvs.zzb(zzfcVar, true);
        this.zzu = zzb.zzc;
        this.zzr = zzb.zza;
        this.zzt = zzb.zzb;
        return zza - zzfcVar.zza();
    }

    private static long zzg(zzfc zzfcVar) {
        return zzfcVar.zzc((zzfcVar.zzc(2) + 1) * 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x024d, code lost:
        if (r8.zzl == false) goto L93;
     */
    @Override // com.google.android.gms.internal.ads.zzadr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzfd r9) throws com.google.android.gms.internal.ads.zzbj {
        /*
            Method dump skipped, instructions count: 934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaee.zza(com.google.android.gms.internal.ads.zzfd):void");
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzd = zzwsVar.zzv(zzafdVar.zza(), 1);
        this.zze = zzafdVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzk = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        this.zzg = 0;
        this.zzk = -9223372036854775807L;
        this.zzl = false;
    }
}
