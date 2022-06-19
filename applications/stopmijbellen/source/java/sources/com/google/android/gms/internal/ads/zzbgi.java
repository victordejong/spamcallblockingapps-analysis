package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgi.class */
public final class zzbgi extends zzbgn<zzbom> {
    public final /* synthetic */ FrameLayout zza;
    public final /* synthetic */ FrameLayout zzb;
    public final /* synthetic */ Context zzc;
    public final /* synthetic */ zzbgm zzd;

    public zzbgi(zzbgm zzbgmVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzd = zzbgmVar;
        this.zza = frameLayout;
        this.zzb = frameLayout2;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbom zza() {
        zzbgm.zzs(this.zzc, "native_ad_view_delegate");
        return new zzbke();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbom zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzh(ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbom zzc() throws RemoteException {
        zzccv zzccvVar;
        zzbom zzbomVar;
        zzbqh zzbqhVar;
        zzblj.zzc(this.zzc);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhh)).booleanValue()) {
            try {
                zzbomVar = zzbol.zzbJ(((zzbop) zzcjd.zzb(this.zzc, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", zzbgh.zza)).zze(ObjectWrapper.wrap(this.zzc), ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb), 214106000));
            } catch (RemoteException | zzcjc | NullPointerException e) {
                this.zzd.zzh = zzcct.zza(this.zzc);
                zzccvVar = this.zzd.zzh;
                zzccvVar.zzd(e, "ClientApiBroker.createNativeAdViewDelegate");
                zzbomVar = null;
            }
        } else {
            zzbqhVar = this.zzd.zzd;
            zzbomVar = zzbqhVar.zza(this.zzc, this.zza, this.zzb);
        }
        return zzbomVar;
    }
}
