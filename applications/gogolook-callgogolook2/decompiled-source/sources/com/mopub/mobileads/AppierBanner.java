package com.mopub.mobileads;

import android.content.Context;
import com.mopub.mobileads.CustomEventBanner;
import java.util.Map;
import p081h.p115c.p116a.C5716a;
import p081h.p115c.p116a.C5717b;
import p081h.p115c.p116a.EnumC5731e;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppierBanner.class */
public class AppierBanner extends CustomEventBanner implements C5717b.AbstractC5720c {

    /* renamed from: a */
    public CustomEventBanner.CustomEventBannerListener f8419a;

    /* renamed from: b */
    public C5717b f8420b;

    /* renamed from: a */
    public final int m30585a(Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get("com_appier_ad_height");
        String str = map2.get(AdMobBannerCustomEvent.AD_HEIGHT_KEY);
        int intValue = ((Integer) map.get("com_mopub_ad_height")).intValue();
        if (obj != null) {
            return ((Integer) obj).intValue();
        }
        if (str != null) {
            intValue = Integer.parseInt(str);
        }
        return intValue;
    }

    /* renamed from: b */
    public final int m30584b(Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get("com_appier_ad_width");
        String str = map2.get(AdMobBannerCustomEvent.AD_WIDTH_KEY);
        int intValue = ((Integer) map.get("com_mopub_ad_width")).intValue();
        if (obj != null) {
            return ((Integer) obj).intValue();
        }
        if (str != null) {
            intValue = Integer.parseInt(str);
        }
        return intValue;
    }

    /* renamed from: c */
    public final String m30583c(Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get("com_appier_zone_id");
        return obj != null ? obj.toString() : map2.get("zoneId");
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        C5716a.m24661a("[Appier Mediation]", "AppierBanner.loadBanner()");
        this.f8419a = customEventBannerListener;
        if (map2.isEmpty()) {
            this.f8419a.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        String c = m30583c(map, map2);
        int b = m30584b(map, map2);
        int a = m30585a(map, map2);
        this.f8420b = new C5717b(context, this);
        this.f8420b.m24658a(b, a);
        this.f8420b.m24655a(c);
    }

    @Override // p081h.p115c.p116a.C5717b.AbstractC5720c
    public void onAdLoadFail(EnumC5731e eVar, C5717b bVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierBanner.onAdLoadFail() (Custom Callback)", eVar.toString());
        if (eVar == EnumC5731e.NETWORK_ERROR) {
            this.f8419a.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        } else if (eVar == EnumC5731e.BAD_REQUEST) {
            this.f8419a.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
        } else if (eVar == EnumC5731e.INTERNAL_SERVER_ERROR) {
            this.f8419a.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        } else if (eVar == EnumC5731e.WEBVIEW_ERROR) {
            C5716a.m24661a("  fail to load the url:", bVar.m24651n());
            this.f8419a.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
    }

    @Override // p081h.p115c.p116a.C5717b.AbstractC5720c
    public void onAdLoaded(C5717b bVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierBanner.onAdLoaded() (Custom Callback)");
        this.f8419a.onBannerLoaded(bVar.m24650o());
    }

    @Override // p081h.p115c.p116a.C5717b.AbstractC5720c
    public void onAdNoBid(C5717b bVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierBanner.onAdNoBid() (Custom Callback)");
        this.f8419a.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void onInvalidate() {
        C5717b bVar = this.f8420b;
        if (bVar != null) {
            bVar.m24654k();
            this.f8420b = null;
        }
    }

    @Override // p081h.p115c.p116a.C5717b.AbstractC5720c
    public void onViewClick(C5717b bVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierBanner.onViewClick() (Custom Callback)");
    }
}
