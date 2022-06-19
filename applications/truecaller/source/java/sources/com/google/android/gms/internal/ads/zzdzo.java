package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzo.class */
public final class zzdzo implements zzfrz<zzfal> {
    public final /* synthetic */ zzdzp zza;

    public zzdzo(zzdzp zzdzpVar) {
        this.zza = zzdzpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        Pattern pattern;
        zzecu zzecuVar;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue()) {
            pattern = zzdzp.zzf;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (!matcher.matches()) {
                return;
            }
            String group = matcher.group(1);
            zzecuVar = this.zza.zze;
            zzecuVar.zza(Integer.parseInt(group));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzfal zzfalVar) {
        zzecu zzecuVar;
        zzecu zzecuVar2;
        zzfal zzfalVar2 = zzfalVar;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue()) {
            zzecuVar = this.zza.zze;
            zzecuVar.zza(zzfalVar2.zzb.zzb.zze);
            zzecuVar2 = this.zza.zze;
            zzecuVar2.zzc(zzfalVar2.zzb.zzb.zzf);
        }
    }
}
