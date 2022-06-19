package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.gh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gh.class */
public final class BinderC12579gh extends AbstractBinderC12555fk {

    /* renamed from: a */
    private final OnPublisherAdViewLoadedListener f49301a;

    public BinderC12579gh(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.f49301a = onPublisherAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12552fh
    /* renamed from: a */
    public final void mo14640a(ekw ekwVar, AbstractC12126b abstractC12126b) {
        if (ekwVar == null || abstractC12126b == null) {
            return;
        }
        PublisherAdView publisherAdView = new PublisherAdView((Context) BinderC12129d.m18980a(abstractC12126b));
        try {
            if (ekwVar.zzko() instanceof eiu) {
                eiu eiuVar = (eiu) ekwVar.zzko();
                publisherAdView.setAdListener(eiuVar != null ? eiuVar.f49060a : null);
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        try {
            if (ekwVar.zzkn() instanceof ejg) {
                ejg ejgVar = (ejg) ekwVar.zzkn();
                AppEventListener appEventListener = null;
                if (ejgVar != null) {
                    appEventListener = ejgVar.f49087a;
                }
                publisherAdView.setAppEventListener(appEventListener);
            }
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
        }
        C13077yq.f50094a.post(new RunnableC12582gk(this, publisherAdView, ekwVar));
    }
}
