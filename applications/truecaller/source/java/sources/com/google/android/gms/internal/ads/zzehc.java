package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehc.class */
public final class zzehc implements zzeek<zzdmh, zzbxn, zzefy> {
    private final Context zza;
    private final zzdlb zzb;
    private zzbvv zzc;
    private final zzcgz zzd;

    public zzehc(Context context, zzdlb zzdlbVar, zzcgz zzcgzVar) {
        this.zza = context;
        this.zzb = zzdlbVar;
        this.zzd = zzcgzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw {
        try {
            zzeefVar.zzb.zzo(zzezzVar.zzV);
            if (this.zzd.zzc < ((Integer) zzbet.zzc().zzc(zzbjl.zzbd)).intValue()) {
                zzeefVar.zzb.zzn(zzezzVar.zzQ, zzezzVar.zzv.toString(), zzfalVar.zza.zza.zzd, new ObjectWrapper(this.zza), new zzeha(this, zzeefVar, null), zzeefVar.zzc);
            } else {
                zzeefVar.zzb.zzr(zzezzVar.zzQ, zzezzVar.zzv.toString(), zzfalVar.zza.zza.zzd, new ObjectWrapper(this.zza), new zzeha(this, zzeefVar, null), zzeefVar.zzc, zzfalVar.zza.zza.zzi);
            }
        } catch (RemoteException e) {
            throw new zzfaw(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzdmh zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzbxn, zzefy> zzeefVar) throws zzfaw, zzehs {
        if (zzfalVar.zza.zza.zzg.contains(Integer.toString(6))) {
            zzdmm zzaa = zzdmm.zzaa(this.zzc);
            if (!zzfalVar.zza.zza.zzg.contains(Integer.toString(zzaa.zzv()))) {
                throw new zzehs(1, "No corresponding native ad listener");
            }
            zzdmo zzU = this.zzb.zzU(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzdmy(zzaa), new zzdol(null, null, this.zzc, null));
            zzeefVar.zzc.zzc(zzU.zzg());
            return zzU.zzh();
        }
        throw new zzehs(2, "Unified must be used for RTB.");
    }
}
