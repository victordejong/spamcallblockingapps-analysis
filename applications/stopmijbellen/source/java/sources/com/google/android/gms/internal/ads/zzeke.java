package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeke.class */
public final class zzeke implements zzeib<zzdmw, zzbzo, zzejp> {
    private final Context zza;
    private final zzdnt zzb;

    public zzeke(Context context, zzdnt zzdntVar) {
        this.zza = context;
        this.zzb = zzdntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final /* bridge */ /* synthetic */ zzdmw zza(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzbzo, zzejp> zzehwVar) throws zzfek, zzelj {
        zzejy zzejyVar = new zzejy(zzfdnVar, zzehwVar.zzb, false);
        zzdmx zze = this.zzb.zze(new zzdbk(zzfdzVar, zzfdnVar, zzehwVar.zza), new zzdna(zzejyVar, null));
        zzejyVar.zzb(zze.zzc());
        zzehwVar.zzc.zzc(zze.zzh());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzeib
    public final void zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw<zzbzo, zzejp> zzehwVar) throws zzfek {
        try {
            zzehwVar.zzb.zzp(zzfdnVar.zzW);
            zzehwVar.zzb.zzk(zzfdnVar.zzR, zzfdnVar.zzw.toString(), zzfdzVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzekd(this, zzehwVar, null), zzehwVar.zzc);
        } catch (RemoteException e) {
            throw new zzfek(e);
        }
    }
}
