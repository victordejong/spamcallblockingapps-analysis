package p000;

import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.mopub.common.MoPub;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubAd;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;
/* renamed from: fh1 */
/* loaded from: classes3-dex2jar.jar:fh1.class */
public final /* synthetic */ class fh1 {
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r3 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map $default$getLocalExtras(com.mopub.mobileads.MoPubAd r3) {
        /*
            r0 = r3
            com.mopub.mobileads.AdViewController r0 = r0.getAdViewController()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            r0 = r3
            java.util.Map r0 = r0.getLocalExtras()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            goto L1f
        L17:
            java.util.TreeMap r0 = new java.util.TreeMap
            r1 = r0
            r1.<init>()
            r3 = r0
        L1f:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.fh1.$default$getLocalExtras(com.mopub.mobileads.MoPubAd):java.util.Map");
    }

    public static String $default$getUserDataKeywords(MoPubAd moPubAd) {
        String str = null;
        if (MoPub.canCollectPersonalInformation()) {
            AdViewController adViewController = moPubAd.getAdViewController();
            str = null;
            if (adViewController != null) {
                str = adViewController.getUserDataKeywords();
            }
        }
        return str;
    }

    public static void $default$loadAd(MoPubAd moPubAd) {
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.m3740B(moPubAd.resolveAdSize());
            adViewController.loadAd();
        }
    }

    public static boolean $default$loadFailUrl(MoPubAd moPubAd, MoPubErrorCode moPubErrorCode) {
        qk1.m744c(moPubErrorCode, "errorCode");
        AdViewController adViewController = moPubAd.getAdViewController();
        return adViewController != null ? adViewController.loadFailUrl(moPubErrorCode) : false;
    }

    public static void $default$pauseAutoRefresh(MoPubAd moPubAd) {
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.m3716v();
        }
    }

    public static void $default$resumeAutoRefresh(MoPubAd moPubAd) {
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.m3714x();
        }
    }

    public static void $default$setAdContentView(MoPubAd moPubAd, View view) {
        qk1.m744c(view, Promotion.ACTION_VIEW);
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.setAdContentView(view);
        }
    }

    public static void $default$setAdUnitId(MoPubAd moPubAd, String str) {
        qk1.m744c(str, "adUnitId");
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.setAdUnitId(str);
        }
    }

    public static void $default$setKeywords(MoPubAd moPubAd, String str) {
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.setKeywords(str);
        }
    }

    public static void $default$setLocalExtras(MoPubAd moPubAd, Map map) {
        qk1.m744c(map, "localExtras");
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.setLocalExtras(map);
        }
    }

    public static void $default$setUserDataKeywords(MoPubAd moPubAd, String str) {
        AdViewController adViewController = moPubAd.getAdViewController();
        if (adViewController != null) {
            adViewController.setUserDataKeywords(str);
        }
    }
}
