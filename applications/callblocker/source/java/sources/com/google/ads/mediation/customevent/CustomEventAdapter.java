package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.C2213a;
import com.google.ads.C2216b;
import com.google.ads.mediation.AbstractC2226c;
import com.google.ads.mediation.AbstractC2233d;
import com.google.ads.mediation.C2224a;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.customevent.C2356c;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.C3645yb;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<C2356c, C2232d>, MediationInterstitialAdapter<C2356c, C2232d> {

    /* renamed from: a */
    private View f6515a;

    /* renamed from: b */
    private CustomEventBanner f6516b;

    /* renamed from: c */
    private CustomEventInterstitial f6517c;

    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$a.class */
    public static final class C2227a implements AbstractC2230b {

        /* renamed from: a */
        private final CustomEventAdapter f6518a;

        /* renamed from: b */
        private final AbstractC2226c f6519b;

        public C2227a(CustomEventAdapter customEventAdapter, AbstractC2226c abstractC2226c) {
            this.f6518a = customEventAdapter;
            this.f6519b = abstractC2226c;
        }
    }

    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$b.class */
    public final class C2228b implements AbstractC2231c {

        /* renamed from: a */
        private final CustomEventAdapter f6520a;

        /* renamed from: b */
        private final AbstractC2233d f6521b;

        public C2228b(CustomEventAdapter customEventAdapter, AbstractC2233d abstractC2233d) {
            CustomEventAdapter.this = r4;
            this.f6520a = customEventAdapter;
            this.f6521b = abstractC2233d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <T> T m14915a(String str) {
        T t;
        try {
            t = Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            C3645yb.m6745e(new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length()).append("Could not instantiate custom event adapter: ").append(str).append(". ").append(message).toString());
            t = null;
        }
        return t;
    }

    @Override // com.google.ads.mediation.AbstractC2225b
    public final void destroy() {
        if (this.f6516b != null) {
            this.f6516b.m14914a();
        }
        if (this.f6517c != null) {
            this.f6517c.m14914a();
        }
    }

    @Override // com.google.ads.mediation.AbstractC2225b
    public final Class<C2356c> getAdditionalParametersType() {
        return C2356c.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f6515a;
    }

    @Override // com.google.ads.mediation.AbstractC2225b
    public final Class<C2232d> getServerParametersType() {
        return C2232d.class;
    }

    public final void requestBannerAd(AbstractC2226c abstractC2226c, Activity activity, C2232d c2232d, C2216b c2216b, C2224a c2224a, C2356c c2356c) {
        this.f6516b = (CustomEventBanner) m14915a(c2232d.f6524b);
        if (this.f6516b == null) {
            abstractC2226c.mo7537a(this, C2213a.EnumC2214a.INTERNAL_ERROR);
        } else {
            this.f6516b.requestBannerAd(new C2227a(this, abstractC2226c), activity, c2232d.f6523a, c2232d.f6525c, c2216b, c2224a, c2356c == null ? null : c2356c.m14712a(c2232d.f6523a));
        }
    }

    public final void requestInterstitialAd(AbstractC2233d abstractC2233d, Activity activity, C2232d c2232d, C2224a c2224a, C2356c c2356c) {
        this.f6517c = (CustomEventInterstitial) m14915a(c2232d.f6524b);
        if (this.f6517c == null) {
            abstractC2233d.mo7536a(this, C2213a.EnumC2214a.INTERNAL_ERROR);
        } else {
            this.f6517c.requestInterstitialAd(new C2228b(this, abstractC2233d), activity, c2232d.f6523a, c2232d.f6525c, c2224a, c2356c == null ? null : c2356c.m14712a(c2232d.f6523a));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f6517c.showInterstitial();
    }
}
