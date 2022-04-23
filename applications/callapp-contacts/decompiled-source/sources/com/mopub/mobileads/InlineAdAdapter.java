package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdAdapter;
import com.mopub.mobileads.InlineVisibilityTracker;
import com.mopub.mobileads.factories.BaseAdFactory;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/InlineAdAdapter.class */
public class InlineAdAdapter extends AdAdapter {
    protected InlineVisibilityTracker i;
    private int j;
    private int k;

    public InlineAdAdapter(Context context, String str, AdData adData) throws AdAdapter.BaseAdNotFoundException {
        super(context, str, adData);
        this.j = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.k = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Attempting to invoke base ad: ".concat(String.valueOf(str)));
        try {
            this.f34013b = BaseAdFactory.create(str);
            String impressionMinVisibleDips = this.e.getImpressionMinVisibleDips();
            String impressionMinVisibleMs = this.e.getImpressionMinVisibleMs();
            if (!TextUtils.isEmpty(impressionMinVisibleDips) && !TextUtils.isEmpty(impressionMinVisibleMs)) {
                try {
                    this.j = Integer.parseInt(impressionMinVisibleDips);
                } catch (NumberFormatException e) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-pixels");
                }
                try {
                    this.k = Integer.parseInt(impressionMinVisibleMs);
                } catch (NumberFormatException e2) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-ms");
                }
            }
        } catch (Exception e3) {
            throw new AdAdapter.BaseAdNotFoundException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAd baseAd) {
        baseAd.b();
        onAdShown();
        onAdResumeAutoRefresh();
    }

    @Override // com.mopub.mobileads.AdAdapter
    final void a() {
        if (this.f34013b != null) {
            try {
                this.f34013b.onInvalidate();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a base ad banner threw an exception", e);
            }
        }
        InlineVisibilityTracker inlineVisibilityTracker = this.i;
        if (inlineVisibilityTracker != null) {
            try {
                inlineVisibilityTracker.destroy();
            } catch (Exception e2) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Destroying a banner visibility tracker threw an exception", e2);
            }
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mopub.mobileads.AdAdapter
    public final void a(MoPubAd moPubAd) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        final BaseAd baseAd = this.f34013b;
        if (!c() && baseAd != null) {
            if (!(moPubAd instanceof MoPubView) || baseAd.getAdView() == null) {
                MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, MoPubErrorCode.INLINE_SHOW_ERROR);
                onAdFailed(MoPubErrorCode.INLINE_SHOW_ERROR);
                return;
            }
            MoPubView moPubView = (MoPubView) moPubAd;
            View adView = baseAd.getAdView();
            if (e()) {
                onAdPauseAutoRefresh();
                InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.f34014c, moPubView, adView, this.j, this.k);
                this.i = inlineVisibilityTracker;
                inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.mopub.mobileads._$$Lambda$InlineAdAdapter$qjvvfncW0vm8actps5dO2Ucn6WU
                    @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
                    public final void onVisibilityChanged() {
                        InlineAdAdapter.this.a(baseAd);
                    }
                });
            }
            baseAd.a(this);
            View adView2 = baseAd.getAdView();
            if (adView2 != null) {
                moPubAd.setAdContentView(adView2);
            }
        }
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
    }
}
