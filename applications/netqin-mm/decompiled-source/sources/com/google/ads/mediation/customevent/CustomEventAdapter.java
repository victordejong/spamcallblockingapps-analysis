package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbbq;
import p131c.p161d.p162a.C2455a;
import p131c.p161d.p162a.p163b.AbstractC2458c;
import p131c.p161d.p162a.p163b.AbstractC2459d;
import p131c.p161d.p162a.p163b.C2456a;
import p131c.p161d.p162a.p163b.p165g.AbstractC2463b;
import p131c.p161d.p162a.p163b.p165g.AbstractC2464c;
import p131c.p161d.p162a.p163b.p165g.C2465d;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, C2465d>, MediationInterstitialAdapter<CustomEventExtras, C2465d> {

    /* renamed from: a */
    public View f21876a;
    @VisibleForTesting

    /* renamed from: b */
    public CustomEventBanner f21877b;
    @VisibleForTesting

    /* renamed from: c */
    public CustomEventInterstitial f21878c;

    @VisibleForTesting
    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$a.class */
    public static final class C7102a implements AbstractC2463b {
        public C7102a(CustomEventAdapter customEventAdapter, AbstractC2458c cVar) {
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$b.class */
    public final class C7103b implements AbstractC2464c {
        public C7103b(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, AbstractC2459d dVar) {
        }
    }

    /* renamed from: a */
    public static <T> T m18777a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzbbq.m15852d(sb.toString());
            return null;
        }
    }

    @Override // p131c.p161d.p162a.p163b.AbstractC2457b
    public final void destroy() {
        CustomEventBanner customEventBanner = this.f21877b;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f21878c;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // p131c.p161d.p162a.p163b.AbstractC2457b
    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f21876a;
    }

    @Override // p131c.p161d.p162a.p163b.AbstractC2457b
    public final Class<C2465d> getServerParametersType() {
        return C2465d.class;
    }

    public final void requestBannerAd(AbstractC2458c cVar, Activity activity, C2465d dVar, C2455a aVar, C2456a aVar2, CustomEventExtras customEventExtras) {
        CustomEventBanner customEventBanner = (CustomEventBanner) m18777a(dVar.f9418b);
        this.f21877b = customEventBanner;
        if (customEventBanner == null) {
            cVar.mo16523a(this, AdRequest$ErrorCode.INTERNAL_ERROR);
        } else {
            this.f21877b.requestBannerAd(new C7102a(this, cVar), activity, dVar.f9417a, dVar.f9419c, aVar, aVar2, customEventExtras == null ? null : customEventExtras.m17922a(dVar.f9417a));
        }
    }

    public final void requestInterstitialAd(AbstractC2459d dVar, Activity activity, C2465d dVar2, C2456a aVar, CustomEventExtras customEventExtras) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) m18777a(dVar2.f9418b);
        this.f21878c = customEventInterstitial;
        if (customEventInterstitial == null) {
            dVar.mo16522a(this, AdRequest$ErrorCode.INTERNAL_ERROR);
        } else {
            this.f21878c.requestInterstitialAd(new C7103b(this, this, dVar), activity, dVar2.f9417a, dVar2.f9419c, aVar, customEventExtras == null ? null : customEventExtras.m17922a(dVar2.f9417a));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f21878c.showInterstitial();
    }
}
