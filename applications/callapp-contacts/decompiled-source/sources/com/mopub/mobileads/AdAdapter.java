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

    /* renamed from: b  reason: collision with root package name */
    protected BaseAd f34013b;

    /* renamed from: c  reason: collision with root package name */
    protected Context f34014c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f34015d;
    protected AdData e;
    protected AdLifecycleListener.LoadListener g;
    protected AdLifecycleListener.InteractionListener h;
    protected boolean f = false;
    private final Handler i = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    protected final Runnable f34012a = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$MKp08V_1aJao_r7u1clA9lCFi3g
        @Override // java.lang.Runnable
        public final void run() {
            AdAdapter.this.p();
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdAdapter$BaseAdNotFoundException.class */
    public static class BaseAdNotFoundException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        String f34016a;

        /* renamed from: b  reason: collision with root package name */
        Throwable f34017b;

        public BaseAdNotFoundException(Exception exc) {
            this.f34016a = exc.getMessage();
            this.f34017b = exc.getCause();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "AdAdapter.create() failed with exception", exc);
        }
    }

    public AdAdapter(Context context, String str, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(adData);
        this.f34014c = context;
        this.e = adData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MoPubReward moPubReward) {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdComplete(moPubReward);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MoPubErrorCode moPubErrorCode) {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdFailed(moPubErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MoPubErrorCode moPubErrorCode) {
        AdLifecycleListener.LoadListener loadListener = this.g;
        if (loadListener != null) {
            loadListener.onAdLoadFailed(moPubErrorCode);
        }
    }

    private void f() {
        this.i.removeCallbacks(this.f34012a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdCollapsed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdExpanded();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdPauseAutoRefresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdResumeAutoRefresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdDismissed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        BaseAd baseAd = this.f34013b;
        if (baseAd != null && !baseAd.f34040a) {
            AdLifecycleListener.InteractionListener interactionListener = this.h;
            if (interactionListener != null) {
                interactionListener.onAdImpression();
            }
            baseAd.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        AdLifecycleListener.InteractionListener interactionListener = this.h;
        if (interactionListener != null) {
            interactionListener.onAdShown();
        }
        BaseAd baseAd = this.f34013b;
        if (baseAd == null || baseAd.f34040a) {
            AdLifecycleListener.InteractionListener interactionListener2 = this.h;
            if (interactionListener2 != null) {
                interactionListener2.onAdImpression();
            }
            if (baseAd != null) {
                baseAd.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        AdLifecycleListener.LoadListener loadListener = this.g;
        if (loadListener != null) {
            loadListener.onAdLoaded();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "AdAdapter() failed", MoPubErrorCode.NETWORK_TIMEOUT);
        onAdLoadFailed(MoPubErrorCode.NETWORK_TIMEOUT);
        this.i.post(new _$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc(this));
    }

    abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(AdLifecycleListener.InteractionListener interactionListener) {
        Preconditions.checkNotNull(interactionListener);
        this.h = interactionListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(MoPubAd moPubAd);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a();
        this.f34013b = null;
        this.f34014c = null;
        this.e = null;
        this.g = null;
        this.h = null;
        this.f34015d = true;
        this.f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return this.f34015d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String d() {
        BaseAd baseAd = this.f34013b;
        return baseAd != null ? baseAd.getAdNetworkId() : "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean e() {
        BaseAd baseAd = this.f34013b;
        if (baseAd == null) {
            return true;
        }
        return baseAd.f34040a;
    }

    public String getBaseAdClassName() {
        BaseAd baseAd = this.f34013b;
        if (baseAd != null) {
            return baseAd.getClass().getName();
        }
        return null;
    }

    public boolean isReady() {
        return this.f;
    }

    public final void load(AdLifecycleListener.LoadListener loadListener) {
        Preconditions.checkNotNull(loadListener);
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        if (!this.f34015d && this.f34013b != null) {
            this.g = loadListener;
            this.i.postDelayed(this.f34012a, this.e.getTimeoutDelayMillis());
            try {
                this.f34013b.a(this.f34014c, this, this.e);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        if (!this.f34015d) {
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$pdPvUfW_E6owMH5H01XrTuuUAfg
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.m();
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdCollapsed() {
        if (!this.f34015d) {
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$zUzWN6GWKhfXUrgcMr21wXgQ77k
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.g();
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(final MoPubReward moPubReward) {
        if (!this.f34015d) {
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$IxAdBRe6pJwuPMtcpKBFsnt97Cs
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.a(moPubReward);
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        if (!this.f34015d) {
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$oa28bscpc7_gtcDrtH5aAzq_4e4
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.k();
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdExpanded() {
        if (!this.f34015d) {
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$jhG8Q9yjlzkv5dJfpgTA7es_L7M
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.h();
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(final MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(moPubErrorCode);
        if (!this.f34015d) {
            f();
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$OkjTuL_Jsr5_nDfJwGqBgvd6HHQ
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.a(moPubErrorCode);
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
        if (!this.f34015d) {
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$5WYV_UeNxQMtaweG7RVAZwZyoU0
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.l();
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(final MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(moPubErrorCode);
        if (!this.f34015d) {
            f();
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$McH0kM7XeRVT3_ooDN_BNyRDnj8
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.b(moPubErrorCode);
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        if (!this.f34015d) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            this.f = true;
            f();
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$l_NmE_0f_OCiww7d_4mVq6mSl_s
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.o();
                }
            });
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
        this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$Gc_U4n3ckl9uB0obpli1lSKPxjw
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.i();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
        this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$aOEidQmVxAnoAsDIzeNw5v6777E
            @Override // java.lang.Runnable
            public final void run() {
                AdAdapter.this.j();
            }
        });
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
        if (!this.f34015d) {
            this.i.post(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$AdAdapter$r2JXauEfoPUG14Kps_rwqrH8Va0
                @Override // java.lang.Runnable
                public final void run() {
                    AdAdapter.this.n();
                }
            });
        }
    }
}
