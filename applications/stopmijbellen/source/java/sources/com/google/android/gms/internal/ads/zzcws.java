package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcws.class */
final class zzcws implements zzfwm<String> {
    public final /* synthetic */ zzcwu zza;

    public zzcws(zzcwu zzcwuVar) {
        this.zza = zzcwuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(String str) {
        zzfeo zzfeoVar;
        zzfjp zzfjpVar;
        zzfdz zzfdzVar;
        zzfdn zzfdnVar;
        zzfdn zzfdnVar2;
        Context context;
        zzfeoVar = this.zza.zzh;
        zzfjpVar = this.zza.zzg;
        zzfdzVar = this.zza.zze;
        zzfdnVar = this.zza.zzf;
        zzfdnVar2 = this.zza.zzf;
        List<String> zzb = zzfjpVar.zzb(zzfdzVar, zzfdnVar, false, "", str, zzfdnVar2.zzc);
        zzt.zzp();
        context = this.zza.zza;
        int i = 1;
        if (true == com.google.android.gms.ads.internal.util.zzt.zzJ(context)) {
            i = 2;
        }
        zzfeoVar.zzc(zzb, i);
    }
}
