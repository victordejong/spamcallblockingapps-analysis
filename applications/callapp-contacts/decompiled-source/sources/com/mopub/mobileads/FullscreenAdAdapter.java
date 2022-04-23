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
    private Map<String, String> i;
    private long j;
    private String k;

    public FullscreenAdAdapter(Context context, String str, AdData adData) throws AdAdapter.BaseAdNotFoundException {
        super(context, str, adData);
        this.j = adData.getBroadcastIdentifier();
        this.i = adData.getExtras();
        this.k = adData.getDspCreativeId();
        if (context instanceof Activity) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Attempting to invoke base ad: ".concat(String.valueOf(str)));
            try {
                this.f34013b = BaseAdFactory.create(str);
            } catch (Exception e) {
                throw new AdAdapter.BaseAdNotFoundException(e);
            }
        } else {
            throw new IllegalArgumentException("An Activity Context is required.");
        }
    }

    @Override // com.mopub.mobileads.AdAdapter
    final void a() {
        if (this.f34013b != null) {
            try {
                this.f34013b.onInvalidate();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a base ad interstitial threw an exception.", e);
            }
        }
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(this.j));
        if (popWebViewConfig != null) {
            popWebViewConfig.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mopub.mobileads.AdAdapter
    public final void a(MoPubAd moPubAd) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (!c() && this.f34013b != null) {
            try {
                this.f34013b.a(this);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Calling show on base ad threw an exception.", e);
                MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, MoPubErrorCode.FULLSCREEN_SHOW_ERROR, Integer.valueOf(MoPubErrorCode.FULLSCREEN_SHOW_ERROR.getIntCode()));
                onAdFailed(MoPubErrorCode.FULLSCREEN_SHOW_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
    }
}
