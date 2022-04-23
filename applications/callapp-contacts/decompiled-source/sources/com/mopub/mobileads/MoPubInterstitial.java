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

    /* renamed from: a  reason: collision with root package name */
    protected AdViewController f34112a;

    /* renamed from: b  reason: collision with root package name */
    private InterstitialAdListener f34113b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f34114c;
    private AdResponse f;
    private volatile a e = a.IDLE;

    /* renamed from: d  reason: collision with root package name */
    private Handler f34115d = new Handler();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.MoPubInterstitial$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34116a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f34116a = iArr;
            try {
                iArr[a.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34116a[a.READY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34116a[a.SHOWING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34116a[a.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34116a[a.IDLE.ordinal()] = 5;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$a.class */
    public enum a {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MoPubInterstitial(Activity activity, String str) {
        this.f34114c = activity;
        AdViewController create = AdViewControllerFactory.create(activity, this);
        create.a(false);
        setAdViewController(create);
        setAdUnitId(str);
    }

    private void a() {
        c();
        this.f34113b = null;
        this.e = a.DESTROYED;
    }

    private boolean a(a aVar, boolean z) {
        Window window;
        View decorView;
        WindowInsets rootWindowInsets;
        AdViewController adViewController;
        synchronized (this) {
            Preconditions.checkNotNull(aVar);
            int i = AnonymousClass1.f34116a[this.e.ordinal()];
            if (i == 1) {
                int i2 = AnonymousClass1.f34116a[aVar.ordinal()];
                if (i2 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already loading an interstitial.");
                    }
                    return false;
                } else if (i2 == 2) {
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
                    this.e = a.READY;
                    InterstitialAdListener interstitialAdListener = this.f34113b;
                    if (interstitialAdListener != null) {
                        interstitialAdListener.onInterstitialLoaded(this);
                    }
                    return true;
                } else if (i2 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial is not ready to be shown yet.");
                    return false;
                } else if (i2 == 4) {
                    a();
                    return true;
                } else if (i2 != 5) {
                    return false;
                } else {
                    c();
                    this.e = a.IDLE;
                    return true;
                }
            } else if (i == 2) {
                int i3 = AnonymousClass1.f34116a[aVar.ordinal()];
                if (i3 == 1) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already loaded. Not loading another.");
                    InterstitialAdListener interstitialAdListener2 = this.f34113b;
                    if (interstitialAdListener2 != null) {
                        interstitialAdListener2.onInterstitialLoaded(this);
                    }
                    return false;
                } else if (i3 == 3) {
                    AdViewController adViewController2 = this.f34112a;
                    if (adViewController2 != null) {
                        adViewController2.h();
                    }
                    this.e = a.SHOWING;
                    return true;
                } else if (i3 == 4) {
                    a();
                    return true;
                } else if (i3 != 5) {
                    return false;
                } else {
                    if (!z) {
                        return false;
                    }
                    c();
                    this.e = a.IDLE;
                    return true;
                }
            } else if (i == 3) {
                int i4 = AnonymousClass1.f34116a[aVar.ordinal()];
                if (i4 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already showing. Not loading another.");
                    }
                    return false;
                } else if (i4 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already showing an interstitial. Cannot show it again.");
                    return false;
                } else if (i4 == 4) {
                    a();
                    return true;
                } else if (i4 != 5) {
                    return false;
                } else {
                    if (z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot force refresh while showing an interstitial.");
                        return false;
                    }
                    c();
                    this.e = a.IDLE;
                    return true;
                }
            } else if (i == 4) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MoPubInterstitial destroyed. Ignoring all requests.");
                return false;
            } else if (i != 5) {
                return false;
            } else {
                int i5 = AnonymousClass1.f34116a[aVar.ordinal()];
                if (i5 == 1) {
                    c();
                    this.e = a.LOADING;
                    if (!(Build.VERSION.SDK_INT < 28 || (window = this.f34114c.getWindow()) == null || (decorView = window.getDecorView()) == null || (rootWindowInsets = decorView.getRootWindowInsets()) == null || (adViewController = this.f34112a) == null)) {
                        adViewController.setWindowInsets(rootWindowInsets);
                    }
                    if (z) {
                        AdViewController adViewController3 = this.f34112a;
                        if (adViewController3 != null) {
                            adViewController3.f();
                        }
                    } else {
                        AdResponse adResponse = this.f;
                        if (adResponse != null) {
                            fakeLoadAd(adResponse);
                        } else {
                            loadAd();
                        }
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
                    a();
                    return true;
                }
            }
        }
    }

    private boolean b() {
        return this.e == a.DESTROYED;
    }

    private void c() {
        AdViewController adViewController = this.f34112a;
        if (adViewController != null) {
            adViewController.g();
        }
    }

    public void destroy() {
        a(a.DESTROYED, false);
    }

    public void fakeLoad(String str, Map<String, String> map) {
        this.f = new AdResponse.Builder().setAdUnitId(getAdUnitId()).setBaseAdClassName(str).setServerExtras(map).build();
        load();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void fakeLoadAd(AdResponse adResponse) {
        MoPubAd._CC.$default$fakeLoadAd(this, adResponse);
    }

    public void forceRefresh() {
        a(a.IDLE, true);
        a(a.LOADING, true);
    }

    public Activity getActivity() {
        return this.f34114c;
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
        return this.f34112a;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ int getAdWidth() {
        return MoPubAd._CC.$default$getAdWidth(this);
    }

    public InterstitialAdListener getInterstitialAdListener() {
        return this.f34113b;
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
        AdViewController adViewController = this.f34112a;
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
        return this.e == a.READY;
    }

    public void load() {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        a(a.LOADING, false);
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
        if (!b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
            AdViewController adViewController = this.f34112a;
            if (adViewController != null) {
                adViewController.e();
            }
            InterstitialAdListener interstitialAdListener = this.f34113b;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialClicked(this);
            }
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* synthetic */ void onAdCollapsed() {
        AdLifecycleListener.InlineInteractionListener._CC.$default$onAdCollapsed(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial finished.");
        AdViewController adViewController = this.f34112a;
        if (adViewController != null) {
            adViewController.onAdComplete(null);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        if (!b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
            a(a.IDLE, false);
            InterstitialAdListener interstitialAdListener = this.f34113b;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialDismissed(this);
            }
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public /* synthetic */ void onAdExpanded() {
        AdLifecycleListener.InlineInteractionListener._CC.$default$onAdExpanded(this);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(MoPubErrorCode moPubErrorCode) {
        if (!b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            InterstitialAdListener interstitialAdListener = this.f34113b;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialFailed(this, moPubErrorCode);
            }
            a(a.IDLE, false);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        if (!b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            InterstitialAdListener interstitialAdListener = this.f34113b;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialFailed(this, moPubErrorCode);
            }
            a(a.IDLE, false);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        if (!b()) {
            a(a.READY, false);
        }
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
        if (!b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            InterstitialAdListener interstitialAdListener = this.f34113b;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialShown(this);
            }
        }
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void pauseAutoRefresh() {
        MoPubAd._CC.$default$pauseAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public Point resolveAdSize() {
        return DeviceUtils.getDeviceDimensions(this.f34114c);
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
        this.f34112a = adViewController;
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialAdListener) {
        this.f34113b = interstitialAdListener;
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
        AdViewController adViewController = this.f34112a;
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
        return a(a.SHOWING, false);
    }
}
