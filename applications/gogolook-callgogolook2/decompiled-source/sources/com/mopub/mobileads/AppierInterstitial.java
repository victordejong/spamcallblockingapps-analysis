package com.mopub.mobileads;

import android.content.Context;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
import p081h.p115c.p116a.C5716a;
import p081h.p115c.p116a.C5732f;
import p081h.p115c.p116a.EnumC5731e;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppierInterstitial.class */
public class AppierInterstitial extends CustomEventInterstitial implements C5732f.AbstractC5735c {

    /* renamed from: a */
    public CustomEventInterstitial.CustomEventInterstitialListener f8421a;

    /* renamed from: b */
    public C5732f f8422b;

    /* renamed from: a */
    public final int m30582a(Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get("com_appier_ad_height");
        String str = map2.get(AdMobBannerCustomEvent.AD_HEIGHT_KEY);
        if (obj != null) {
            return ((Integer) obj).intValue();
        }
        if (str != null) {
            return Integer.parseInt(str);
        }
        return 0;
    }

    /* renamed from: b */
    public final int m30581b(Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get("com_appier_ad_width");
        String str = map2.get(AdMobBannerCustomEvent.AD_WIDTH_KEY);
        if (obj != null) {
            return ((Integer) obj).intValue();
        }
        if (str != null) {
            return Integer.parseInt(str);
        }
        return 0;
    }

    /* renamed from: c */
    public final String m30580c(Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get("com_appier_zone_id");
        return obj != null ? obj.toString() : map2.get("zoneId");
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        C5716a.m24661a("[Appier Mediation]", "AppierInterstitial.loadInterstitial()");
        this.f8421a = customEventInterstitialListener;
        if (map2.isEmpty()) {
            this.f8421a.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        String c = m30580c(map, map2);
        int b = m30581b(map, map2);
        int a = m30582a(map, map2);
        this.f8422b = new C5732f(context, this);
        this.f8422b.m24630a(b, a);
        this.f8422b.m24627a(c);
    }

    @Override // p081h.p115c.p116a.C5732f.AbstractC5735c
    public void onAdLoadFail(EnumC5731e eVar, C5732f fVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierInterstitial.onAdLoadFail() (Custom Callback)", eVar.toString());
        if (eVar == EnumC5731e.NETWORK_ERROR) {
            this.f8421a.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        } else if (eVar == EnumC5731e.BAD_REQUEST) {
            this.f8421a.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
        } else if (eVar == EnumC5731e.INTERNAL_SERVER_ERROR) {
            this.f8421a.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        } else if (eVar == EnumC5731e.WEBVIEW_ERROR) {
            C5716a.m24661a("  fail to load the url:", fVar.m24623n());
            this.f8421a.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
    }

    @Override // p081h.p115c.p116a.C5732f.AbstractC5735c
    public void onAdLoaded(C5732f fVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierInterstitial.onAdLoaded() (Custom Callback)");
        this.f8421a.onInterstitialLoaded();
    }

    @Override // p081h.p115c.p116a.C5732f.AbstractC5735c
    public void onAdNoBid(C5732f fVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierInterstitial.onAdNoBid() (Custom Callback)");
        this.f8421a.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }

    @Override // p081h.p115c.p116a.C5732f.AbstractC5735c
    public void onDismiss(C5732f fVar) {
        this.f8421a.onInterstitialDismissed();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        C5732f fVar = this.f8422b;
        if (fVar != null) {
            fVar.m24626k();
        }
    }

    @Override // p081h.p115c.p116a.C5732f.AbstractC5735c
    public void onViewShown(C5732f fVar) {
        this.f8421a.onInterstitialShown();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        C5716a.m24661a("[Appier Mediation]", "AppierInterstitial.showInterstitial()");
        this.f8422b.m24622o();
    }
}
