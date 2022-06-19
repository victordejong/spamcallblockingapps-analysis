package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeib.class */
public final class zzeib implements zzeek<zzdrw, zzbxn, zzefy> {
    private final Context zza;
    private final zzdsb zzb;

    public zzeib(Context context, zzdsb zzdsbVar) {
        this.zza = context;
        this.zzb = zzdsbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw {
        try {
            zzeefVar.zzb.zzo(zzezzVar.zzV);
            if (zzfalVar.zza.zza.zzo.zza == 3) {
                zzeefVar.zzb.zzp(zzezzVar.zzQ, zzezzVar.zzv.toString(), zzfalVar.zza.zza.zzd, new ObjectWrapper(this.zza), new zzehz(this, zzeefVar, null), zzeefVar.zzc);
            } else {
                zzeefVar.zzb.zzl(zzezzVar.zzQ, zzezzVar.zzv.toString(), zzfalVar.zza.zza.zzd, new ObjectWrapper(this.zza), new zzehz(this, zzeefVar, null), zzeefVar.zzc);
            }
        } catch (RemoteException e) {
            zze.zzb("Remote exception loading a rewarded RTB ad", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzdrw zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw, zzehs {
        zzegh zzeghVar = new zzegh(zzezzVar, zzeefVar.zzb, true);
        zzdrx zzU = this.zzb.zzU(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzdry(zzeghVar));
        zzeghVar.zzb(zzU.zzd());
        zzeefVar.zzc.zzc(zzU.zzn());
        return zzU.zzh();
    }
}
