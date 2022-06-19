package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeho.class */
public final class zzeho implements zzfrz {
    public final /* synthetic */ long zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzezz zzc;
    public final /* synthetic */ zzfac zzd;
    public final /* synthetic */ zzehp zze;

    public zzeho(zzehp zzehpVar, long j, String str, zzezz zzezzVar, zzfac zzfacVar) {
        this.zze = zzehpVar;
        this.zza = j;
        this.zzb = str;
        this.zzc = zzezzVar;
        this.zzd = zzfacVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e5, code lost:
        if (r0 == 0) goto L33;
     */
    @Override // com.google.android.gms.internal.ads.zzfrz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r9) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeho.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zzb(Object obj) {
        Clock clock;
        boolean z;
        zzeeh zzeehVar;
        zzehq zzehqVar;
        clock = this.zze.zza;
        long mo38789a = clock.mo38789a() - this.zza;
        zzehp.zzf(this.zze, this.zzb, 0, mo38789a, this.zzc.zzac);
        z = this.zze.zzd;
        if (z) {
            zzehqVar = this.zze.zzb;
            zzehqVar.zza(this.zzd, this.zzc, 0, null, mo38789a);
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfX)).booleanValue()) {
            zzeehVar = this.zze.zze;
            zzeehVar.zzc(this.zzc, mo38789a, null);
        }
    }
}
