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
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.MoPubAd;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import com.mopub.network.AdResponse;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial.class */
public class MoPubInterstitial implements MoPubAd {

    /* renamed from: a */
    protected AdViewController f59285a;

    /* renamed from: b */
    private InterstitialAdListener f59286b;

    /* renamed from: c */
    private Activity f59287c;

    /* renamed from: f */
    private AdResponse f59290f;

    /* renamed from: e */
    private volatile EnumC16792a f59289e = EnumC16792a.IDLE;

    /* renamed from: d */
    private Handler f59288d = new Handler();

    /* renamed from: com.mopub.mobileads.MoPubInterstitial$1 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$1.class */
    public static final /* synthetic */ class C167911 {

        /* renamed from: a */
        static final /* synthetic */ int[] f59291a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC16792a.values().length];
            f59291a = iArr;
            try {
                iArr[EnumC16792a.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f59291a[EnumC16792a.READY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f59291a[EnumC16792a.SHOWING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f59291a[EnumC16792a.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f59291a[EnumC16792a.IDLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$InterstitialAdListener.class */
    public interface InterstitialAdListener {
        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);
    }

    /* renamed from: com.mopub.mobileads.MoPubInterstitial$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$a.class */
    public enum EnumC16792a {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MoPubInterstitial(Activity activity, String str) {
        this.f59287c = activity;
        AdViewController create = AdViewControllerFactory.create(activity, this);
        create.m6583a(false);
        setAdViewController(create);
        setAdUnitId(str);
    }

    /* renamed from: a */
    private void m6473a() {
        m6470c();
        this.f59286b = null;
        this.f59289e = EnumC16792a.DESTROYED;
    }

    /* renamed from: a */
    private boolean m6472a(EnumC16792a enumC16792a, boolean z) {
        Window window;
        View decorView;
        WindowInsets rootWindowInsets;
        AdViewController adViewController;
        synchronized (this) {
            Preconditions.checkNotNull(enumC16792a);
            int i = C167911.f59291a[this.f59289e.ordinal()];
            if (i == 1) {
                int i2 = C167911.f59291a[enumC16792a.ordinal()];
                if (i2 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already loading an interstitial.");
                    }
                    return false;
                } else if (i2 == 2) {
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
                    this.f59289e = EnumC16792a.READY;
                    InterstitialAdListener interstitialAdListener = this.f59286b;
                    if (interstitialAdListener != null) {
                        interstitialAdListener.onInterstitialLoaded(this);
                    }
                    return true;
                } else if (i2 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial is not ready to be shown yet.");
                    return false;
                } else if (i2 == 4) {
                    m6473a();
                    return true;
                } else if (i2 != 5) {
                    return false;
                } else {
                    m6470c();
                    this.f59289e = EnumC16792a.IDLE;
                    return true;
                }
            } else if (i == 2) {
                int i3 = C167911.f59291a[enumC16792a.ordinal()];
                if (i3 == 1) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already loaded. Not loading another.");
                    InterstitialAdListener interstitialAdListener2 = this.f59286b;
                    if (interstitialAdListener2 != null) {
                        interstitialAdListener2.onInterstitialLoaded(this);
                    }
                    return false;
                } else if (i3 == 3) {
                    AdViewController adViewController2 = this.f59285a;
                    if (adViewController2 != null) {
                        adViewController2.m6573h();
                    }
                    this.f59289e = EnumC16792a.SHOWING;
                    return true;
                } else if (i3 == 4) {
                    m6473a();
                    return true;
                } else if (i3 != 5) {
                    return false;
                } else {
                    if (!z) {
                        return false;
                    }
                    m6470c();
                    this.f59289e = EnumC16792a.IDLE;
                    return true;
                }
            } else if (i == 3) {
                int i4 = C167911.f59291a[enumC16792a.ordinal()];
                if (i4 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already showing. Not loading another.");
                    }
                    return false;
                } else if (i4 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already showing an interstitial. Cannot show it again.");
                    return false;
                } else if (i4 == 4) {
                    m6473a();
                    return true;
                } else if (i4 != 5) {
                    return false;
                } else {
                    if (z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot force refresh while showing an interstitial.");
                        return false;
                    }
                    m6470c();
                    this.f59289e = EnumC16792a.IDLE;
                    return true;
                }
            } else if (i == 4) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MoPubInterstitial destroyed. Ignoring all requests.");
                return false;
            } else if (i != 5) {
                return false;
            } else {
                int i5 = C167911.f59291a[enumC16792a.ordinal()];
                if (i5 != 1) {
                    if (i5 == 2) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Attempted transition from IDLE to READY failed due to no known load call.");
                        return false;
                    } else if (i5 == 3) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No interstitial loading or loaded.");
                        return false;
                    } else if (i5 != 4) {
                        return false;
                    } else {
                        m6473a();
                        return true;
                    }
                }
                m6470c();
                this.f59289e = EnumC16792a.LOADING;
                if (Build.VERSION.SDK_INT >= 28 && (window = this.f59287c.getWindow()) != null && (decorView = window.getDecorView()) != null && (rootWindowInsets = decorView.getRootWindowInsets()) != null && (adViewController = this.f59285a) != null) {
                    adViewController.setWindowInsets(rootWindowInsets);
                }
                if (z) {
                    AdViewController adViewController3 = this.f59285a;
                    if (adViewController3 != null) {
                        adViewController3.m6575f();
                    }
                } else {
                    AdResponse adResponse = this.f59290f;
                    if (adResponse != null) {
                        fakeLoadAd(adResponse);
                    } else {
                        loadAd();
                    }
                }
                return true;
            }
        }
    }

    /* renamed from: b */
    private boolean m6471b() {
        return this.f59289e == EnumC16792a.DESTROYED;
    }

    /* renamed from: c */
    private void m6470c() {
        AdViewController adViewController = this.f59285a;
        if (adViewController != null) {
            adViewController.m6574g();
        }
    }

    public void destroy() {
        m6472a(EnumC16792a.DESTROYED, false);
    }

    public void fakeLoad(String str, Map<String, String> map) {
        this.f59290f = new AdResponse.Builder().setAdUnitId(getAdUnitId()).setBaseAdClassName(str).setServerExtras(map).build();
        load();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void fakeLoadAd(AdResponse adResponse) {
        MoPubAd._CC.$default$fakeLoadAd(this, adResponse);
    }

    public void forceRefresh() {
        m6472a(EnumC16792a.IDLE, true);
        m6472a(EnumC16792a.LOADING, true);
    }

    public Activity getActivity() {
        return this.f59287c;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdFormat getAdFormat() {
        return AdFormat.INTERSTITIAL;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ int getAdHeight() {
        return MoPubAd._CC.$default$getAdHeight(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ String getAdUnitId() {
        return MoPubAd._CC.$default$getAdUnitId(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdViewController getAdViewController() {
        return this.f59285a;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ int getAdWidth() {
        return MoPubAd._CC.$default$getAdWidth(this);
    }

    public InterstitialAdListener getInterstitialAdListener() {
        return this.f59286b;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ String getKeywords() {
        return MoPubAd._CC.$default$getKeywords(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ Map getLocalExtras() {
        return MoPubAd._CC.$default$getLocalExtras(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ Location getLocation() {
        return MoPubAd._CC.$default$getLocation(this);
    }

    public boolean getTesting() {
        AdViewController adViewController = this.f59285a;
        if (adViewController != null) {
            return adViewController.getTesting();
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Can't get testing status for destroyed AdViewController. Returning false.");
        return false;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ String getUserDataKeywords() {
        return MoPubAd._CC.$default$getUserDataKeywords(this);
    }

    public boolean isReady() {
        return this.f59289e == EnumC16792a.READY;
    }

    public void load() {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        m6472a(EnumC16792a.LOADING, false);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void loadAd() {
        MoPubAd._CC.$default$loadAd(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ boolean loadFailUrl(MoPubErrorCode moPubErrorCode) {
        return MoPubAd._CC.$default$loadFailUrl(this, moPubErrorCode);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        if (m6471b()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
        AdViewController adViewController = this.f59285a;
        if (adViewController != null) {
            adViewController.m6576e();
        }
        InterstitialAdListener interstitialAdListener = this.f59286b;
        if (interstitialAdListener == null) {
            return;
        }
        interstitialAdListener.onInterstitialClicked(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* synthetic */ void onAdCollapsed() {
        AdLifecycleListener.InlineInteractionListener._CC.$default$onAdCollapsed(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial finished.");
        AdViewController adViewController = this.f59285a;
        if (adViewController != null) {
            adViewController.onAdComplete(null);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        if (m6471b()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
        m6472a(EnumC16792a.IDLE, false);
        InterstitialAdListener interstitialAdListener = this.f59286b;
        if (interstitialAdListener == null) {
            return;
        }
        interstitialAdListener.onInterstitialDismissed(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* synthetic */ void onAdExpanded() {
        AdLifecycleListener.InlineInteractionListener._CC.$default$onAdExpanded(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(MoPubErrorCode moPubErrorCode) {
        if (m6471b()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        InterstitialAdListener interstitialAdListener = this.f59286b;
        if (interstitialAdListener != null) {
            interstitialAdListener.onInterstitialFailed(this, moPubErrorCode);
        }
        m6472a(EnumC16792a.IDLE, false);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        if (m6471b()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        InterstitialAdListener interstitialAdListener = this.f59286b;
        if (interstitialAdListener != null) {
            interstitialAdListener.onInterstitialFailed(this, moPubErrorCode);
        }
        m6472a(EnumC16792a.IDLE, false);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        if (m6471b()) {
            return;
        }
        m6472a(EnumC16792a.READY, false);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* synthetic */ void onAdPauseAutoRefresh() {
        AdLifecycleListener.InlineInteractionListener._CC.$default$onAdPauseAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* synthetic */ void onAdResumeAutoRefresh() {
        AdLifecycleListener.InlineInteractionListener._CC.$default$onAdResumeAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
        if (m6471b()) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
        InterstitialAdListener interstitialAdListener = this.f59286b;
        if (interstitialAdListener == null) {
            return;
        }
        interstitialAdListener.onInterstitialShown(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void pauseAutoRefresh() {
        MoPubAd._CC.$default$pauseAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public Point resolveAdSize() {
        return DeviceUtils.getDeviceDimensions(this.f59287c);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void resumeAutoRefresh() {
        MoPubAd._CC.$default$resumeAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setAdContentView(View view) {
        MoPubAd._CC.$default$setAdContentView(this, view);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setAdUnitId(String str) {
        MoPubAd._CC.$default$setAdUnitId(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public void setAdViewController(AdViewController adViewController) {
        this.f59285a = adViewController;
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialAdListener) {
        this.f59286b = interstitialAdListener;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setKeywords(String str) {
        MoPubAd._CC.$default$setKeywords(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setLocalExtras(Map map) {
        MoPubAd._CC.$default$setLocalExtras(this, map);
    }

    public void setTesting(boolean z) {
        AdViewController adViewController = this.f59285a;
        if (adViewController != null) {
            adViewController.setTesting(z);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setUserDataKeywords(String str) {
        MoPubAd._CC.$default$setUserDataKeywords(this, str);
    }

    public boolean show() {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        return m6472a(EnumC16792a.SHOWING, false);
    }
}
