package com.telguarder.features.advertisements.ListbannerAds;

import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.ApplicationConstants;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.postCallSpamInfo.SpamCommentAdData;
import com.telguarder.features.postCallSpamInfo.SpamCommentsViewAdapter;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy.class */
public class ListbannerAdvertProxy {
    private static final String TAG = "ListbannerAdvertProxy";
    private Advert mAdvert;
    private AppCompatActivity mHostActivity;
    public ListbannerAdvertProvider mListbannerAdvertProvider;
    private SpamCommentAdData mParentData;

    /* renamed from: com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProxy$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy$1.class */
    public static /* synthetic */ class C20921 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName */
        static final /* synthetic */ int[] f1277x7453000c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdvertNetworkName.values().length];
            f1277x7453000c = iArr;
            try {
                iArr[AdvertNetworkName.ADMOB_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1277x7453000c[AdvertNetworkName.FACEBOOK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ListbannerAdvertProxy(AppCompatActivity appCompatActivity, Advert advert, SpamCommentAdData spamCommentAdData) {
        this.mHostActivity = appCompatActivity;
        this.mParentData = spamCommentAdData;
        this.mAdvert = advert;
        if (advert != null) {
            this.mListbannerAdvertProvider = getAdvertProvider();
        }
    }

    private ListbannerAdvertProvider getAdvertProvider() {
        ListbannerFacebookAdProvider listbannerFacebookAdProvider;
        if (this.mAdvert.network != null && ApplicationConstants.isAdNetworkEnabled(this.mAdvert.network.name)) {
            int i = C20921.f1277x7453000c[this.mAdvert.network.name.ordinal()];
            if (i == 1) {
                listbannerFacebookAdProvider = new ListbannerAdmobBannerAdProvider(this.mAdvert, this.mHostActivity);
            } else if (i == 2) {
                listbannerFacebookAdProvider = new ListbannerFacebookAdProvider(this.mAdvert, this.mHostActivity);
            }
            return listbannerFacebookAdProvider;
        }
        listbannerFacebookAdProvider = null;
        return listbannerFacebookAdProvider;
    }

    public void hideCurrentAd() {
        synchronized (this) {
            ListbannerAdvertProvider listbannerAdvertProvider = this.mListbannerAdvertProvider;
            if (listbannerAdvertProvider != null) {
                listbannerAdvertProvider.closed = true;
            }
            ListbannerAdvertProvider listbannerAdvertProvider2 = this.mListbannerAdvertProvider;
            if (listbannerAdvertProvider2 != null) {
                try {
                    listbannerAdvertProvider2.onHideViews();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider hide views error: " + e.getMessage());
                }
            }
        }
    }

    public boolean isAdClicked() {
        boolean z;
        synchronized (this) {
            if (isLoaded()) {
                if (this.mListbannerAdvertProvider.adClicked) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public boolean isLoaded() {
        boolean z;
        synchronized (this) {
            if (isReady()) {
                if (this.mListbannerAdvertProvider.adLoaded) {
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
                if (this.mListbannerAdvertProvider != null) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public void load(final Runnable runnable) {
        ListbannerAdvertProvider listbannerAdvertProvider = this.mListbannerAdvertProvider;
        if (listbannerAdvertProvider == null || listbannerAdvertProvider.adLoaded) {
            runnable.run();
            return;
        }
        ListbannerAdvertProvider listbannerAdvertProvider2 = this.mListbannerAdvertProvider;
        AppCompatActivity appCompatActivity = this.mHostActivity;
        runnable.getClass();
        listbannerAdvertProvider2.onLoadAd(appCompatActivity, new Runnable() { // from class: com.telguarder.features.advertisements.ListbannerAds._$$Lambda$m5h7XYK32O7TqBM7SWcvc7fLX0o
            @Override // java.lang.Runnable
            public final void run() {
                runnable.run();
            }
        }, new Runnable() { // from class: com.telguarder.features.advertisements.ListbannerAds._$$Lambda$ListbannerAdvertProxy$6N_vSYBZYZhRkXiF1QeN5BXYd_U
            @Override // java.lang.Runnable
            public final void run() {
                ListbannerAdvertProxy.this.lambda$load$0$ListbannerAdvertProxy(runnable);
            }
        });
    }

    /* renamed from: loadBackup */
    public void lambda$load$0$ListbannerAdvertProxy(Runnable runnable) {
        synchronized (this) {
            Advert advert = this.mAdvert;
            if (advert != null) {
                Advert advertForBackupNetwork = advert.getAdvertForBackupNetwork();
                if (advertForBackupNetwork != null) {
                    this.mAdvert = advertForBackupNetwork;
                    ListbannerAdvertProvider advertProvider = getAdvertProvider();
                    this.mListbannerAdvertProvider = advertProvider;
                    if (advertProvider != null) {
                        String str = TAG;
                        Logger.debug(str, "Load advert from backup ad network (" + this.mAdvert.network.name.toString() + ")");
                        load(runnable);
                        return;
                    }
                }
                try {
                    if (this.mParentData != null && SpamCommentsViewAdapter.isInstantiated()) {
                        SpamCommentsViewAdapter.getInstance().remove(this.mParentData);
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    public void onBackPressed() {
        if (!isReady() || this.mAdvert.network == null) {
            return;
        }
        AnalyticsManager.getInstance().sendAdvertBackPressedAction(this.mAdvert.network.name.toString().toLowerCase(Locale.ENGLISH));
    }

    public void onBindAd(ViewGroup viewGroup) {
        synchronized (this) {
            if (viewGroup != null) {
                ListbannerAdvertProvider listbannerAdvertProvider = this.mListbannerAdvertProvider;
                if (listbannerAdvertProvider != null) {
                    listbannerAdvertProvider.bindAd(viewGroup);
                }
            }
        }
    }

    public void onDestroy() {
        synchronized (this) {
            ListbannerAdvertProvider listbannerAdvertProvider = this.mListbannerAdvertProvider;
            if (listbannerAdvertProvider != null) {
                try {
                    listbannerAdvertProvider.onDestroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider destroy error: " + e.getMessage());
                }
            }
        }
    }

    public void onHomePressed() {
        if (!isReady() || this.mAdvert.network == null) {
            return;
        }
        AnalyticsManager.getInstance().sendAdvertHomePressedAction(this.mAdvert.network.name.toString().toLowerCase(Locale.ENGLISH));
    }

    public void onPause() {
        synchronized (this) {
            ListbannerAdvertProvider listbannerAdvertProvider = this.mListbannerAdvertProvider;
            if (listbannerAdvertProvider != null) {
                try {
                    listbannerAdvertProvider.onPause();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider pause error: " + e.getMessage());
                }
            }
        }
    }

    public void onResume() {
        synchronized (this) {
            ListbannerAdvertProvider listbannerAdvertProvider = this.mListbannerAdvertProvider;
            if (listbannerAdvertProvider != null) {
                try {
                    listbannerAdvertProvider.onResume();
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
            ListbannerAdvertProvider listbannerAdvertProvider = this.mListbannerAdvertProvider;
            if (listbannerAdvertProvider != null) {
                try {
                    listbannerAdvertProvider.onStop();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.debug(str, "advert provider stop error: " + e.getMessage());
                }
            }
        }
    }
}
