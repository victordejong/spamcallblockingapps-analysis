package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadk.class */
public final class zzadk implements zzadr {
    private final zzfc zza;
    private final zzfd zzb;
    private final String zzc;
    private String zzd;
    private zzxt zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private boolean zzi;
    private long zzj;
    private zzab zzk;
    private int zzl;
    private long zzm;

    public zzadk() {
        this(null);
    }

    public zzadk(String str) {
        zzfc zzfcVar = new zzfc(new byte[16], 16);
        this.zza = zzfcVar;
        this.zzb = new zzfd(zzfcVar.zza);
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzi = false;
        this.zzm = -9223372036854775807L;
        this.zzc = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0211  */
    @Override // com.google.android.gms.internal.ads.zzadr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzfd r9) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadk.zza(com.google.android.gms.internal.ads.zzfd):void");
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzd = zzafdVar.zzb();
        this.zze = zzwsVar.zzv(zzafdVar.zza(), 1);
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
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzi = false;
        this.zzm = -9223372036854775807L;
    }
}
