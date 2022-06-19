package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.MoPubReward;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdAdapter;
import com.mopub.mobileads.InlineAdAdapter;
import com.mopub.mobileads.factories.BaseAdFactory;
import p000.eh1;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/InlineAdAdapter.class */
public class InlineAdAdapter extends AdAdapter {

    /* renamed from: l */
    public int f4683l = Integer.MIN_VALUE;

    /* renamed from: m */
    public int f4684m = Integer.MIN_VALUE;

    /* renamed from: n */
    public eh1 f4685n;

    public InlineAdAdapter(Context context, String str, AdData adData) {
        super(context, str, adData);
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
        MoPubLog.log(adLogEvent, "Attempting to invoke base ad: " + str);
        try {
            this.f4544c = BaseAdFactory.create(str);
            m3675L();
        } catch (Exception e) {
            throw new AdAdapter.BaseAdNotFoundException(e);
        }
    }

    /* renamed from: J */
    public /* synthetic */ void m3676K(BaseAd baseAd) {
        baseAd.mo3657h();
        onAdShown();
        onAdResumeAutoRefresh();
    }

    @Override // com.mopub.mobileads.AdAdapter
    /* renamed from: I */
    public final void mo3678I(MoPubAd moPubAd) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        final BaseAd baseAd = this.f4544c;
        if (m3764g() || baseAd == null) {
            return;
        }
        if (!(moPubAd instanceof MoPubView) || baseAd.mo3659b() == null) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INLINE_SHOW_ERROR;
            MoPubLog.log(adLogEvent, moPubErrorCode);
            onAdFailed(moPubErrorCode);
            return;
        }
        MoPubView moPubView = (MoPubView) moPubAd;
        View mo3659b = baseAd.mo3659b();
        if (m3765f()) {
            onAdPauseAutoRefresh();
            eh1 eh1Var = new eh1(this.f4545d, moPubView, mo3659b, this.f4683l, this.f4684m);
            this.f4685n = eh1Var;
            eh1Var.m2154j(new eh1.AbstractC1366d() { // from class: sg1
                @Override // p000.eh1.AbstractC1366d
                public final void onVisibilityChanged() {
                    InlineAdAdapter.this.m3676K(baseAd);
                }
            });
        }
        baseAd.m3710e(this);
        View mo3659b2 = baseAd.mo3659b();
        if (mo3659b2 == null) {
            return;
        }
        moPubAd.setAdContentView(mo3659b2);
    }

    @VisibleForTesting
    /* renamed from: L */
    public void m3675L() {
        String impressionMinVisibleDips = this.f4547g.getImpressionMinVisibleDips();
        String impressionMinVisibleMs = this.f4547g.getImpressionMinVisibleMs();
        if (TextUtils.isEmpty(impressionMinVisibleDips) || TextUtils.isEmpty(impressionMinVisibleMs)) {
            return;
        }
        try {
            this.f4683l = Integer.parseInt(impressionMinVisibleDips);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-pixels");
        }
        try {
            this.f4684m = Integer.parseInt(impressionMinVisibleMs);
        } catch (NumberFormatException e2) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-ms");
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
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a base ad banner threw an exception", e);
            }
        }
        eh1 eh1Var = this.f4685n;
        if (eh1Var != null) {
            try {
                eh1Var.m2156h();
            } catch (Exception e2) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Destroying a banner visibility tracker threw an exception", e2);
            }
            this.f4685n = null;
        }
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
    }

    @Override // com.mopub.mobileads.AdAdapter, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
    }
}
