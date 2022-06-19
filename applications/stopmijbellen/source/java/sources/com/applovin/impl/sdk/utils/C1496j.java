package com.applovin.impl.sdk.utils;

import android.support.p012v4.media.C0082b;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAd;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.impl.sdk.p053ad.AbstractC1293g;
import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.utils.j */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/j.class */
public class C1496j {
    /* renamed from: a */
    public static void m5037a(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.31
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdViewEventListener.adOpenedFullscreen(C1496j.m5007b(appLovinAd), appLovinAdView);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen opened event", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5036a(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView, final AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdViewEventListener.adFailedToDisplay(C1496j.m5007b(appLovinAd), appLovinAdView, appLovinAdViewDisplayErrorCode);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about display failed event", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5035a(final AppLovinNativeAdEventListener appLovinNativeAdEventListener, final AppLovinNativeAd appLovinNativeAd) {
        if (appLovinNativeAdEventListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.27
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        appLovinNativeAdEventListener.onNativeAdClicked(appLovinNativeAd);
                    } catch (Throwable th) {
                        C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify native ad event listener about ad click", th);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static void m5034a(final AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, final int i) {
        if (appLovinNativeAdLoadListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.26
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        appLovinNativeAdLoadListener.onNativeAdLoadFailed(i);
                    } catch (Throwable th) {
                        C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify native ad event listener about ad failing to load", th);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static void m5033a(MaxAdListener maxAdListener, MaxAd maxAd) {
        m5028a(maxAdListener, maxAd, false);
    }

    /* renamed from: a */
    public static void m5032a(MaxAdListener maxAdListener, MaxAd maxAd, MaxError maxError) {
        m5031a(maxAdListener, maxAd, maxError, false);
    }

    /* renamed from: a */
    public static void m5031a(final MaxAdListener maxAdListener, final MaxAd maxAd, final MaxError maxError, boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxAdListener.onAdDisplayFailed(maxAd, maxError);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad failing to display", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5030a(MaxAdListener maxAdListener, MaxAd maxAd, MaxReward maxReward) {
        m5029a(maxAdListener, maxAd, maxReward, false);
    }

    /* renamed from: a */
    public static void m5029a(final MaxAdListener maxAdListener, final MaxAd maxAd, final MaxReward maxReward, boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxRewardedAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.17
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((MaxRewardedAdListener) maxAdListener).onUserRewarded(maxAd, maxReward);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about user being rewarded", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5028a(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxAdListener.onAdLoaded(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being loaded", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5027a(MaxAdListener maxAdListener, String str, MaxError maxError) {
        m5026a(maxAdListener, str, maxError, false);
    }

    /* renamed from: a */
    public static void m5026a(final MaxAdListener maxAdListener, final String str, final MaxError maxError, boolean z) {
        if (str == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxAdListener.onAdLoadFailed(str, maxError);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad failing to load", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5025a(MaxAdRevenueListener maxAdRevenueListener, MaxAd maxAd) {
        m5024a(maxAdRevenueListener, maxAd, false);
    }

    /* renamed from: a */
    public static void m5024a(final MaxAdRevenueListener maxAdRevenueListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || maxAdRevenueListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxAdRevenueListener.onAdRevenuePaid(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad revenue being paid", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5023a(final MaxNativeAdListener maxNativeAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.22
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxNativeAdListener.onNativeAdClicked(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about native ad being clicked", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5022a(final MaxNativeAdListener maxNativeAdListener, final MaxNativeAdView maxNativeAdView, final MaxAd maxAd, boolean z) {
        if (maxNativeAdView == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.20
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxNativeAdListener.onNativeAdLoaded(maxNativeAdView, maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about native ad being loaded", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5021a(final MaxNativeAdListener maxNativeAdListener, final String str, final MaxError maxError, boolean z) {
        if (str == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.21
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxNativeAdListener.onNativeAdLoadFailed(str, maxError);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about native ad failing to load", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5019a(final AppLovinAdClickListener appLovinAdClickListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdClickListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.28
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdClickListener.adClicked(C1496j.m5007b(appLovinAd));
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being clicked", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5018a(final AppLovinAdDisplayListener appLovinAdDisplayListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdDisplayListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.12
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdDisplayListener.adDisplayed(C1496j.m5007b(appLovinAd));
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being displayed", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5017a(final AppLovinAdDisplayListener appLovinAdDisplayListener, final String str) {
        if (appLovinAdDisplayListener instanceof AbstractC1293g) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.1
                @Override // java.lang.Runnable
                public void run() {
                    ((AbstractC1293g) appLovinAdDisplayListener).onAdDisplayFailed(str);
                }
            });
        }
    }

    /* renamed from: a */
    public static void m5016a(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final int i) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdRewardListener.validationRequestFailed(C1496j.m5007b(appLovinAd), i);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request failing", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5015a(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map<String, String> map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdRewardListener.userRewardVerified(C1496j.m5007b(appLovinAd), map);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad reward listener about successful reward validation request", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5014a(final AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdVideoPlaybackListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.29
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdVideoPlaybackListener.videoPlaybackBegan(C1496j.m5007b(appLovinAd));
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback began", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5013a(final AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, final AppLovinAd appLovinAd, final double d, final boolean z) {
        if (appLovinAd == null || appLovinAdVideoPlaybackListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.30
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdVideoPlaybackListener.videoPlaybackEnded(C1496j.m5007b(appLovinAd), d, z);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback ended", th);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m5012a(final AppLovinPostbackListener appLovinPostbackListener, final String str) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.24
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        appLovinPostbackListener.onPostbackSuccess(str);
                    } catch (Throwable th) {
                        StringBuilder m8752j = C0082b.m8752j("Unable to notify AppLovinPostbackListener about postback URL (");
                        m8752j.append(str);
                        m8752j.append(") executed");
                        C1479t.m5113c("ListenerCallbackInvoker", m8752j.toString(), th);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static void m5011a(final AppLovinPostbackListener appLovinPostbackListener, final String str, final int i) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.25
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        appLovinPostbackListener.onPostbackFailure(str, i);
                    } catch (Throwable th) {
                        StringBuilder m8752j = C0082b.m8752j("Unable to notify AppLovinPostbackListener about postback URL (");
                        m8752j.append(str);
                        m8752j.append(") failing to execute with error code (");
                        m8752j.append(i);
                        m8752j.append("):");
                        C1479t.m5113c("ListenerCallbackInvoker", m8752j.toString(), th);
                    }
                }
            });
        }
    }

    /* renamed from: b */
    public static AppLovinAd m5007b(AppLovinAd appLovinAd) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        if (appLovinAdImpl.getDummyAd() != null) {
            appLovinAd = appLovinAdImpl.getDummyAd();
        }
        return appLovinAd;
    }

    /* renamed from: b */
    public static void m5010b(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.32
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdViewEventListener.adClosedFullscreen(C1496j.m5007b(appLovinAd), appLovinAdView);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen closed event", th);
                }
            }
        });
    }

    /* renamed from: b */
    public static void m5009b(MaxAdListener maxAdListener, MaxAd maxAd) {
        m5008b(maxAdListener, maxAd, false);
    }

    /* renamed from: b */
    public static void m5008b(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxAdListener.onAdDisplayed(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being displayed", th);
                }
            }
        });
    }

    /* renamed from: b */
    public static void m5006b(final AppLovinAdDisplayListener appLovinAdDisplayListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdDisplayListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.23
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdDisplayListener.adHidden(C1496j.m5007b(appLovinAd));
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being hidden", th);
                }
            }
        });
    }

    /* renamed from: b */
    public static void m5005b(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map<String, String> map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdRewardListener.userOverQuota(C1496j.m5007b(appLovinAd), map);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad reward listener about exceeding quota", th);
                }
            }
        });
    }

    /* renamed from: c */
    public static void m5004c(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.33
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdViewEventListener.adLeftApplication(C1496j.m5007b(appLovinAd), appLovinAdView);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about application leave event", th);
                }
            }
        });
    }

    /* renamed from: c */
    public static void m5003c(MaxAdListener maxAdListener, MaxAd maxAd) {
        m5002c(maxAdListener, maxAd, false);
    }

    /* renamed from: c */
    public static void m5002c(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxAdListener.onAdHidden(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being hidden", th);
                }
            }
        });
    }

    /* renamed from: c */
    public static void m5001c(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map<String, String> map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.j.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdRewardListener.userRewardRejected(C1496j.m5007b(appLovinAd), map);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request being rejected", th);
                }
            }
        });
    }

    /* renamed from: d */
    public static void m5000d(MaxAdListener maxAdListener, MaxAd maxAd) {
        m4999d(maxAdListener, maxAd, false);
    }

    /* renamed from: d */
    public static void m4999d(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxAdListener.onAdClicked(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being clicked", th);
                }
            }
        });
    }

    /* renamed from: e */
    public static void m4998e(MaxAdListener maxAdListener, MaxAd maxAd) {
        m4997e(maxAdListener, maxAd, false);
    }

    /* renamed from: e */
    public static void m4997e(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxRewardedAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.15
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((MaxRewardedAdListener) maxAdListener).onRewardedVideoStarted(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about rewarded video starting", th);
                }
            }
        });
    }

    /* renamed from: f */
    public static void m4996f(MaxAdListener maxAdListener, MaxAd maxAd) {
        m4995f(maxAdListener, maxAd, false);
    }

    /* renamed from: f */
    public static void m4995f(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxRewardedAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.16
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((MaxRewardedAdListener) maxAdListener).onRewardedVideoCompleted(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about rewarded video completing", th);
                }
            }
        });
    }

    /* renamed from: g */
    public static void m4994g(MaxAdListener maxAdListener, MaxAd maxAd) {
        m4993g(maxAdListener, maxAd, false);
    }

    /* renamed from: g */
    public static void m4993g(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxAdViewAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.18
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((MaxAdViewAdListener) maxAdListener).onAdExpanded(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being expanded", th);
                }
            }
        });
    }

    /* renamed from: h */
    public static void m4992h(MaxAdListener maxAdListener, MaxAd maxAd) {
        m4991h(maxAdListener, maxAd, false);
    }

    /* renamed from: h */
    public static void m4991h(final MaxAdListener maxAdListener, final MaxAd maxAd, boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxAdViewAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.j.19
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((MaxAdViewAdListener) maxAdListener).onAdCollapsed(maxAd);
                } catch (Throwable th) {
                    C1479t.m5113c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being collapsed", th);
                }
            }
        });
    }
}
