package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjr.class */
public final class zzjr implements Comparable<zzjr> {
    public final boolean zza;
    private final boolean zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final boolean zzi;

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ff, code lost:
        if (r0 > 0) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzjr(com.google.android.gms.internal.ads.zzafv r5, com.google.android.gms.internal.ads.zzjn r6, int r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjr.<init>(com.google.android.gms.internal.ads.zzafv, com.google.android.gms.internal.ads.zzjn, int, java.lang.String):void");
    }

    /* renamed from: zza */
    public final int compareTo(zzjr zzjrVar) {
        zzfny zzb = zzfny.zzj().zzd(this.zzb, zzjrVar.zzb).zza(Integer.valueOf(this.zze), Integer.valueOf(zzjrVar.zze), zzfpw.zzb().zza()).zzb(this.zzf, zzjrVar.zzf).zzb(this.zzg, zzjrVar.zzg).zzd(this.zzc, zzjrVar.zzc).zza(Boolean.valueOf(this.zzd), Boolean.valueOf(zzjrVar.zzd), this.zzf == 0 ? zzfpw.zzb() : zzfpw.zzb().zza()).zzb(this.zzh, zzjrVar.zzh);
        zzfny zzfnyVar = zzb;
        if (this.zzg == 0) {
            zzfnyVar = zzb.zzc(false, false);
        }
        return zzfnyVar.zze();
    }
}
