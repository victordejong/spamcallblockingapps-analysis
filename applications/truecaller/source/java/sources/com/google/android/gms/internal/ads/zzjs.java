package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjs.class */
public final class zzjs implements Comparable<zzjs> {
    public final boolean zza;
    private final zzjn zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
        if (r0 <= 2.14748365E9f) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0082, code lost:
        if (r0 >= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
        if (r0 >= 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        if (r0 >= 0.0f) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzjs(com.google.android.gms.internal.ads.zzafv r5, com.google.android.gms.internal.ads.zzjn r6, int r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjs.<init>(com.google.android.gms.internal.ads.zzafv, com.google.android.gms.internal.ads.zzjn, int, boolean):void");
    }

    /* renamed from: zza */
    public final int compareTo(zzjs zzjsVar) {
        zzfpw zzfpwVar;
        zzfpw zzfpwVar2;
        zzfpw zzfpwVar3;
        zzfpw zzfpwVar4;
        if (!this.zza || !this.zzd) {
            zzfpwVar3 = zzjt.zzb;
            zzfpwVar = zzfpwVar3.zza();
        } else {
            zzfpwVar4 = zzjt.zzb;
            zzfpwVar = zzfpwVar4;
        }
        zzfny zza = zzfny.zzj().zzd(this.zzd, zzjsVar.zzd).zzd(this.zza, zzjsVar.zza).zzd(this.zzc, zzjsVar.zzc).zza(Integer.valueOf(this.zzg), Integer.valueOf(zzjsVar.zzg), zzfpw.zzb().zza());
        int i = this.zze;
        int i2 = zzjsVar.zze;
        boolean z = this.zzb.zzw;
        Integer valueOf = Integer.valueOf(i);
        Integer valueOf2 = Integer.valueOf(i2);
        zzfpwVar2 = zzjt.zzc;
        return zza.zza(valueOf, valueOf2, zzfpwVar2).zza(Integer.valueOf(this.zzf), Integer.valueOf(zzjsVar.zzf), zzfpwVar).zza(Integer.valueOf(this.zze), Integer.valueOf(zzjsVar.zze), zzfpwVar).zze();
    }
}
