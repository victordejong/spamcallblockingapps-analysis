package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gd.class */
public final class gd extends fk {

    /* renamed from: a  reason: collision with root package name */
    private final OnAdManagerAdViewLoadedListener f28005a;

    public gd(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.f28005a = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.fh
    public final void a(ekw ekwVar, b bVar) {
        if (ekwVar != null && bVar != null) {
            AdManagerAdView adManagerAdView = new AdManagerAdView((Context) d.a(bVar));
            AppEventListener appEventListener = null;
            try {
                if (ekwVar.zzko() instanceof eiu) {
                    eiu eiuVar = (eiu) ekwVar.zzko();
                    adManagerAdView.setAdListener(eiuVar != null ? eiuVar.f27869a : null);
                }
            } catch (RemoteException e) {
                za.zzc("", e);
            }
            try {
                if (ekwVar.zzkn() instanceof eew) {
                    eew eewVar = (eew) ekwVar.zzkn();
                    if (eewVar != null) {
                        appEventListener = eewVar.f27751a;
                    }
                    adManagerAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                za.zzc("", e2);
            }
            yq.f28555a.post(new gg(this, adManagerAdView, ekwVar));
        }
    }
}
