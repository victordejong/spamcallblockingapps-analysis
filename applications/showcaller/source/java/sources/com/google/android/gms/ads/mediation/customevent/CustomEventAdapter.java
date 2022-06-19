package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.mediation.AbstractC5772e;
import com.google.android.gms.ads.mediation.AbstractC5776i;
import com.google.android.gms.ads.mediation.AbstractC5781n;
import com.google.android.gms.ads.mediation.AbstractC5783p;
import com.google.android.gms.ads.mediation.AbstractC5788s;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.ei0;
import java.util.Objects;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* renamed from: a */
    static final C5592a f18628a = new C5592a(0, "Could not instantiate custom event adapter", "com.google.android.gms.ads");

    /* renamed from: b */
    private View f18629b;

    /* renamed from: c */
    CustomEventBanner f18630c;

    /* renamed from: d */
    CustomEventInterstitial f18631d;

    /* renamed from: e */
    CustomEventNative f18632e;

    /* renamed from: a */
    private static <T> T m17903a(Class<T> cls, String str) {
        Objects.requireNonNull(str);
        try {
            return cls.cast(Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            ei0.m15464f(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    @RecentlyNonNull
    public View getBannerView() {
        return this.f18629b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, com.google.android.gms.ads.mediation.AbstractC5773f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onDestroy() {
        CustomEventBanner customEventBanner = this.f18630c;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f18631d;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.f18632e;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, com.google.android.gms.ads.mediation.AbstractC5773f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onPause() {
        CustomEventBanner customEventBanner = this.f18630c;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.f18631d;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.f18632e;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, com.google.android.gms.ads.mediation.AbstractC5773f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onResume() {
        CustomEventBanner customEventBanner = this.f18630c;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.f18631d;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.f18632e;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5776i abstractC5776i, @RecentlyNonNull Bundle bundle, @RecentlyNonNull C5605f c5605f, @RecentlyNonNull AbstractC5772e abstractC5772e, Bundle bundle2) {
        CustomEventBanner customEventBanner = (CustomEventBanner) m17903a(CustomEventBanner.class, bundle.getString("class_name"));
        this.f18630c = customEventBanner;
        if (customEventBanner == null) {
            abstractC5776i.mo10784e(this, f18628a);
            return;
        }
        Bundle bundle3 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        CustomEventBanner customEventBanner2 = this.f18630c;
        Objects.requireNonNull(customEventBanner2);
        customEventBanner2.requestBannerAd(context, new C5768f(this, abstractC5776i), bundle.getString("parameter"), c5605f, abstractC5772e, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5781n abstractC5781n, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC5772e abstractC5772e, Bundle bundle2) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) m17903a(CustomEventInterstitial.class, bundle.getString("class_name"));
        this.f18631d = customEventInterstitial;
        if (customEventInterstitial == null) {
            abstractC5781n.mo10776m(this, f18628a);
            return;
        }
        Bundle bundle3 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        CustomEventInterstitial customEventInterstitial2 = this.f18631d;
        Objects.requireNonNull(customEventInterstitial2);
        customEventInterstitial2.requestInterstitialAd(context, new C5769g(this, this, abstractC5781n), bundle.getString("parameter"), abstractC5772e, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5783p abstractC5783p, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC5788s abstractC5788s, Bundle bundle2) {
        CustomEventNative customEventNative = (CustomEventNative) m17903a(CustomEventNative.class, bundle.getString("class_name"));
        this.f18632e = customEventNative;
        if (customEventNative == null) {
            abstractC5783p.mo10786c(this, f18628a);
            return;
        }
        Bundle bundle3 = bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name"));
        CustomEventNative customEventNative2 = this.f18632e;
        Objects.requireNonNull(customEventNative2);
        customEventNative2.requestNativeAd(context, new C5770h(this, abstractC5783p), bundle.getString("parameter"), abstractC5788s, bundle3);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        CustomEventInterstitial customEventInterstitial = this.f18631d;
        if (customEventInterstitial != null) {
            customEventInterstitial.showInterstitial();
        }
    }
}
