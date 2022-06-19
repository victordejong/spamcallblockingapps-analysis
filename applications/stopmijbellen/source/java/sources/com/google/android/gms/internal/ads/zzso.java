package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzso.class */
public final class zzso implements Comparable<zzso> {
    public final boolean zza;
    private final zzsi zzb;
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
    public zzso(com.google.android.gms.internal.ads.zzab r5, com.google.android.gms.internal.ads.zzsi r6, int r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzso.<init>(com.google.android.gms.internal.ads.zzab, com.google.android.gms.internal.ads.zzsi, int, boolean):void");
    }

    /* renamed from: zza */
    public final int compareTo(zzso zzsoVar) {
        zzfuf zzfufVar;
        zzfuf zzfufVar2;
        zzfuf zzfufVar3;
        zzfuf zzfufVar4;
        if (!this.zza || !this.zzd) {
            zzfufVar3 = zzsp.zzb;
            zzfufVar = zzfufVar3.zza();
        } else {
            zzfufVar4 = zzsp.zzb;
            zzfufVar = zzfufVar4;
        }
        zzfsh zzc = zzfsh.zzj().zzd(this.zzd, zzsoVar.zzd).zzd(this.zza, zzsoVar.zza).zzd(this.zzc, zzsoVar.zzc).zzc(Integer.valueOf(this.zzg), Integer.valueOf(zzsoVar.zzg), zzfuf.zzc().zza());
        int i = this.zze;
        int i2 = zzsoVar.zze;
        boolean z = this.zzb.zzx;
        Integer valueOf = Integer.valueOf(i);
        Integer valueOf2 = Integer.valueOf(i2);
        zzfufVar2 = zzsp.zzc;
        return zzc.zzc(valueOf, valueOf2, zzfufVar2).zzc(Integer.valueOf(this.zzf), Integer.valueOf(zzsoVar.zzf), zzfufVar).zzc(Integer.valueOf(this.zze), Integer.valueOf(zzsoVar.zze), zzfufVar).zza();
    }
}
