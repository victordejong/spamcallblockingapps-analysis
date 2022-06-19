package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdAdapter;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdAdapter.class */
public abstract class AdAdapter implements AdLifecycleListener.LoadListener, AdLifecycleListener.InteractionListener {

    /* renamed from: c */
    public BaseAd f4544c;

    /* renamed from: d */
    public Context f4545d;

    /* renamed from: f */
    public boolean f4546f;

    /* renamed from: g */
    public AdData f4547g;

    /* renamed from: j */
    public AdLifecycleListener.LoadListener f4549j;

    /* renamed from: k */
    public AdLifecycleListener.InteractionListener f4550k;

    /* renamed from: h */
    public boolean f4548h = false;

    /* renamed from: a */
    public final Handler f4542a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public final Runnable f4543b = new Runnable() { // from class: hg1
        @Override // java.lang.Runnable
        public final void run() {
            AdAdapter.this.m3762i();
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdAdapter$BaseAdNotFoundException.class */
    public static class BaseAdNotFoundException extends Exception {
        public BaseAdNotFoundException(Exception exc) {
            exc.getMessage();
            exc.getCause();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "AdAdapter.create() failed with exception", exc);
        }
    }

    public AdAdapter(Context context, String str, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(adData);
        this.f4545d = context;
        this.f4547g = adData;
    }

    /* renamed from: B */
    public /* synthetic */ void m3775C() {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdPauseAutoRefresh();
        }
    }

    /* renamed from: D */
    public /* synthetic */ void m3773E() {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdResumeAutoRefresh();
        }
    }

    /* renamed from: F */
    public /* synthetic */ void m3771G() {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdShown();
        }
        BaseAd baseAd = this.f4544c;
        if (baseAd == null || baseAd.m3709f()) {
            AdLifecycleListener.InteractionListener interactionListener2 = this.f4550k;
            if (interactionListener2 != null) {
                interactionListener2.onAdImpression();
            }
            if (baseAd == null) {
                return;
            }
            baseAd.mo3657h();
        }
    }

    /* renamed from: h */
    public /* synthetic */ void m3762i() {
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE;
        MoPubErrorCode moPubErrorCode = MoPubErrorCode.NETWORK_TIMEOUT;
        MoPubLog.log(adLogEvent, "AdAdapter() failed", moPubErrorCode);
        onAdLoadFailed(moPubErrorCode);
        this.f4542a.post(new xg1(this));
    }

    /* renamed from: j */
    public /* synthetic */ void m3760k() {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdClicked();
        }
    }

    /* renamed from: l */
    public /* synthetic */ void m3758m() {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdCollapsed();
        }
    }

    /* renamed from: n */
    public /* synthetic */ void m3756o(MoPubReward moPubReward) {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdComplete(moPubReward);
        }
    }

    /* renamed from: p */
    public /* synthetic */ void m3754q() {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdDismissed();
        }
    }

    /* renamed from: r */
    public /* synthetic */ void m3752s() {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdExpanded();
        }
    }

    /* renamed from: t */
    public /* synthetic */ void m3750u(MoPubErrorCode moPubErrorCode) {
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdFailed(moPubErrorCode);
        }
    }

    /* renamed from: v */
    public /* synthetic */ void m3748w() {
        BaseAd baseAd = this.f4544c;
        if (baseAd == null || baseAd.m3709f()) {
            return;
        }
        AdLifecycleListener.InteractionListener interactionListener = this.f4550k;
        if (interactionListener != null) {
            interactionListener.onAdImpression();
        }
        baseAd.mo3657h();
    }

    /* renamed from: x */
    public /* synthetic */ void m3746y(MoPubErrorCode moPubErrorCode) {
        AdLifecycleListener.LoadListener loadListener = this.f4549j;
        if (loadListener != null) {
            loadListener.onAdLoadFailed(moPubErrorCode);
        }
    }

    /* renamed from: z */
    public /* synthetic */ void m3777A() {
        AdLifecycleListener.LoadListener loadListener = this.f4549j;
        if (loadListener != null) {
            loadListener.onAdLoaded();
        }
    }

    /* renamed from: H */
    public void m3770H(AdLifecycleListener.InteractionListener interactionListener) {
        Preconditions.checkNotNull(interactionListener);
        this.f4550k = interactionListener;
    }

    /* renamed from: I */
    public abstract void mo3678I(MoPubAd moPubAd);

    /* renamed from: a */
    public final void m3769a() {
        this.f4542a.removeCallbacks(this.f4543b);
    }

    /* renamed from: b */
    public abstract void mo3674b();

    /* renamed from: c */
    public String m3768c() {
        BaseAd baseAd = this.f4544c;
        return baseAd != null ? baseAd.getAdNetworkId() : "";
    }

    /* renamed from: d */
    public final int m3767d() {
        return this.f4547g.getTimeoutDelayMillis();
    }

    /* renamed from: e */
    public void m3766e() {
        mo3674b();
        this.f4544c = null;
        this.f4545d = null;
        this.f4547g = null;
        this.f4549j = null;
        this.f4550k = null;
        this.f4546f = true;
        this.f4548h = false;
    }

    /* renamed from: f */
    public boolean m3765f() {
        BaseAd baseAd = this.f4544c;
        if (baseAd == null) {
            return true;
        }
        return baseAd.m3709f();
    }

    /* renamed from: g */
    public boolean m3764g() {
        return this.f4546f;
    }

    public String getBaseAdClassName() {
        BaseAd baseAd = this.f4544c;
        return baseAd != null ? baseAd.getClass().getName() : null;
    }

    public boolean isReady() {
        return this.f4548h;
    }

    public final void load(AdLifecycleListener.LoadListener loadListener) {
        Preconditions.checkNotNull(loadListener);
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        if (m3764g() || this.f4544c == null) {
            return;
        }
        this.f4549j = loadListener;
        this.f4542a.postDelayed(this.f4543b, m3767d());
        try {
            this.f4544c.m3711d(this.f4545d, this, this.f4547g);
        } catch (Exception e) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(adLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            onAdLoadFailed(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        if (m3764g()) {
            return;
        }
        this.f4542a.post(new Runnable() { // from class: lg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3760k();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdCollapsed() {
        if (m3764g()) {
            return;
        }
        this.f4542a.post(new Runnable() { // from class: ng1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3758m();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(final MoPubReward moPubReward) {
        if (m3764g()) {
            return;
        }
        this.f4542a.post(new Runnable() { // from class: fg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3756o(moPubReward);
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        if (m3764g()) {
            return;
        }
        this.f4542a.post(new Runnable() { // from class: ig1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3754q();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdExpanded() {
        if (m3764g()) {
            return;
        }
        this.f4542a.post(new Runnable() { // from class: eg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3752s();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(final MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(moPubErrorCode);
        if (m3764g()) {
            return;
        }
        m3769a();
        this.f4542a.post(new Runnable() { // from class: og1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3750u(moPubErrorCode);
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
        if (m3764g()) {
            return;
        }
        this.f4542a.post(new Runnable() { // from class: qg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3748w();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(final MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(moPubErrorCode);
        if (m3764g()) {
            return;
        }
        m3769a();
        this.f4542a.post(new Runnable() { // from class: pg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3746y(moPubErrorCode);
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        if (m3764g()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
        this.f4548h = true;
        m3769a();
        this.f4542a.post(new Runnable() { // from class: jg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3777A();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
        this.f4542a.post(new Runnable() { // from class: kg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3775C();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
        this.f4542a.post(new Runnable() { // from class: mg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3773E();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
        if (m3764g()) {
            return;
        }
        this.f4542a.post(new Runnable() { // from class: gg1
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m3771G();
            }
        });
    }
}
