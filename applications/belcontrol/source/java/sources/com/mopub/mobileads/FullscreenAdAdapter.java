package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdAdapter;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mobileads.factories.BaseAdFactory;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/FullscreenAdAdapter.class */
public class FullscreenAdAdapter extends AdAdapter {

    /* renamed from: l */
    public long f4659l;

    public FullscreenAdAdapter(Context context, String str, AdData adData) {
        super(context, str, adData);
        this.f4659l = adData.getBroadcastIdentifier();
        adData.getExtras();
        adData.getDspCreativeId();
        if (context instanceof Activity) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Attempting to invoke base ad: " + str);
            try {
                this.f4544c = BaseAdFactory.create(str);
                return;
            } catch (Exception e) {
                throw new AdAdapter.BaseAdNotFoundException(e);
            }
        }
        throw new IllegalArgumentException("An Activity Context is required.");
    }

    @Override // com.mopub.mobileads.AdAdapter
    /* renamed from: I */
    public void mo3678I(MoPubAd moPubAd) {
        BaseAd baseAd;
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (m3764g() || (baseAd = this.f4544c) == null) {
            return;
        }
        try {
            baseAd.m3710e(this);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Calling show on base ad threw an exception.", e);
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.FULLSCREEN_SHOW_ERROR;
            MoPubLog.log(adLogEvent, moPubErrorCode, Integer.valueOf(moPubErrorCode.getIntCode()));
            onAdFailed(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdAdapter
    /* renamed from: b */
    public void mo3674b() {
        BaseAd baseAd = this.f4544c;
        if (baseAd != null) {
            try {
                baseAd.onInvalidate();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a base ad interstitial threw an exception.", e);
            }
        }
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(this.f4659l));
        if (popWebViewConfig != null) {
            popWebViewConfig.getWebView().destroy();
        }
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
    }
}
