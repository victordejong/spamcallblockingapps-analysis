package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gh.class */
public final class gh extends fk {

    /* renamed from: a  reason: collision with root package name */
    private final OnPublisherAdViewLoadedListener f28011a;

    public gh(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.f28011a = onPublisherAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.fh
    public final void a(ekw ekwVar, b bVar) {
        if (ekwVar != null && bVar != null) {
            PublisherAdView publisherAdView = new PublisherAdView((Context) d.a(bVar));
            AppEventListener appEventListener = null;
            try {
                if (ekwVar.zzko() instanceof eiu) {
                    eiu eiuVar = (eiu) ekwVar.zzko();
                    publisherAdView.setAdListener(eiuVar != null ? eiuVar.f27869a : null);
                }
            } catch (RemoteException e) {
                za.zzc("", e);
            }
            try {
                if (ekwVar.zzkn() instanceof ejg) {
                    ejg ejgVar = (ejg) ekwVar.zzkn();
                    if (ejgVar != null) {
                        appEventListener = ejgVar.f27879a;
                    }
                    publisherAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                za.zzc("", e2);
            }
            yq.f28555a.post(new gk(this, publisherAdView, ekwVar));
        }
    }
}
