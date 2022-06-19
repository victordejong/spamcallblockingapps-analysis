package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdLifecycleListener;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdAdapter.class */
public abstract class AdAdapter implements AdLifecycleListener.InteractionListener, AdLifecycleListener.LoadListener {

    /* renamed from: b */
    protected BaseAd f59033b;

    /* renamed from: c */
    protected Context f59034c;

    /* renamed from: d */
    protected boolean f59035d;

    /* renamed from: e */
    protected AdData f59036e;

    /* renamed from: g */
    protected AdLifecycleListener.LoadListener f59038g;

    /* renamed from: h */
    protected AdLifecycleListener.InteractionListener f59039h;

    /* renamed from: f */
    protected boolean f59037f = false;

    /* renamed from: i */
    private final Handler f59040i = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    protected final Runnable f59032a = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$MKp08V_1aJao_r7u1clA9lCFi3g
        @Override // java.lang.Runnable
        public final void run() {
            AdAdapter.this.m6590p();
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdAdapter$BaseAdNotFoundException.class */
    public static class BaseAdNotFoundException extends Exception {

        /* renamed from: a */
        String f59041a;

        /* renamed from: b */
        Throwable f59042b;

        public BaseAdNotFoundException(Exception exc) {
            this.f59041a = exc.getMessage();
            this.f59042b = exc.getCause();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "AdAdapter.create() failed with exception", exc);
        }
    }

    public AdAdapter(Context context, String str, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(adData);
        this.f59034c = context;
        this.f59036e = adData;
    }

    /* renamed from: a */
    public /* synthetic */ void m6608a(MoPubReward moPubReward) {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdComplete(moPubReward);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m6606a(MoPubErrorCode moPubErrorCode) {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdFailed(moPubErrorCode);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m6604b(MoPubErrorCode moPubErrorCode) {
        AdLifecycleListener.LoadListener loadListener = this.f59038g;
        if (loadListener != null) {
            loadListener.onAdLoadFailed(moPubErrorCode);
        }
    }

    /* renamed from: f */
    private void m6600f() {
        this.f59040i.removeCallbacks(this.f59032a);
    }

    /* renamed from: g */
    public /* synthetic */ void m6599g() {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdCollapsed();
        }
    }

    /* renamed from: h */
    public /* synthetic */ void m6598h() {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdExpanded();
        }
    }

    /* renamed from: i */
    public /* synthetic */ void m6597i() {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdPauseAutoRefresh();
        }
    }

    /* renamed from: j */
    public /* synthetic */ void m6596j() {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdResumeAutoRefresh();
        }
    }

    /* renamed from: k */
    public /* synthetic */ void m6595k() {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdDismissed();
        }
    }

    /* renamed from: l */
    public /* synthetic */ void m6594l() {
        BaseAd baseAd = this.f59033b;
        if (baseAd == null || baseAd.f59118a) {
            return;
        }
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdImpression();
        }
        baseAd.mo6476b();
    }

    /* renamed from: m */
    public /* synthetic */ void m6593m() {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdClicked();
        }
    }

    /* renamed from: n */
    public /* synthetic */ void m6592n() {
        AdLifecycleListener.InteractionListener interactionListener = this.f59039h;
        if (interactionListener != null) {
            interactionListener.onAdShown();
        }
        BaseAd baseAd = this.f59033b;
        if (baseAd == null || baseAd.f59118a) {
            AdLifecycleListener.InteractionListener interactionListener2 = this.f59039h;
            if (interactionListener2 != null) {
                interactionListener2.onAdImpression();
            }
            if (baseAd == null) {
                return;
            }
            baseAd.mo6476b();
        }
    }

    /* renamed from: o */
    public /* synthetic */ void m6591o() {
        AdLifecycleListener.LoadListener loadListener = this.f59038g;
        if (loadListener != null) {
            loadListener.onAdLoaded();
        }
    }

    /* renamed from: p */
    public /* synthetic */ void m6590p() {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "AdAdapter() failed", MoPubErrorCode.NETWORK_TIMEOUT);
        onAdLoadFailed(MoPubErrorCode.NETWORK_TIMEOUT);
        this.f59040i.post(new _$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc(this));
    }

    /* renamed from: a */
    abstract void mo6496a();

    /* renamed from: a */
    public final void m6607a(AdLifecycleListener.InteractionListener interactionListener) {
        Preconditions.checkNotNull(interactionListener);
        this.f59039h = interactionListener;
    }

    /* renamed from: a */
    public abstract void mo6494a(MoPubAd moPubAd);

    /* renamed from: b */
    public void m6605b() {
        mo6496a();
        this.f59033b = null;
        this.f59034c = null;
        this.f59036e = null;
        this.f59038g = null;
        this.f59039h = null;
        this.f59035d = true;
        this.f59037f = false;
    }

    /* renamed from: c */
    public final boolean m6603c() {
        return this.f59035d;
    }

    /* renamed from: d */
    public final String m6602d() {
        BaseAd baseAd = this.f59033b;
        return baseAd != null ? baseAd.getAdNetworkId() : "";
    }

    /* renamed from: e */
    public final boolean m6601e() {
        BaseAd baseAd = this.f59033b;
        if (baseAd == null) {
            return true;
        }
        return baseAd.f59118a;
    }

    public String getBaseAdClassName() {
        BaseAd baseAd = this.f59033b;
        if (baseAd != null) {
            return baseAd.getClass().getName();
        }
        return null;
    }

    public boolean isReady() {
        return this.f59037f;
    }

    public final void load(AdLifecycleListener.LoadListener loadListener) {
        Preconditions.checkNotNull(loadListener);
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        if (this.f59035d || this.f59033b == null) {
            return;
        }
        this.f59038g = loadListener;
        this.f59040i.postDelayed(this.f59032a, this.f59036e.getTimeoutDelayMillis());
        try {
            this.f59033b.m6555a(this.f59034c, this, this.f59036e);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        if (this.f59035d) {
            return;
        }
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$pdPvUfW_E6owMH5H01XrTuuUAfg
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6593m();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdCollapsed() {
        if (this.f59035d) {
            return;
        }
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$zUzWN6GWKhfXUrgcMr21wXgQ77k
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6599g();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(final MoPubReward moPubReward) {
        if (this.f59035d) {
            return;
        }
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6608a(moPubReward);
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        if (this.f59035d) {
            return;
        }
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$oa28bscpc7_gtcDrtH5aAzq_4e4
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6595k();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdExpanded() {
        if (this.f59035d) {
            return;
        }
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$jhG8Q9yjlzkv5dJfpgTA7es_L7M
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6598h();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(final MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(moPubErrorCode);
        if (this.f59035d) {
            return;
        }
        m6600f();
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6606a(moPubErrorCode);
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
        if (this.f59035d) {
            return;
        }
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$5WYV_UeNxQMtaweG7RVAZwZyoU0
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6594l();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(final MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(moPubErrorCode);
        if (this.f59035d) {
            return;
        }
        m6600f();
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$McH0kM7XeRVT3_ooDN_BNyRDnj8
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6604b(moPubErrorCode);
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        if (this.f59035d) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
        this.f59037f = true;
        m6600f();
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$l_NmE_0f_OCiww7d_4mVq6mSl_s
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6591o();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$Gc_U4n3ckl9uB0obpli1lSKPxjw
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6597i();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$aOEidQmVxAnoAsDIzeNw5v6777E
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6596j();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
        if (this.f59035d) {
            return;
        }
        this.f59040i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$r2JXauEfoPUG14Kps_rwqrH8Va0
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.m6592n();
            }
        });
    }
}
