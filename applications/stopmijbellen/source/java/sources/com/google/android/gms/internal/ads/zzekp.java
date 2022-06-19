package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzby;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekp.class */
public final class zzekp implements zzeib<zzdpx, zzfev, zzejp> {
    private final Context zza;
    private final zzdop zzb;
    private final Executor zzc;

    public zzekp(Context context, zzdop zzdopVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdopVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfdz zzfdzVar, int i) {
        return zzfdzVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzdpx zza(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzfev, zzejp> zzehwVar) throws zzfek, zzelj {
        zzdqc zzdqcVar;
        zzbxs zzB = zzehwVar.zzb.zzB();
        zzbxt zzC = zzehwVar.zzb.zzC();
        zzbxw zzd = zzehwVar.zzb.zzd();
        if (zzd != null && zzc(zzfdzVar, 6)) {
            zzdqcVar = zzdqc.zzs(zzd);
        } else if (zzB != null && zzc(zzfdzVar, 6)) {
            zzdqcVar = zzdqc.zzad(zzB);
        } else if (zzB != null && zzc(zzfdzVar, 2)) {
            zzdqcVar = zzdqc.zzab(zzB);
        } else if (zzC != null && zzc(zzfdzVar, 6)) {
            zzdqcVar = zzdqc.zzae(zzC);
        } else if (zzC == null || !zzc(zzfdzVar, 1)) {
            throw new zzelj(1, "No native ad mappers");
        } else {
            zzdqcVar = zzdqc.zzac(zzC);
        }
        if (zzfdzVar.zza.zza.zzg.contains(Integer.toString(zzdqcVar.zzc()))) {
            zzdqe zze = this.zzb.zze(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzdqo(zzdqcVar), new zzdsb(zzC, zzB, zzd, null));
            zzehwVar.zzc.zzc(zze.zzi());
            zze.zzd().zzj(new zzcwl(zzehwVar.zzb), this.zzc);
            return zze.zza();
        }
        throw new zzelj(1, "No corresponding native ad listener");
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzfev, zzejp> zzehwVar) throws zzfek {
        zzfev zzfevVar = zzehwVar.zzb;
        Context context = this.zza;
        zzbfd zzbfdVar = zzfdzVar.zza.zza.zzd;
        String jSONObject = zzfdnVar.zzw.toString();
        String zzl = zzby.zzl(zzfdnVar.zzt);
        zzejp zzejpVar = zzehwVar.zzc;
        zzfef zzfefVar = zzfdzVar.zza.zza;
        zzfevVar.zzo(context, zzbfdVar, jSONObject, zzl, zzejpVar, zzfefVar.zzi, zzfefVar.zzg);
    }
}
