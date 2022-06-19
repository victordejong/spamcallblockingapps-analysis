package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Spanned;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.ApplicationConstants;
import com.telguarder.ApplicationObject;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.phoneCallWidget.PhonecallStateHandler;
import com.telguarder.features.postCallStatistics.CSAdInfoRowViewHolder;
import com.telguarder.features.postCallStatistics.CSViewAdapter;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.NetworkHelper;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy.class */
public class PostcallAdvertProxy {
    private static final String TAG = "PostcallAdvertProxy";
    private static PostcallAdvertProxy mInstance;
    private TextView mAdInfoTextView;
    public Advert mAdvert;
    private AppCompatActivity mHostActivity;
    private ConnectivityManager.NetworkCallback mNetworkCallBack;
    public PostcallAdvertProvider mPostcallAdvertProvider;
    public boolean mediaIsPlaying = false;
    private boolean mLoadInProgress = false;
    public boolean mLoadStarted = false;

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy$2 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2.class */
    public static /* synthetic */ class C21102 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName */
        static final /* synthetic */ int[] f1281x7453000c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdvertNetworkName.values().length];
            f1281x7453000c = iArr;
            try {
                iArr[AdvertNetworkName.ADMOB.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1281x7453000c[AdvertNetworkName.FACEBOOK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1281x7453000c[AdvertNetworkName.ADMOB_BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1281x7453000c[AdvertNetworkName.FACEBOOK_BANNER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1281x7453000c[AdvertNetworkName.AD_MANAGER_BANNER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1281x7453000c[AdvertNetworkName.PM_OPENWRAP_NOADSERVER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1281x7453000c[AdvertNetworkName.PM_OPENWRAP_DFP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    private PostcallAdvertProxy() {
    }

    private void cleanupPreloadModule(Advert advert) {
        if (advert == null || advert.network == null || !ApplicationConstants.isAdNetworkEnabled(advert.network.name)) {
            return;
        }
        switch (C21102.f1281x7453000c[this.mAdvert.network.name.ordinal()]) {
            case 1:
                if (!PostcallAdMobPreloader.isInstanciated()) {
                    return;
                }
                PostcallAdMobPreloader.getInstance().onDestroy();
                return;
            case 2:
                if (!PostcallFacebookAdPreloader.isInstanciated()) {
                    return;
                }
                PostcallFacebookAdPreloader.getInstance().onDestroy();
                return;
            case 3:
                if (!PostcallAdMobBannerPreloader.isInstanciated()) {
                    return;
                }
                PostcallAdMobBannerPreloader.getInstance().onDestroy();
                return;
            case 4:
                if (!PostcallFacebookBannerAdPreloader.isInstanciated()) {
                    return;
                }
                PostcallFacebookBannerAdPreloader.getInstance().onDestroy();
                return;
            case 5:
                if (!PostcallAdManagerBannerPreloader.isInstanciated()) {
                    return;
                }
                PostcallAdManagerBannerPreloader.getInstance().onDestroy();
                return;
            case 6:
                if (!PostcallPmOpenWrapNoasBannerPreloader.isInstanciated()) {
                    return;
                }
                PostcallPmOpenWrapNoasBannerPreloader.getInstance().onDestroy();
                return;
            case 7:
                if (!PostcallPmOpenWrapDfpBannerPreloader.isInstanciated()) {
                    return;
                }
                PostcallPmOpenWrapDfpBannerPreloader.getInstance().onDestroy();
                return;
            default:
                return;
        }
    }

    private PostcallAdvertProvider getAdvertProvider() {
        PostcallPmOpenWrapDfpBannerProvider postcallPmOpenWrapDfpBannerProvider;
        if (this.mAdvert.network != null && ApplicationConstants.isAdNetworkEnabled(this.mAdvert.network.name)) {
            switch (C21102.f1281x7453000c[this.mAdvert.network.name.ordinal()]) {
                case 1:
                    postcallPmOpenWrapDfpBannerProvider = new PostcallAdMobProvider(this.mAdvert, this.mHostActivity);
                    break;
                case 2:
                    postcallPmOpenWrapDfpBannerProvider = new PostcallFacebookAdProvider(this.mAdvert, this.mHostActivity);
                    break;
                case 3:
                    postcallPmOpenWrapDfpBannerProvider = new PostcallAdMobBannerProvider(this.mAdvert, this.mHostActivity);
                    break;
                case 4:
                    postcallPmOpenWrapDfpBannerProvider = new PostcallFacebookBannerAdProvider(this.mAdvert, this.mHostActivity);
                    break;
                case 5:
                    postcallPmOpenWrapDfpBannerProvider = new PostcallAdManagerBannerProvider(this.mAdvert, this.mHostActivity);
                    break;
                case 6:
                    postcallPmOpenWrapDfpBannerProvider = new PostcallPmOpenWrapNoasBannerProvider(this.mAdvert, this.mHostActivity);
                    break;
                case 7:
                    postcallPmOpenWrapDfpBannerProvider = new PostcallPmOpenWrapDfpBannerProvider(this.mAdvert, this.mHostActivity);
                    break;
            }
            return postcallPmOpenWrapDfpBannerProvider;
        }
        postcallPmOpenWrapDfpBannerProvider = null;
        return postcallPmOpenWrapDfpBannerProvider;
    }

    public static PostcallAdvertProxy getInstance() {
        PostcallAdvertProxy postcallAdvertProxy;
        synchronized (PostcallAdvertProxy.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallAdvertProxy();
                }
                postcallAdvertProxy = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallAdvertProxy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [android.content.Context] */
    private Spanned getWhyDoWeShowAdsHereText() {
        AppCompatActivity appCompatActivity = this.mHostActivity;
        if (appCompatActivity == null) {
            appCompatActivity = ApplicationObject.getContext();
        }
        return AppUtil.fromHtml("<u>" + appCompatActivity.getString(C2083R.string.why_do_whe_show_ads) + "</u>");
    }

    private void initWhyAdsHereText() {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdInfoHolderCallbackInterface(new CSAdInfoRowViewHolder.AdInfoHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdvertProxy$1Bcz8fei1KSrDT6jGFo7Ndi40_k
                @Override // com.telguarder.features.postCallStatistics.CSAdInfoRowViewHolder.AdInfoHolderCallbackInterface
                public final void onDataBinding(TextView textView) {
                    PostcallAdvertProxy.this.lambda$initWhyAdsHereText$3$PostcallAdvertProxy(textView);
                }
            });
        }
    }

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallAdvertProxy.class) {
            try {
                z = mInstance != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private boolean isPreloaderAdClicked() {
        boolean z;
        Advert advert = this.mAdvert;
        if (advert != null && advert.network != null && ApplicationConstants.isAdNetworkEnabled(this.mAdvert.network.name)) {
            int i = C21102.f1281x7453000c[this.mAdvert.network.name.ordinal()];
            if (i == 2) {
                z = PostcallFacebookAdPreloader.getInstance().adClicked;
            } else if (i == 4) {
                z = PostcallFacebookAdPreloader.getInstance().adClicked;
            }
            return z;
        }
        z = false;
        return z;
    }

    public void preloadAd(final Context context, final Advert advert, final boolean z) {
        synchronized (this) {
            if (!this.mLoadInProgress && !this.mLoadStarted && (!LastPhoneCallActivity.isInstantiated() || !LastPhoneCallActivity.getInstance().isVisible())) {
                AdvertManager.addAdNetworkFlowDebugInfo(z ? " PRELOAD BACKUP STARTED" : " PRELOAD STARTED");
                this.mAdvert = advert;
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallAdvertProxy.this.lambda$preloadAd$0$PostcallAdvertProxy(advert, context, z);
                    }
                });
            }
        }
    }

    private void preloadWhenNetAvailable(final Context context, final Advert advert, final boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            preloadAd(context, advert, z);
            return;
        }
        ConnectivityManager.NetworkCallback networkCallback = this.mNetworkCallBack;
        if (networkCallback != null) {
            NetworkHelper.unregisterNetworkCallback(context, networkCallback);
        }
        ConnectivityManager.NetworkCallback networkCallback2 = new ConnectivityManager.NetworkCallback() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                PostcallAdvertProxy.this.preloadAd(context, advert, z);
                if (PostcallAdvertProxy.this.mNetworkCallBack != null) {
                    NetworkHelper.unregisterNetworkCallback(context, PostcallAdvertProxy.this.mNetworkCallBack);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
            }
        };
        this.mNetworkCallBack = networkCallback2;
        NetworkHelper.registerNetworkCallback(context, networkCallback2);
    }

    public void displayBackupAdvert(Context context) {
        synchronized (this) {
            Advert advert = this.mAdvert;
            if (advert == null) {
                return;
            }
            Advert advertForBackupNetwork = advert.getAdvertForBackupNetwork();
            hideCurrentAd();
            if (advertForBackupNetwork != null) {
                if (CSViewAdapter.isInstantiated()) {
                    CSViewAdapter.getInstance().insertAdBox();
                }
                this.mAdvert = advertForBackupNetwork;
                PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
                if (postcallAdvertProvider != null) {
                    postcallAdvertProvider.detachEvents();
                }
                PostcallAdvertProvider advertProvider = getAdvertProvider();
                this.mPostcallAdvertProvider = advertProvider;
                if (advertProvider != null) {
                    String str = TAG;
                    Logger.debug(str, "Load advert from backup ad network (" + this.mAdvert.network.name.toString() + ")");
                    onLoadAd(context, true);
                    if (CSViewAdapter.isInstantiated()) {
                        CSViewAdapter.getInstance().notifyAdBox();
                    }
                }
            } else if (CSViewAdapter.isInstantiated()) {
                CSViewAdapter.getInstance().removeAdBox();
            }
        }
    }

    public void hideAdInfoText() {
        TextView textView = this.mAdInfoTextView;
        if (textView != null) {
            textView.setVisibility(8);
            if (!CSViewAdapter.isInstantiated()) {
                return;
            }
            CSViewAdapter.getInstance().notifyAdInfoBox();
        }
    }

    public void hideCurrentAd() {
        synchronized (this) {
            PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
            if (postcallAdvertProvider != null) {
                postcallAdvertProvider.closed = true;
            }
            hideAdInfoText();
            PostcallAdvertProvider postcallAdvertProvider2 = this.mPostcallAdvertProvider;
            if (postcallAdvertProvider2 != null) {
                try {
                    postcallAdvertProvider2.onHideViews();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider hide views error: " + e.getMessage());
                }
            }
            this.mAdvert = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if (isPreloaderAdClicked() != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isAdClicked() {
        /*
            r2 = this;
            r0 = r2
            monitor-enter(r0)
            r0 = r2
            boolean r0 = r0.isPresented()     // Catch: java.lang.Throwable -> L29
            if (r0 == 0) goto L23
            com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy r0 = getInstance()     // Catch: java.lang.Throwable -> L29
            com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider r0 = r0.mPostcallAdvertProvider     // Catch: java.lang.Throwable -> L29
            boolean r0 = r0.adClicked     // Catch: java.lang.Throwable -> L29
            if (r0 != 0) goto L1e
            r0 = r2
            boolean r0 = r0.isPreloaderAdClicked()     // Catch: java.lang.Throwable -> L29
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L23
        L1e:
            r0 = 1
            r3 = r0
            goto L25
        L23:
            r0 = 0
            r3 = r0
        L25:
            r0 = r2
            monitor-exit(r0)
            r0 = r3
            return r0
        L29:
            r4 = move-exception
            r0 = r2
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy.isAdClicked():boolean");
    }

    public boolean isPresented() {
        boolean z;
        synchronized (this) {
            if (isReady()) {
                if (getInstance().mPostcallAdvertProvider.adPresented) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public boolean isReady() {
        boolean z;
        synchronized (this) {
            if (this.mAdvert != null) {
                if (this.mPostcallAdvertProvider != null) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public /* synthetic */ void lambda$initWhyAdsHereText$3$PostcallAdvertProxy(TextView textView) {
        if (textView != null) {
            this.mAdInfoTextView = textView;
            showAdInfoText();
        }
    }

    public /* synthetic */ void lambda$onLoadAd$1$PostcallAdvertProxy() {
        this.mLoadInProgress = false;
        try {
            showAdInfoText();
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(" SHOW AD INFO TEXT ERROR");
        }
    }

    public /* synthetic */ void lambda$onLoadAd$2$PostcallAdvertProxy(Context context) {
        this.mLoadInProgress = false;
        try {
            displayBackupAdvert(context);
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(" DISPLAY BACKUP ADVERT ERROR");
        }
    }

    public /* synthetic */ void lambda$preloadAd$0$PostcallAdvertProxy(Advert advert, Context context, boolean z) {
        if (advert == null || advert.network == null || !ApplicationConstants.isAdNetworkEnabled(advert.network.name)) {
            return;
        }
        if (!PhonecallStateHandler.getInstance().isKeepAliveRunning()) {
            PhonecallStateHandler.getInstance().preloadKeepAlive(context);
        }
        if (z) {
            PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
            if (postcallAdvertProvider != null) {
                postcallAdvertProvider.detachEvents();
            }
            this.mPostcallAdvertProvider = getAdvertProvider();
        }
        switch (C21102.f1281x7453000c[this.mAdvert.network.name.ordinal()]) {
            case 1:
                PostcallAdMobPreloader.getInstance().preload(context, this.mAdvert);
                return;
            case 2:
                PostcallFacebookAdPreloader.getInstance().preload(context, this.mAdvert);
                return;
            case 3:
                PostcallAdMobBannerPreloader.getInstance().preload(this.mAdvert);
                return;
            case 4:
                PostcallFacebookBannerAdPreloader.getInstance().preload(context, this.mAdvert);
                return;
            case 5:
                PostcallAdManagerBannerPreloader.getInstance().preload(this.mAdvert);
                return;
            case 6:
                PostcallPmOpenWrapNoasBannerPreloader.getInstance().preload(this.mAdvert);
                return;
            case 7:
                PostcallPmOpenWrapDfpBannerPreloader.getInstance().preload(this.mAdvert);
                return;
            default:
                return;
        }
    }

    public void onBackPressed() {
        if (!isReady() || this.mAdvert.network == null) {
            return;
        }
        AnalyticsManager.getInstance().sendAdvertBackPressedAction(this.mAdvert.network.name.toString().toLowerCase(Locale.ENGLISH));
    }

    public void onDestroy() {
        synchronized (this) {
            this.mLoadStarted = false;
            this.mLoadInProgress = false;
            PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
            if (postcallAdvertProvider != null) {
                try {
                    postcallAdvertProvider.onDestroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider destroy error: " + e.getMessage());
                }
            }
            mInstance = null;
        }
    }

    public void onHomePressed() {
        if (!isReady() || this.mAdvert.network == null) {
            return;
        }
        AnalyticsManager.getInstance().sendAdvertHomePressedAction(this.mAdvert.network.name.toString().toLowerCase(Locale.ENGLISH));
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0093 A[Catch: all -> 0x00ef, TryCatch #1 {, blocks: (B:4:0x0002, B:11:0x0012, B:13:0x0027, B:15:0x002d, B:17:0x0037, B:19:0x003f, B:22:0x0052, B:24:0x0059, B:25:0x0064, B:27:0x0077, B:29:0x0080, B:31:0x0086, B:33:0x008d, B:35:0x0093, B:36:0x0099, B:37:0x009c, B:39:0x00b1, B:41:0x00c0), top: B:51:0x0002, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLoadAd(final android.content.Context r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy.onLoadAd(android.content.Context, boolean):void");
    }

    public void onPause() {
        synchronized (this) {
            PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
            if (postcallAdvertProvider != null) {
                try {
                    postcallAdvertProvider.onPause();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider pause error: " + e.getMessage());
                }
            }
        }
    }

    public void onResume() {
        synchronized (this) {
            PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
            if (postcallAdvertProvider != null) {
                try {
                    postcallAdvertProvider.onResume();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider resume error: " + e.getMessage());
                }
            }
        }
    }

    public void onScreenOff() {
        if (!isReady() || this.mAdvert.network == null) {
            return;
        }
        AnalyticsManager.getInstance().sendAdvertScreenOffAction(this.mAdvert.network.name.toString().toLowerCase(Locale.ENGLISH));
    }

    public void onStop() {
        synchronized (this) {
            PhonecallStateHandler.getInstance().stopPreloadKeepAlive();
            this.mLoadStarted = false;
            this.mLoadInProgress = false;
            PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
            if (postcallAdvertProvider != null) {
                try {
                    postcallAdvertProvider.onStop();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider stop error: " + e.getMessage());
                }
            }
        }
    }

    public void preloadBackup(Context context) {
        Advert advertForBackupNetwork;
        synchronized (this) {
            if (this.mAdvert == null) {
                this.mAdvert = AdvertManager.getInstance().getPostcallAdvertFromCache();
            }
            cleanupPreloadModule(this.mAdvert);
            Advert advert = this.mAdvert;
            if (advert != null && advert.backupNetworkAvailable() && (advertForBackupNetwork = this.mAdvert.getAdvertForBackupNetwork()) != null && advertForBackupNetwork.network != null && ApplicationConstants.isAdNetworkEnabled(advertForBackupNetwork.network.name)) {
                preloadWhenNetAvailable(context, advertForBackupNetwork, true);
            }
        }
    }

    public void prepareForPostcallActivity(AppCompatActivity appCompatActivity) {
        synchronized (this) {
            this.mHostActivity = appCompatActivity;
            initWhyAdsHereText();
            if (this.mAdvert == null) {
                Advert postcallAdvertFromCache = AdvertManager.getInstance().getPostcallAdvertFromCache();
                this.mAdvert = postcallAdvertFromCache;
                if (postcallAdvertFromCache != null) {
                    PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
                    if (postcallAdvertProvider != null) {
                        postcallAdvertProvider.detachEvents();
                    }
                    this.mPostcallAdvertProvider = getAdvertProvider();
                }
            }
        }
    }

    public void showAdInfoText() {
        TextView textView = this.mAdInfoTextView;
        if (textView == null) {
            initWhyAdsHereText();
            return;
        }
        textView.setText(getWhyDoWeShowAdsHereText());
        PostcallAdvertProvider postcallAdvertProvider = this.mPostcallAdvertProvider;
        this.mAdInfoTextView.setVisibility((postcallAdvertProvider == null || postcallAdvertProvider.adShowBeginTimestamp <= 0 || this.mPostcallAdvertProvider.closed) ? 8 : 0);
        if (!CSViewAdapter.isInstantiated()) {
            return;
        }
        CSViewAdapter.getInstance().notifyAdInfoBox();
    }

    public void startPreload(Context context) {
        synchronized (this) {
            Advert postcallAdvertFromCache = AdvertManager.getInstance().getPostcallAdvertFromCache();
            if (postcallAdvertFromCache != null) {
                AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD AD WATERFLOW STARTED\n        - flow: " + postcallAdvertFromCache.getFlowText());
                preloadWhenNetAvailable(context, postcallAdvertFromCache, false);
            } else {
                AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD AD WATERFLOW STARTED\n        - ADVDERT FLOW EMPTY! ");
            }
        }
    }
}
