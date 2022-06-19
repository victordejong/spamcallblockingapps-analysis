package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedf.class */
final class zzedf implements zzfwm<zzfdz> {
    public final /* synthetic */ zzedg zza;

    public zzedf(zzedg zzedgVar) {
        this.zza = zzedgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        Pattern pattern;
        zzegl zzeglVar;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue()) {
            pattern = zzedg.zza;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (!matcher.matches()) {
                return;
            }
            String group = matcher.group(1);
            zzeglVar = this.zza.zzf;
            zzeglVar.zzg(Integer.parseInt(group));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzfdz zzfdzVar) {
        zzegl zzeglVar;
        zzegl zzeglVar2;
        zzfdz zzfdzVar2 = zzfdzVar;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue()) {
            zzeglVar = this.zza.zzf;
            zzeglVar.zzg(zzfdzVar2.zzb.zzb.zze);
            zzeglVar2 = this.zza.zzf;
            zzeglVar2.zzh(zzfdzVar2.zzb.zzb.zzf);
        }
    }
}
