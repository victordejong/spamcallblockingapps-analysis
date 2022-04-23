package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4234y;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagq.class */
public final class zzagq extends zzafr {

    /* renamed from: a */
    public final OnPublisherAdViewLoadedListener f24086a;

    @Override // com.google.android.gms.internal.ads.zzafs
    /* renamed from: a */
    public final void mo16770a(zzxc zzxcVar, IObjectWrapper iObjectWrapper) {
        if (zzxcVar != null && iObjectWrapper != null) {
            PublisherAdView publisherAdView = new PublisherAdView((Context) ObjectWrapper.m17021Q(iObjectWrapper));
            AppEventListener appEventListener = null;
            try {
                if (zzxcVar.mo10966X0() instanceof zzvc) {
                    zzvc zzvcVar = (zzvc) zzxcVar.mo10966X0();
                    publisherAdView.setAdListener(zzvcVar != null ? zzvcVar.m11205Q1() : null);
                }
            } catch (RemoteException e) {
                zzbbq.m15855b("", e);
            }
            try {
                if (zzxcVar.mo10970D1() instanceof zzvt) {
                    zzvt zzvtVar = (zzvt) zzxcVar.mo10970D1();
                    if (zzvtVar != null) {
                        appEventListener = zzvtVar.m11190Q1();
                    }
                    publisherAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                zzbbq.m15855b("", e2);
            }
            zzbbg.f24738b.post(new RunnableC4234y(this, publisherAdView, zzxcVar));
        }
    }
}
