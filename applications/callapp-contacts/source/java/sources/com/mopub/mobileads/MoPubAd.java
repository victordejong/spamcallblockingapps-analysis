package com.mopub.mobileads;

import android.graphics.Point;
import android.location.Location;
import android.view.View;
import com.mopub.common.AdFormat;
import com.mopub.common.MoPub;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.network.AdResponse;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\bf\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\nH\u0017J\n\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0017J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\b\u0010\u000f\u001a\u00020\nH\u0017J\n\u0010\u0010\u001a\u0004\u0018\u00010\fH\u0017J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00130\u0012H\u0017J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0017J\n\u0010\u0016\u001a\u0004\u0018\u00010\fH\u0017J\b\u0010\u0017\u001a\u00020\u0004H\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0017J\b\u0010\u001c\u001a\u00020\u0004H\u0017J\b\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020\u0004H\u0017J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"H\u0017J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\fH\u0017J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u000eH&J\u0012\u0010'\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010\fH\u0017J\u001c\u0010)\u001a\u00020\u00042\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00130\u0012H\u0017J\u0012\u0010+\u001a\u00020\u00042\b\u0010,\u001a\u0004\u0018\u00010\fH\u0017ø\u0001��\u0082\u0002\u0007\n\u0005\b\u0091(0\u0001¨\u0006-"}, m4298d2 = {"Lcom/mopub/mobileads/MoPubAd;", "Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;", "Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;", "fakeLoadAd", "", "adResponse", "Lcom/mopub/network/AdResponse;", "getAdFormat", "Lcom/mopub/common/AdFormat;", "getAdHeight", "", "getAdUnitId", "", "getAdViewController", "Lcom/mopub/mobileads/AdViewController;", "getAdWidth", "getKeywords", "getLocalExtras", "", "", "getLocation", "Landroid/location/Location;", "getUserDataKeywords", "loadAd", "loadFailUrl", "", "errorCode", "Lcom/mopub/mobileads/MoPubErrorCode;", "pauseAutoRefresh", "resolveAdSize", "Landroid/graphics/Point;", "resumeAutoRefresh", "setAdContentView", "view", "Landroid/view/View;", "setAdUnitId", "adUnitId", "setAdViewController", "adViewController", "setKeywords", VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, "setLocalExtras", "localExtras", "setUserDataKeywords", "userDataKeywords", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubAd.class */
public interface MoPubAd extends AdLifecycleListener.InteractionListener, AdLifecycleListener.LoadListener {

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubAd$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$fakeLoadAd(MoPubAd moPubAd, AdResponse adResponse) {
            C18524p.m3841c(adResponse, "adResponse");
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                adViewController.f59077f = moPubAd.resolveAdSize();
                adViewController.fakeLoadAd(adResponse);
            }
        }

        public static int $default$getAdHeight(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                return adViewController.getAdHeight();
            }
            return 0;
        }

        public static String $default$getAdUnitId(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                return adViewController.getAdUnitId();
            }
            return null;
        }

        public static int $default$getAdWidth(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                return adViewController.getAdWidth();
            }
            return 0;
        }

        public static String $default$getKeywords(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                return adViewController.getKeywords();
            }
            return null;
        }

        public static Map $default$getLocalExtras(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null && adViewController.f59076e != null) {
                return new TreeMap(adViewController.f59076e);
            }
            return new TreeMap();
        }

        public static Location $default$getLocation(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                return adViewController.getLocation();
            }
            return null;
        }

        public static String $default$getUserDataKeywords(MoPubAd moPubAd) {
            AdViewController adViewController;
            if (!MoPub.canCollectPersonalInformation() || (adViewController = moPubAd.getAdViewController()) == null) {
                return null;
            }
            return adViewController.getUserDataKeywords();
        }

        public static void $default$loadAd(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                adViewController.f59077f = moPubAd.resolveAdSize();
                adViewController.loadAd();
            }
        }

        public static boolean $default$loadFailUrl(MoPubAd moPubAd, MoPubErrorCode errorCode) {
            C18524p.m3841c(errorCode, "errorCode");
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                return adViewController.m6586a(errorCode);
            }
            return false;
        }

        public static void $default$pauseAutoRefresh(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                adViewController.m6579b(false);
            }
        }

        public static void $default$resumeAutoRefresh(MoPubAd moPubAd) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                adViewController.m6589a();
            }
        }

        public static void $default$setAdContentView(MoPubAd moPubAd, final View view) {
            C18524p.m3841c(view, "view");
            final AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                final MoPubAd moPubAd2 = adViewController.getMoPubAd();
                if (!(moPubAd2 instanceof MoPubView)) {
                    return;
                }
                adViewController.f59074c.post(new Runnable() { // from class: com.mopub.mobileads.AdViewController.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((MoPubView) moPubAd2).removeAllViews();
                        MoPubView moPubView = (MoPubView) moPubAd2;
                        View view2 = view;
                        moPubView.addView(view2, AdViewController.m6587a(AdViewController.this, view2));
                    }
                });
            }
        }

        public static void $default$setAdUnitId(MoPubAd moPubAd, String adUnitId) {
            C18524p.m3841c(adUnitId, "adUnitId");
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                adViewController.setAdUnitId(adUnitId);
            }
        }

        public static void $default$setKeywords(MoPubAd moPubAd, String str) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                adViewController.setKeywords(str);
            }
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map<java.lang.String, java.lang.Object>, com.mopub.mobileads.AdViewController] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        public static void $default$setLocalExtras(MoPubAd moPubAd, Map localExtras) {
            C18524p.m3841c(localExtras, "localExtras");
            if (moPubAd.getAdViewController() != null) {
                ?? treeMap = localExtras != null ? new TreeMap(localExtras) : new TreeMap();
                treeMap.f59076e = treeMap;
            }
        }

        public static void $default$setUserDataKeywords(MoPubAd moPubAd, String str) {
            AdViewController adViewController = moPubAd.getAdViewController();
            if (adViewController != null) {
                adViewController.setUserDataKeywords(str);
            }
        }
    }

    void fakeLoadAd(AdResponse adResponse);

    AdFormat getAdFormat();

    int getAdHeight();

    String getAdUnitId();

    AdViewController getAdViewController();

    int getAdWidth();

    String getKeywords();

    Map<String, Object> getLocalExtras();

    Location getLocation();

    String getUserDataKeywords();

    void loadAd();

    boolean loadFailUrl(MoPubErrorCode moPubErrorCode);

    void pauseAutoRefresh();

    Point resolveAdSize();

    void resumeAutoRefresh();

    void setAdContentView(View view);

    void setAdUnitId(String str);

    void setAdViewController(AdViewController adViewController);

    void setKeywords(String str);

    void setLocalExtras(Map<String, ? extends Object> map);

    void setUserDataKeywords(String str);
}
