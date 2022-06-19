package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdAdapter;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mobileads.factories.BaseAdFactory;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FullscreenAdAdapter.class */
public class FullscreenAdAdapter extends AdAdapter {

    /* renamed from: i */
    private Map<String, String> f59173i;

    /* renamed from: j */
    private long f59174j;

    /* renamed from: k */
    private String f59175k;

    public FullscreenAdAdapter(Context context, String str, AdData adData) throws AdAdapter.BaseAdNotFoundException {
        super(context, str, adData);
        this.f59174j = adData.getBroadcastIdentifier();
        this.f59173i = adData.getExtras();
        this.f59175k = adData.getDspCreativeId();
        if (context instanceof Activity) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Attempting to invoke base ad: ".concat(String.valueOf(str)));
            try {
                this.f59033b = BaseAdFactory.create(str);
                return;
            } catch (Exception e) {
                throw new AdAdapter.BaseAdNotFoundException(e);
            }
        }
        throw new IllegalArgumentException("An Activity Context is required.");
    }

    @Override // com.mopub.mobileads.AdAdapter
    /* renamed from: a */
    final void mo6496a() {
        if (this.f59033b != null) {
            try {
                this.f59033b.onInvalidate();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a base ad interstitial threw an exception.", e);
            }
        }
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(this.f59174j));
        if (popWebViewConfig != null) {
            popWebViewConfig.invalidate();
        }
    }

    @Override // com.mopub.mobileads.AdAdapter
    /* renamed from: a */
    public final void mo6494a(MoPubAd moPubAd) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (m6603c() || this.f59033b == null) {
            return;
        }
        try {
            this.f59033b.m6554a(this);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Calling show on base ad threw an exception.", e);
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, MoPubErrorCode.FULLSCREEN_SHOW_ERROR, Integer.valueOf(MoPubErrorCode.FULLSCREEN_SHOW_ERROR.getIntCode()));
            onAdFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
        }
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
    }
}
