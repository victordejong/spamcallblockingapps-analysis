package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgk.class */
public final class zzbgk extends zzbgn<zzbos> {
    public final /* synthetic */ View zza;
    public final /* synthetic */ HashMap zzb;
    public final /* synthetic */ HashMap zzc;
    public final /* synthetic */ zzbgm zzd;

    public zzbgk(zzbgm zzbgmVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.zzd = zzbgmVar;
        this.zza = view;
        this.zzb = hashMap;
        this.zzc = hashMap2;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbos zza() {
        zzbgm.zzs(this.zza.getContext(), "native_ad_view_holder_delegate");
        return new zzbkf();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbos zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzi(ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb), ObjectWrapper.wrap(this.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbos zzc() throws RemoteException {
        zzccv zzccvVar;
        zzbos zzbosVar;
        zzbqi zzbqiVar;
        zzblj.zzc(this.zza.getContext());
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhh)).booleanValue()) {
            try {
                zzbosVar = zzbor.zze(((zzbov) zzcjd.zzb(this.zza.getContext(), "com.google.android.gms.ads.ChimeraNativeAdViewHolderDelegateCreatorImpl", zzbgj.zza)).zze(ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb), ObjectWrapper.wrap(this.zzc)));
            } catch (RemoteException | zzcjc | NullPointerException e) {
                this.zzd.zzh = zzcct.zza(this.zza.getContext());
                zzccvVar = this.zzd.zzh;
                zzccvVar.zzd(e, "ClientApiBroker.createNativeAdViewHolderDelegate");
                zzbosVar = null;
            }
        } else {
            zzbqiVar = this.zzd.zzg;
            zzbosVar = zzbqiVar.zza(this.zza, this.zzb, this.zzc);
        }
        return zzbosVar;
    }
}
