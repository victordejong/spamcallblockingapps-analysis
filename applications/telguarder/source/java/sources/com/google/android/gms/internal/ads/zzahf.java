package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahf.class */
public final class zzahf extends zzage {
    private final OnPublisherAdViewLoadedListener zzdgw;

    public zzahf(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.zzdgw = onPublisherAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void zza(zzxl zzxlVar, IObjectWrapper iObjectWrapper) {
        if (zzxlVar == null || iObjectWrapper == null) {
            return;
        }
        PublisherAdView publisherAdView = new PublisherAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
        try {
            if (zzxlVar.zzkk() instanceof zzvi) {
                zzvi zzviVar = (zzvi) zzxlVar.zzkk();
                publisherAdView.setAdListener(zzviVar != null ? zzviVar.getAdListener() : null);
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
        try {
            if (zzxlVar.zzkj() instanceof zzvy) {
                zzvy zzvyVar = (zzvy) zzxlVar.zzkj();
                AppEventListener appEventListener = null;
                if (zzvyVar != null) {
                    appEventListener = zzvyVar.getAppEventListener();
                }
                publisherAdView.setAppEventListener(appEventListener);
            }
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
        }
        zzaza.zzaac.post(new zzahe(this, publisherAdView, zzxlVar));
    }
}
