package com.telguarder;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import androidx.multidex.MultiDexApplication;
import com.facebook.ads.AudienceNetworkAds;
import com.google.android.gms.ads.MobileAds;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.numberLookup.OfflineSpamDbHelper;
import com.telguarder.features.phoneNumberBlocker.BlockedNumberManager;
import com.telguarder.features.rateAndFeedback.RateAndFeedbackManager;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.VolleyHelper;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.preferences.PreferencesKeys;
import com.telguarder.helpers.preferences.PreferencesManager;
import io.realm.Realm;
/* loaded from: classes2-dex2jar.jar:com/telguarder/ApplicationObject.class */
public class ApplicationObject extends MultiDexApplication {
    private static Context mContext;
    private static boolean mobileAdsInitialized = false;

    public static Context getContext() {
        return mContext;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (mContext == null) {
            mContext = getApplicationContext();
        }
        CountryManager.getInstance().newConfig = configuration;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x008c -> B:20:0x001b). Please submit an issue!!! */
    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        mContext = applicationContext;
        try {
            if (!mobileAdsInitialized) {
                MobileAds.initialize(applicationContext);
                mobileAdsInitialized = true;
            }
        } catch (Exception e) {
        }
        try {
            if (!AudienceNetworkAds.isInitialized(mContext)) {
                AudienceNetworkAds.buildInitSettings(mContext).initialize();
            }
        } catch (Exception e2) {
        }
        Realm.init(mContext);
        AnalyticsManager.getInstance().initAnalytics(mContext);
        VolleyHelper.initWithContext(mContext);
        CountryManager.getInstance().initCountryManager();
        RateAndFeedbackManager.getInstance().init();
        BlockedNumberManager.getInstance().initBlockedNumberManager(mContext);
        AdvertManager.getInstance().init(mContext);
        OfflineSpamDbHelper.getInstance().init(mContext);
        if (Build.VERSION.SDK_INT > 22 || !PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_OUTGOING_CALLS)) {
            return;
        }
        PreferencesManager.getInstance().saveSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_OUTGOING_CALLS, false);
    }
}
