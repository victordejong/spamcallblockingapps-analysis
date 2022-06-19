package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegn.class */
public final class zzegn implements zzeek<zzdji, zzbxn, zzefy> {
    private final Context zza;
    private final zzdkf zzb;

    public zzegn(Context context, zzdkf zzdkfVar) {
        this.zza = context;
        this.zzb = zzdkfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw {
        try {
            zzeefVar.zzb.zzo(zzezzVar.zzV);
            zzeefVar.zzb.zzj(zzezzVar.zzQ, zzezzVar.zzv.toString(), zzfalVar.zza.zza.zzd, new ObjectWrapper(this.zza), new zzegl(this, zzeefVar, null), zzeefVar.zzc);
        } catch (RemoteException e) {
            throw new zzfaw(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzdji zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw, zzehs {
        zzegh zzeghVar = new zzegh(zzezzVar, zzeefVar.zzb, false);
        zzdjj zzQ = this.zzb.zzQ(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzdjm(zzeghVar, null));
        zzeghVar.zzb(zzQ.zzd());
        zzeefVar.zzc.zzc(zzQ.zzg());
        return zzQ.zzh();
    }
}
