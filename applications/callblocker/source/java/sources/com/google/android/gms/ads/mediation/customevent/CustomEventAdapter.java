package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.C2286e;
import com.google.android.gms.ads.mediation.AbstractC2360e;
import com.google.android.gms.ads.mediation.AbstractC2364h;
import com.google.android.gms.ads.mediation.AbstractC2368l;
import com.google.android.gms.ads.mediation.AbstractC2370n;
import com.google.android.gms.ads.mediation.AbstractC2378t;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.C3645yb;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* renamed from: a */
    private View f6784a;

    /* renamed from: b */
    private CustomEventBanner f6785b;

    /* renamed from: c */
    private CustomEventInterstitial f6786c;

    /* renamed from: d */
    private CustomEventNative f6787d;

    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a.class */
    static final class C2351a implements AbstractC2355b {

        /* renamed from: a */
        private final CustomEventAdapter f6788a;

        /* renamed from: b */
        private final AbstractC2364h f6789b;

        public C2351a(CustomEventAdapter customEventAdapter, AbstractC2364h abstractC2364h) {
            this.f6788a = customEventAdapter;
            this.f6789b = abstractC2364h;
        }
    }

    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b.class */
    static final class C2352b implements AbstractC2358e {

        /* renamed from: a */
        private final CustomEventAdapter f6790a;

        /* renamed from: b */
        private final AbstractC2370n f6791b;

        public C2352b(CustomEventAdapter customEventAdapter, AbstractC2370n abstractC2370n) {
            this.f6790a = customEventAdapter;
            this.f6791b = abstractC2370n;
        }
    }

    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$c.class */
    final class C2353c implements AbstractC2357d {

        /* renamed from: a */
        private final CustomEventAdapter f6792a;

        /* renamed from: b */
        private final AbstractC2368l f6793b;

        public C2353c(CustomEventAdapter customEventAdapter, AbstractC2368l abstractC2368l) {
            CustomEventAdapter.this = r4;
            this.f6792a = customEventAdapter;
            this.f6793b = abstractC2368l;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <T> T m14716a(String str) {
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

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f6784a;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public final void onDestroy() {
        if (this.f6785b != null) {
            this.f6785b.m14715a();
        }
        if (this.f6786c != null) {
            this.f6786c.m14715a();
        }
        if (this.f6787d != null) {
            this.f6787d.m14715a();
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public final void onPause() {
        if (this.f6785b != null) {
            this.f6785b.m14714b();
        }
        if (this.f6786c != null) {
            this.f6786c.m14714b();
        }
        if (this.f6787d != null) {
            this.f6787d.m14714b();
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public final void onResume() {
        if (this.f6785b != null) {
            this.f6785b.m14713c();
        }
        if (this.f6786c != null) {
            this.f6786c.m14713c();
        }
        if (this.f6787d != null) {
            this.f6787d.m14713c();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, AbstractC2364h abstractC2364h, Bundle bundle, C2286e c2286e, AbstractC2360e abstractC2360e, Bundle bundle2) {
        this.f6785b = (CustomEventBanner) m14716a(bundle.getString("class_name"));
        if (this.f6785b == null) {
            abstractC2364h.mo7637a(this, 0);
        } else {
            this.f6785b.requestBannerAd(context, new C2351a(this, abstractC2364h), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), c2286e, abstractC2360e, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, AbstractC2368l abstractC2368l, Bundle bundle, AbstractC2360e abstractC2360e, Bundle bundle2) {
        this.f6786c = (CustomEventInterstitial) m14716a(bundle.getString("class_name"));
        if (this.f6786c == null) {
            abstractC2368l.mo7634a(this, 0);
        } else {
            this.f6786c.requestInterstitialAd(context, new C2353c(this, abstractC2368l), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), abstractC2360e, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, AbstractC2370n abstractC2370n, Bundle bundle, AbstractC2378t abstractC2378t, Bundle bundle2) {
        this.f6787d = (CustomEventNative) m14716a(bundle.getString("class_name"));
        if (this.f6787d == null) {
            abstractC2370n.mo7632a(this, 0);
        } else {
            this.f6787d.requestNativeAd(context, new C2352b(this, abstractC2370n), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), abstractC2378t, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f6786c.showInterstitial();
    }
}
