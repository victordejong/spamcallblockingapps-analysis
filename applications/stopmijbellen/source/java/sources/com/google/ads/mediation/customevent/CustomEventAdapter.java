package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzciz;
import java.util.Objects;
import p143k2.C3321b;
import p143k2.EnumC3320a;
import p154l2.AbstractC3485c;
import p154l2.AbstractC3486d;
import p154l2.C3483a;
import p187o2.C3844c;
import p187o2.C3845d;
import p187o2.C3846e;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, C3844c>, MediationInterstitialAdapter<CustomEventExtras, C3844c> {
    @VisibleForTesting

    /* renamed from: a */
    public CustomEventBanner f6165a;
    @VisibleForTesting

    /* renamed from: b */
    public CustomEventInterstitial f6166b;

    /* renamed from: a */
    public static <T> T m4826a(String str) {
        try {
            return (T) Class.forName(null).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder("null".length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append((String) null);
            sb.append(". ");
            sb.append(message);
            zzciz.zzj(sb.toString());
            return null;
        }
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter, p154l2.AbstractC3484b
    public void destroy() {
        CustomEventBanner customEventBanner = this.f6165a;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f6166b;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter, p154l2.AbstractC3484b
    @RecentlyNonNull
    public Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    @RecentlyNonNull
    public View getBannerView() {
        return null;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter, p154l2.AbstractC3484b
    @RecentlyNonNull
    public Class<C3844c> getServerParametersType() {
        return C3844c.class;
    }

    public void requestBannerAd(@RecentlyNonNull AbstractC3485c abstractC3485c, @RecentlyNonNull Activity activity, @RecentlyNonNull C3844c c3844c, @RecentlyNonNull C3321b c3321b, @RecentlyNonNull C3483a c3483a, @RecentlyNonNull CustomEventExtras customEventExtras) {
        Objects.requireNonNull(c3844c);
        Object obj = null;
        CustomEventBanner customEventBanner = (CustomEventBanner) m4826a(null);
        this.f6165a = customEventBanner;
        if (customEventBanner == null) {
            abstractC3485c.onFailedToReceiveAd(this, EnumC3320a.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            obj = customEventExtras.getExtra(null);
        }
        this.f6165a.requestBannerAd(new C3845d(this, abstractC3485c), activity, null, null, c3321b, c3483a, obj);
    }

    public void requestInterstitialAd(@RecentlyNonNull AbstractC3486d abstractC3486d, @RecentlyNonNull Activity activity, @RecentlyNonNull C3844c c3844c, @RecentlyNonNull C3483a c3483a, @RecentlyNonNull CustomEventExtras customEventExtras) {
        Objects.requireNonNull(c3844c);
        Object obj = null;
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) m4826a(null);
        this.f6166b = customEventInterstitial;
        if (customEventInterstitial == null) {
            abstractC3486d.onFailedToReceiveAd(this, EnumC3320a.INTERNAL_ERROR);
            return;
        }
        if (customEventExtras != null) {
            obj = customEventExtras.getExtra(null);
        }
        this.f6166b.requestInterstitialAd(new C3846e(this, this, abstractC3486d), activity, null, null, c3483a, obj);
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.f6166b.showInterstitial();
    }
}
