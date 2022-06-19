package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.gd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gd.class */
public final class BinderC12575gd extends AbstractBinderC12555fk {

    /* renamed from: a */
    private final OnAdManagerAdViewLoadedListener f49295a;

    public BinderC12575gd(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.f49295a = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12552fh
    /* renamed from: a */
    public final void mo14640a(ekw ekwVar, AbstractC12126b abstractC12126b) {
        if (ekwVar == null || abstractC12126b == null) {
            return;
        }
        AdManagerAdView adManagerAdView = new AdManagerAdView((Context) BinderC12129d.m18980a(abstractC12126b));
        try {
            if (ekwVar.zzko() instanceof eiu) {
                eiu eiuVar = (eiu) ekwVar.zzko();
                adManagerAdView.setAdListener(eiuVar != null ? eiuVar.f49060a : null);
            }
        } catch (RemoteException e) {
            C13088za.zzc("", e);
        }
        try {
            if (ekwVar.zzkn() instanceof eew) {
                eew eewVar = (eew) ekwVar.zzkn();
                AppEventListener appEventListener = null;
                if (eewVar != null) {
                    appEventListener = eewVar.f48911a;
                }
                adManagerAdView.setAppEventListener(appEventListener);
            }
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
        }
        C13077yq.f50094a.post(new RunnableC12578gg(this, adManagerAdView, ekwVar));
    }
}
