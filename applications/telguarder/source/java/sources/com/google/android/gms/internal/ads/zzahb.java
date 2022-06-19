package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahb.class */
public final class zzahb extends zzage {
    private final OnAdManagerAdViewLoadedListener zzdgr;

    public zzahb(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.zzdgr = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void zza(zzxl zzxlVar, IObjectWrapper iObjectWrapper) {
        if (zzxlVar == null || iObjectWrapper == null) {
            return;
        }
        AdManagerAdView adManagerAdView = new AdManagerAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
        try {
            if (zzxlVar.zzkk() instanceof zzvi) {
                zzvi zzviVar = (zzvi) zzxlVar.zzkk();
                adManagerAdView.setAdListener(zzviVar != null ? zzviVar.getAdListener() : null);
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
        try {
            if (zzxlVar.zzkj() instanceof zzrg) {
                zzrg zzrgVar = (zzrg) zzxlVar.zzkj();
                AppEventListener appEventListener = null;
                if (zzrgVar != null) {
                    appEventListener = zzrgVar.getAppEventListener();
                }
                adManagerAdView.setAppEventListener(appEventListener);
            }
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
        }
        zzaza.zzaac.post(new zzaha(this, adManagerAdView, zzxlVar));
    }
}
