package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsz.class */
public final class zzsz implements zztb {
    private final String zzb;
    private String zzc;
    private zzox zzd;
    private int zzf;
    private int zzg;
    private long zzh;
    private zzafv zzi;
    private int zzj;
    private final zzamf zza = new zzamf(new byte[18]);
    private int zze = 0;
    private long zzk = -9223372036854775807L;

    public zzsz(String str) {
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        this.zze = 0;
        this.zzf = 0;
        this.zzg = 0;
        this.zzk = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        this.zzc = zzunVar.zzc();
        this.zzd = zznxVar.zzB(zzunVar.zzb(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzk = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0258  */
    @Override // com.google.android.gms.internal.ads.zztb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzamf r9) {
        /*
            Method dump skipped, instructions count: 735
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsz.zzd(com.google.android.gms.internal.ads.zzamf):void");
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
    }
}
