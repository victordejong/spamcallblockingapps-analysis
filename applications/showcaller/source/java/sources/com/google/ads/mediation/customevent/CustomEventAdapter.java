package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.C4584a;
import com.google.ads.mediation.AbstractC4588c;
import com.google.ads.mediation.AbstractC4594d;
import com.google.ads.mediation.C4586a;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.customevent.C5765c;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.ei0;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<C5765c, C4591c>, MediationInterstitialAdapter<C5765c, C4591c> {

    /* renamed from: a */
    private View f13984a;

    /* renamed from: b */
    CustomEventBanner f13985b;

    /* renamed from: c */
    CustomEventInterstitial f13986c;

    /* renamed from: a */
    private static <T> T m22185a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
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

    @Override // com.google.ads.mediation.MediationBannerAdapter, com.google.ads.mediation.AbstractC4587b
    public void destroy() {
        CustomEventBanner customEventBanner = this.f13985b;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f13986c;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter, com.google.ads.mediation.AbstractC4587b
    @RecentlyNonNull
    public Class<C5765c> getAdditionalParametersType() {
        return C5765c.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    @RecentlyNonNull
    public View getBannerView() {
        return this.f13984a;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter, com.google.ads.mediation.AbstractC4587b
    @RecentlyNonNull
    public Class<C4591c> getServerParametersType() {
        return C4591c.class;
    }

    public void requestBannerAd(@RecentlyNonNull AbstractC4588c abstractC4588c, @RecentlyNonNull Activity activity, @RecentlyNonNull C4591c c4591c, @RecentlyNonNull C4584a c4584a, @RecentlyNonNull C4586a c4586a, @RecentlyNonNull C5765c c5765c) {
        CustomEventBanner customEventBanner = (CustomEventBanner) m22185a(c4591c.f13988b);
        this.f13985b = customEventBanner;
        if (customEventBanner == null) {
            abstractC4588c.mo8485a(this, AdRequest$ErrorCode.INTERNAL_ERROR);
        } else {
            this.f13985b.requestBannerAd(new C4592d(this, abstractC4588c), activity, c4591c.f13987a, c4591c.f13989c, c4584a, c4586a, c5765c == null ? null : c5765c.m17902a(c4591c.f13987a));
        }
    }

    public void requestInterstitialAd(@RecentlyNonNull AbstractC4594d abstractC4594d, @RecentlyNonNull Activity activity, @RecentlyNonNull C4591c c4591c, @RecentlyNonNull C4586a c4586a, @RecentlyNonNull C5765c c5765c) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) m22185a(c4591c.f13988b);
        this.f13986c = customEventInterstitial;
        if (customEventInterstitial == null) {
            abstractC4594d.mo8484b(this, AdRequest$ErrorCode.INTERNAL_ERROR);
        } else {
            this.f13986c.requestInterstitialAd(new C4593e(this, this, abstractC4594d), activity, c4591c.f13987a, c4591c.f13989c, c4586a, c5765c == null ? null : c5765c.m17902a(c4591c.f13987a));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.f13986c.showInterstitial();
    }
}
