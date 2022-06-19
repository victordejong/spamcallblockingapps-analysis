package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekt.class */
public final class zzekt implements zzeib<zzdpx, zzbzo, zzejp> {
    private final Context zza;
    private final zzdop zzb;
    private zzbxw zzc;
    private final zzcjf zzd;

    public zzekt(Context context, zzdop zzdopVar, zzcjf zzcjfVar) {
        this.zza = context;
        this.zzb = zzdopVar;
        this.zzd = zzcjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzdpx zza(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzbzo, zzejp> zzehwVar) throws zzfek, zzelj {
        if (zzfdzVar.zza.zza.zzg.contains(Integer.toString(6))) {
            zzdqc zzs = zzdqc.zzs(this.zzc);
            if (!zzfdzVar.zza.zza.zzg.contains(Integer.toString(zzs.zzc()))) {
                throw new zzelj(1, "No corresponding native ad listener");
            }
            zzdqe zze = this.zzb.zze(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzdqo(zzs), new zzdsb(null, null, this.zzc, null));
            zzehwVar.zzc.zzc(zze.zzh());
            return zze.zza();
        }
        throw new zzelj(2, "Unified must be used for RTB.");
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzbzo, zzejp> zzehwVar) throws zzfek {
        try {
            zzehwVar.zzb.zzp(zzfdnVar.zzW);
            if (this.zzd.zzc < ((Integer) zzbgq.zzc().zzb(zzblj.zzbj)).intValue()) {
                zzehwVar.zzb.zzl(zzfdnVar.zzR, zzfdnVar.zzw.toString(), zzfdzVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeks(this, zzehwVar, null), zzehwVar.zzc);
            } else {
                zzehwVar.zzb.zzm(zzfdnVar.zzR, zzfdnVar.zzw.toString(), zzfdzVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeks(this, zzehwVar, null), zzehwVar.zzc, zzfdzVar.zza.zza.zzi);
            }
        } catch (RemoteException e) {
            throw new zzfek(e);
        }
    }
}
