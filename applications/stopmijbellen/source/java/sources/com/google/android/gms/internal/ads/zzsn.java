package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsn.class */
public final class zzsn implements Comparable<zzsn> {
    public final boolean zza;
    private final boolean zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final boolean zzi;

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0101, code lost:
        if (r0 > 0) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzsn(com.google.android.gms.internal.ads.zzab r5, com.google.android.gms.internal.ads.zzsi r6, int r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.<init>(com.google.android.gms.internal.ads.zzab, com.google.android.gms.internal.ads.zzsi, int, java.lang.String):void");
    }

    /* renamed from: zza */
    public final int compareTo(zzsn zzsnVar) {
        zzfsh zzb = zzfsh.zzj().zzd(this.zzb, zzsnVar.zzb).zzc(Integer.valueOf(this.zze), Integer.valueOf(zzsnVar.zze), zzfuf.zzc().zza()).zzb(this.zzf, zzsnVar.zzf).zzb(this.zzg, zzsnVar.zzg).zzd(this.zzc, zzsnVar.zzc).zzc(Boolean.valueOf(this.zzd), Boolean.valueOf(zzsnVar.zzd), this.zzf == 0 ? zzfuf.zzc() : zzfuf.zzc().zza()).zzb(this.zzh, zzsnVar.zzh);
        zzfsh zzfshVar = zzb;
        if (this.zzg == 0) {
            zzfshVar = zzb.zze(false, false);
        }
        return zzfshVar.zza();
    }
}
