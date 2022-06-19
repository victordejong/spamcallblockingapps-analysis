package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelf.class */
public final class zzelf implements zzfwm {
    public final /* synthetic */ long zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzfdn zzc;
    public final /* synthetic */ zzfdq zzd;
    public final /* synthetic */ zzfjp zze;
    public final /* synthetic */ zzfdz zzf;
    public final /* synthetic */ zzelg zzg;

    public zzelf(zzelg zzelgVar, long j, String str, zzfdn zzfdnVar, zzfdq zzfdqVar, zzfjp zzfjpVar, zzfdz zzfdzVar) {
        this.zzg = zzelgVar;
        this.zza = j;
        this.zzb = str;
        this.zzc = zzfdnVar;
        this.zzd = zzfdqVar;
        this.zze = zzfjpVar;
        this.zzf = zzfdzVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0129, code lost:
        if (r0 == 0) goto L36;
     */
    @Override // com.google.android.gms.internal.ads.zzfwm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r9) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzelf.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zzb(Object obj) {
        Clock clock;
        boolean z;
        zzehy zzehyVar;
        zzelh zzelhVar;
        clock = this.zzg.zza;
        long elapsedRealtime = clock.elapsedRealtime() - this.zza;
        zzelg.zzg(this.zzg, this.zzb, 0, elapsedRealtime, this.zzc.zzad);
        z = this.zzg.zze;
        if (z) {
            zzelhVar = this.zzg.zzb;
            zzelhVar.zza(this.zzd, this.zzc, 0, null, elapsedRealtime);
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzge)).booleanValue()) {
            zzehyVar = this.zzg.zzf;
            zzehyVar.zzd(this.zzc, elapsedRealtime, null);
        }
    }
}
