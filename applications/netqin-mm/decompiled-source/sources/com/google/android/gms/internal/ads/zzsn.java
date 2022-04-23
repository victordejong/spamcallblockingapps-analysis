package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsn.class */
public final class zzsn extends AppOpenAd {

    /* renamed from: a */
    public final zzsg f28954a;

    public zzsn(zzsg zzsgVar) {
        this.f28954a = zzsgVar;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    /* renamed from: a */
    public final zzxc mo11469a() {
        try {
            return this.f28954a.mo11475e1();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    /* renamed from: a */
    public final void mo11468a(Activity activity, FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.f28954a.mo11477a(ObjectWrapper.m17020a(activity), new zzsd(fullScreenContentCallback));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    /* renamed from: a */
    public final void mo11467a(zzsm zzsmVar) {
        try {
            this.f28954a.mo11476a(zzsmVar);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
