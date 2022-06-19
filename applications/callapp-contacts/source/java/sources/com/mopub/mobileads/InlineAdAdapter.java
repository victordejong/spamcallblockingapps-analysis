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

    /* renamed from: i */
    protected InlineVisibilityTracker f59238i;

    /* renamed from: j */
    private int f59239j;

    /* renamed from: k */
    private int f59240k;

    public InlineAdAdapter(Context context, String str, AdData adData) throws AdAdapter.BaseAdNotFoundException {
        super(context, str, adData);
        this.f59239j = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f59240k = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Attempting to invoke base ad: ".concat(String.valueOf(str)));
        try {
            this.f59033b = BaseAdFactory.create(str);
            String impressionMinVisibleDips = this.f59036e.getImpressionMinVisibleDips();
            String impressionMinVisibleMs = this.f59036e.getImpressionMinVisibleMs();
            if (TextUtils.isEmpty(impressionMinVisibleDips) || TextUtils.isEmpty(impressionMinVisibleMs)) {
                return;
            }
            try {
                this.f59239j = Integer.parseInt(impressionMinVisibleDips);
            } catch (NumberFormatException e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-pixels");
            }
            try {
                this.f59240k = Integer.parseInt(impressionMinVisibleMs);
            } catch (NumberFormatException e2) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-ms");
            }
        } catch (Exception e3) {
            throw new AdAdapter.BaseAdNotFoundException(e3);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m6495a(BaseAd baseAd) {
        baseAd.mo6476b();
        onAdShown();
        onAdResumeAutoRefresh();
    }

    @Override // com.mopub.mobileads.AdAdapter
    /* renamed from: a */
    final void mo6496a() {
        if (this.f59033b != null) {
            try {
                this.f59033b.onInvalidate();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a base ad banner threw an exception", e);
            }
        }
        InlineVisibilityTracker inlineVisibilityTracker = this.f59238i;
        if (inlineVisibilityTracker != null) {
            try {
                inlineVisibilityTracker.destroy();
            } catch (Exception e2) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Destroying a banner visibility tracker threw an exception", e2);
            }
            this.f59238i = null;
        }
    }

    @Override // com.mopub.mobileads.AdAdapter
    /* renamed from: a */
    public final void mo6494a(MoPubAd moPubAd) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        final BaseAd baseAd = this.f59033b;
        if (m6603c() || baseAd == null) {
            return;
        }
        if (!(moPubAd instanceof MoPubView) || baseAd.getAdView() == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, MoPubErrorCode.INLINE_SHOW_ERROR);
            onAdFailed(MoPubErrorCode.INLINE_SHOW_ERROR);
            return;
        }
        MoPubView moPubView = (MoPubView) moPubAd;
        View adView = baseAd.getAdView();
        if (m6601e()) {
            onAdPauseAutoRefresh();
            InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.f59034c, moPubView, adView, this.f59239j, this.f59240k);
            this.f59238i = inlineVisibilityTracker;
            inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.mopub.mobileads._$$Lambda$InlineAdAdapter$qjvvfncW0vm8actps5dO2Ucn6WU
                @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
                public final void onVisibilityChanged() {
                    InlineAdAdapter.this.m6495a(baseAd);
                }
            });
        }
        baseAd.m6554a(this);
        View adView2 = baseAd.getAdView();
        if (adView2 == null) {
            return;
        }
        moPubAd.setAdContentView(adView2);
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
    }
}
