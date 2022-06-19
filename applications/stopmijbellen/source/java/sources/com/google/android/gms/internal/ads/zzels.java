package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzels.class */
public final class zzels implements zzeib<zzdvn, zzbzo, zzejp> {
    private final Context zza;
    private final zzdvs zzb;

    public zzels(Context context, zzdvs zzdvsVar) {
        this.zza = context;
        this.zzb = zzdvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzdvn zza(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzbzo, zzejp> zzehwVar) throws zzfek, zzelj {
        zzejy zzejyVar = new zzejy(zzfdnVar, zzehwVar.zzb, true);
        zzdvo zze = this.zzb.zze(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzdvp(zzejyVar));
        zzejyVar.zzb(zze.zzc());
        zzehwVar.zzc.zzc(zze.zzn());
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzbzo, zzejp> zzehwVar) throws zzfek {
        try {
            zzehwVar.zzb.zzp(zzfdnVar.zzW);
            if (zzfdzVar.zza.zza.zzo.zza == 3) {
                zzehwVar.zzb.zzn(zzfdnVar.zzR, zzfdnVar.zzw.toString(), zzfdzVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzelr(this, zzehwVar, null), zzehwVar.zzc);
            } else {
                zzehwVar.zzb.zzo(zzfdnVar.zzR, zzfdnVar.zzw.toString(), zzfdzVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzelr(this, zzehwVar, null), zzehwVar.zzc);
            }
        } catch (RemoteException e) {
            zze.zzb("Remote exception loading a rewarded RTB ad", e);
        }
    }
}
