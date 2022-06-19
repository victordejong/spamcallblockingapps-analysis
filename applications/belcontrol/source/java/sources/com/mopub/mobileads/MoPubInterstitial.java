package com.mopub.mobileads;

import android.app.Activity;
import android.graphics.Point;
import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.mopub.common.AdFormat;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial.class */
public class MoPubInterstitial implements MoPubAd {

    /* renamed from: a */
    public AdViewController f4714a;

    /* renamed from: b */
    public InterstitialAdListener f4715b;

    /* renamed from: c */
    public Activity f4716c;

    /* renamed from: d */
    public volatile EnumC1086b f4717d = EnumC1086b.IDLE;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$InterstitialAdListener.class */
    public interface InterstitialAdListener {
        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);
    }

    /* renamed from: com.mopub.mobileads.MoPubInterstitial$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$a.class */
    public static /* synthetic */ class C1085a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4718a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1086b.values().length];
            f4718a = iArr;
            try {
                iArr[EnumC1086b.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4718a[EnumC1086b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4718a[EnumC1086b.SHOWING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4718a[EnumC1086b.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4718a[EnumC1086b.IDLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mobileads.MoPubInterstitial$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$b.class */
    public enum EnumC1086b {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MoPubInterstitial(Activity activity, String str) {
        this.f4716c = activity;
        AdViewController create = AdViewControllerFactory.create(activity, this);
        create.m3739C(false);
        setAdViewController(create);
        setAdUnitId(str);
        new Handler();
    }

    /* renamed from: a */
    public final boolean m3651a(EnumC1086b enumC1086b) {
        return m3650b(enumC1086b, false);
    }

    @VisibleForTesting
    /* renamed from: b */
    public boolean m3650b(EnumC1086b enumC1086b, boolean z) {
        synchronized (this) {
            Preconditions.checkNotNull(enumC1086b);
            EnumC1086b enumC1086b2 = this.f4717d;
            int[] iArr = C1085a.f4718a;
            int i = iArr[enumC1086b2.ordinal()];
            if (i == 1) {
                int i2 = iArr[enumC1086b.ordinal()];
                if (i2 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already loading an interstitial.");
                    }
                    return false;
                } else if (i2 == 2) {
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
                    this.f4717d = EnumC1086b.READY;
                    InterstitialAdListener interstitialAdListener = this.f4715b;
                    if (interstitialAdListener != null) {
                        interstitialAdListener.onInterstitialLoaded(this);
                    }
                    return true;
                } else if (i2 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial is not ready to be shown yet.");
                    return false;
                } else if (i2 == 4) {
                    m3647e();
                    return true;
                } else if (i2 != 5) {
                    return false;
                } else {
                    m3649c();
                    this.f4717d = EnumC1086b.IDLE;
                    return true;
                }
            } else if (i == 2) {
                int i3 = iArr[enumC1086b.ordinal()];
                if (i3 == 1) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already loaded. Not loading another.");
                    InterstitialAdListener interstitialAdListener2 = this.f4715b;
                    if (interstitialAdListener2 != null) {
                        interstitialAdListener2.onInterstitialLoaded(this);
                    }
                    return false;
                } else if (i3 == 3) {
                    m3646f();
                    this.f4717d = EnumC1086b.SHOWING;
                    return true;
                } else if (i3 == 4) {
                    m3647e();
                    return true;
                } else if (i3 != 5) {
                    return false;
                } else {
                    if (!z) {
                        return false;
                    }
                    m3649c();
                    this.f4717d = EnumC1086b.IDLE;
                    return true;
                }
            } else if (i == 3) {
                int i4 = iArr[enumC1086b.ordinal()];
                if (i4 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already showing. Not loading another.");
                    }
                    return false;
                } else if (i4 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already showing an interstitial. Cannot show it again.");
                    return false;
                } else if (i4 == 4) {
                    m3647e();
                    return true;
                } else if (i4 != 5) {
                    return false;
                } else {
                    if (z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot force refresh while showing an interstitial.");
                        return false;
                    }
                    m3649c();
                    this.f4717d = EnumC1086b.IDLE;
                    return true;
                }
            } else if (i == 4) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MoPubInterstitial destroyed. Ignoring all requests.");
                return false;
            } else if (i != 5) {
                return false;
            } else {
                int i5 = iArr[enumC1086b.ordinal()];
                if (i5 == 1) {
                    m3649c();
                    this.f4717d = EnumC1086b.LOADING;
                    m3645g();
                    if (z) {
                        AdViewController adViewController = this.f4714a;
                        if (adViewController != null) {
                            adViewController.m3729i();
                        }
                    } else {
                        loadAd();
                    }
                    return true;
                } else if (i5 == 2) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Attempted transition from IDLE to READY failed due to no known load call.");
                    return false;
                } else if (i5 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No interstitial loading or loaded.");
                    return false;
                } else if (i5 != 4) {
                    return false;
                } else {
                    m3647e();
                    return true;
                }
            }
        }
    }

    /* renamed from: c */
    public final void m3649c() {
        AdViewController adViewController = this.f4714a;
        if (adViewController != null) {
            adViewController.m3722p();
        }
    }

    /* renamed from: d */
    public boolean m3648d() {
        return this.f4717d == EnumC1086b.DESTROYED;
    }

    public void destroy() {
        m3651a(EnumC1086b.DESTROYED);
    }

    /* renamed from: e */
    public final void m3647e() {
        m3649c();
        this.f4715b = null;
        this.f4717d = EnumC1086b.DESTROYED;
    }

    /* renamed from: f */
    public final void m3646f() {
        AdViewController adViewController = this.f4714a;
        if (adViewController != null) {
            adViewController.m3738D();
        }
    }

    public void forceRefresh() {
        m3650b(EnumC1086b.IDLE, true);
        m3650b(EnumC1086b.LOADING, true);
    }

    /* renamed from: g */
    public final void m3645g() {
        Window window;
        View decorView;
        WindowInsets rootWindowInsets;
        AdViewController adViewController;
        if (Build.VERSION.SDK_INT < 28 || (window = this.f4716c.getWindow()) == null || (decorView = window.getDecorView()) == null || (rootWindowInsets = decorView.getRootWindowInsets()) == null || (adViewController = this.f4714a) == null) {
            return;
        }
        adViewController.setWindowInsets(rootWindowInsets);
    }

    public Activity getActivity() {
        return this.f4716c;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdFormat getAdFormat() {
        return AdFormat.INTERSTITIAL;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ int getAdHeight() {
        return getAdViewController();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ String getAdUnitId() {
        return getAdViewController();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdViewController getAdViewController() {
        return this.f4714a;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ int getAdWidth() {
        return getAdViewController();
    }

    public InterstitialAdListener getInterstitialAdListener() {
        return this.f4715b;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ String getKeywords() {
        return getAdViewController();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ Map<String, Object> getLocalExtras() {
        return fh1.$default$getLocalExtras(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ Location getLocation() {
        return getAdViewController();
    }

    public boolean getTesting() {
        AdViewController adViewController = this.f4714a;
        if (adViewController != null) {
            return adViewController.getTesting();
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Can't get testing status for destroyed AdViewController. Returning false.");
        return false;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ String getUserDataKeywords() {
        return fh1.$default$getUserDataKeywords(this);
    }

    public boolean isReady() {
        return this.f4717d == EnumC1086b.READY;
    }

    public void load() {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        m3651a(EnumC1086b.LOADING);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void loadAd() {
        fh1.$default$loadAd(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ boolean loadFailUrl(MoPubErrorCode moPubErrorCode) {
        return fh1.$default$loadFailUrl(this, moPubErrorCode);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        if (m3648d()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
        AdViewController adViewController = this.f4714a;
        if (adViewController != null) {
            adViewController.m3715w();
        }
        InterstitialAdListener interstitialAdListener = this.f4715b;
        if (interstitialAdListener == null) {
            return;
        }
        interstitialAdListener.onInterstitialClicked(this);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* bridge */ /* synthetic */ void onAdCollapsed() {
        zg1.$default$onAdCollapsed(this);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial finished.");
        AdViewController adViewController = this.f4714a;
        if (adViewController != null) {
            adViewController.onAdComplete(null);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        if (m3648d()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
        m3651a(EnumC1086b.IDLE);
        InterstitialAdListener interstitialAdListener = this.f4715b;
        if (interstitialAdListener == null) {
            return;
        }
        interstitialAdListener.onInterstitialDismissed(this);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* bridge */ /* synthetic */ void onAdExpanded() {
        zg1.$default$onAdExpanded(this);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(MoPubErrorCode moPubErrorCode) {
        if (m3648d()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        InterstitialAdListener interstitialAdListener = this.f4715b;
        if (interstitialAdListener != null) {
            interstitialAdListener.onInterstitialFailed(this, moPubErrorCode);
        }
        m3651a(EnumC1086b.IDLE);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        if (m3648d()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        InterstitialAdListener interstitialAdListener = this.f4715b;
        if (interstitialAdListener != null) {
            interstitialAdListener.onInterstitialFailed(this, moPubErrorCode);
        }
        m3651a(EnumC1086b.IDLE);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        if (m3648d()) {
            return;
        }
        m3651a(EnumC1086b.READY);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* bridge */ /* synthetic */ void onAdPauseAutoRefresh() {
        zg1.$default$onAdPauseAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* bridge */ /* synthetic */ void onAdResumeAutoRefresh() {
        zg1.$default$onAdResumeAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
        if (m3648d()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
        InterstitialAdListener interstitialAdListener = this.f4715b;
        if (interstitialAdListener == null) {
            return;
        }
        interstitialAdListener.onInterstitialShown(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void pauseAutoRefresh() {
        fh1.$default$pauseAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public Point resolveAdSize() {
        return DeviceUtils.getDeviceDimensions(this.f4716c);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void resumeAutoRefresh() {
        fh1.$default$resumeAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setAdContentView(View view) {
        fh1.$default$setAdContentView(this, view);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setAdUnitId(String str) {
        fh1.$default$setAdUnitId(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public void setAdViewController(AdViewController adViewController) {
        this.f4714a = adViewController;
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialAdListener) {
        this.f4715b = interstitialAdListener;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setKeywords(String str) {
        fh1.$default$setKeywords(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setLocalExtras(Map<String, ? extends Object> map) {
        fh1.$default$setLocalExtras(this, map);
    }

    public void setTesting(boolean z) {
        AdViewController adViewController = this.f4714a;
        if (adViewController != null) {
            adViewController.setTesting(z);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setUserDataKeywords(String str) {
        fh1.$default$setUserDataKeywords(this, str);
    }

    public boolean show() {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        return m3651a(EnumC1086b.SHOWING);
    }
}
