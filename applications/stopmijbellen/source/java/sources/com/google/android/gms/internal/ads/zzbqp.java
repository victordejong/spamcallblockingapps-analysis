package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqp.class */
public final class zzbqp extends zzbps {
    private final OnAdManagerAdViewLoadedListener zza;

    public zzbqp(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.zza = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zze(zzbhk zzbhkVar, IObjectWrapper iObjectWrapper) {
        if (zzbhkVar == null || iObjectWrapper == null) {
            return;
        }
        AdManagerAdView adManagerAdView = new AdManagerAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
        try {
            if (zzbhkVar.zzi() instanceof zzbey) {
                zzbey zzbeyVar = (zzbey) zzbhkVar.zzi();
                adManagerAdView.setAdListener(zzbeyVar != null ? zzbeyVar.zzb() : null);
            }
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
        try {
            if (zzbhkVar.zzj() instanceof zzayo) {
                zzayo zzayoVar = (zzayo) zzbhkVar.zzj();
                AppEventListener appEventListener = null;
                if (zzayoVar != null) {
                    appEventListener = zzayoVar.zzb();
                }
                adManagerAdView.setAppEventListener(appEventListener);
            }
        } catch (RemoteException e2) {
            zzciz.zzh("", e2);
        }
        zzcis.zza.post(new zzbqo(this, adManagerAdView, zzbhkVar));
    }
}
