package com.criteo.sync.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.text.TextUtils;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/CriteoSyncManager.class */
public class CriteoSyncManager {
    public String appId;
    public boolean consentRequired;
    public Context context;
    public String integrationId;
    public PreferencesManager preferencesManager;
    public UserConsent userConsent = UserConsent.UNKNOWN;

    public CriteoSyncManager(Context context, String str, boolean z, boolean z2) {
        this.context = context;
        this.integrationId = str;
        this.preferencesManager = new PreferencesManager(context);
        this.appId = DeviceInfo.getBundleName(context);
        this.consentRequired = z2;
        CrtoLog.setEnabled(z);
    }

    private boolean customTabsHasPackage() {
        return CustomTabsHelper.getPackageNameToUse(this.context) != null;
    }

    public EnvironmentChecker buildEnvironmentChecker() {
        return new EnvironmentChecker(this.context);
    }

    public void callCustomTabs(Uri uri) {
        new CustomTabsServiceCaller(this, uri).createAndLoad();
    }

    public boolean canCollectWithAdvertisingInfo(AdvertisingInfo advertisingInfo) {
        return advertisingInfo != null && !TextUtils.isEmpty(advertisingInfo.getAdvertisingId()) && advertisingInfo.getLimitedAdTracking() == LimitedAdTracking.DISABLED;
    }

    public boolean checkConsent() {
        if (!this.consentRequired || this.userConsent == UserConsent.GRANTED) {
            return true;
        }
        CrtoLog.m35512i("Explicit consent not given, cannot sync until provided");
        return false;
    }

    public void collectSdm() {
        CrtoLog.m35516d("Collecting SDM");
        if (isLibraryInitializable() && checkConsent()) {
            CrtoLog.m35516d("Checking network state");
            if (!isNetworkMetered()) {
                CrtoLog.m35516d("Checking cached config");
                if (isLastCollectionTooOld(ConfigManager.getConfig(this, false))) {
                    CrtoLog.m35516d("Fetching GAID");
                    AdvertisingInfo advertisingInfo = getAdvertisingInfo();
                    if (canCollectWithAdvertisingInfo(advertisingInfo)) {
                        CrtoLog.m35516d("Updating config");
                        Config config = ConfigManager.getConfig(this, true);
                        if (config.isCollectionActive()) {
                            Uri parse = Uri.parse(getCollectionUrlParameters(advertisingInfo.getAdvertisingId()).getCollectionUrl(config.getCollectionEndpoint()));
                            CrtoLog.m35516d("Collection enabled. Collecting on " + parse + "...");
                            callCustomTabs(parse);
                        }
                    }
                }
            }
        }
    }

    public AdvertisingInfo getAdvertisingInfo() {
        return AdvertisingInfoLoader.getAdvertisingInfo(this.context);
    }

    public CollectionUrlParameters getCollectionUrlParameters(String str) {
        return new CollectionUrlParameters(this.appId, this.integrationId, "Android", DeviceInfo.getAndroidVersion(), DeviceInfo.getSDKVersion(), str);
    }

    public ConfigUrlParameters getConfigUrlParameters() {
        AdvertisingInfo advertisingInfo = getAdvertisingInfo();
        return new ConfigUrlParameters(this.appId, this.integrationId, "Android", DeviceInfo.getAndroidVersion(), DeviceInfo.getSDKVersion(), advertisingInfo != null ? advertisingInfo.getAdvertisingId() : null, advertisingInfo != null ? advertisingInfo.getLimitedAdTracking() : LimitedAdTracking.UNKNOWN, isNetworkMetered(), this.consentRequired, this.userConsent);
    }

    public Context getContext() {
        return this.context;
    }

    public PreferencesManager getPreferencesManager() {
        return this.preferencesManager;
    }

    public void initCollection() {
        try {
            if (!this.consentRequired || this.userConsent != UserConsent.UNKNOWN) {
                initCollectionOnAnotherThread();
            } else {
                CrtoLog.m35512i("Library initialization stopped until user consent is granted or refused");
            }
        } catch (Throwable th) {
            try {
                ErrorReporting.Report(th, getContext(), ConfigManager.getConfig(this, false), false);
            } catch (Throwable th2) {
            }
        }
    }

    public void initCollectionAsync() {
        try {
            if (isLibraryInitializable()) {
                CrtoLog.m35516d("Get config");
                ConfigManager.getConfig(this, true);
                CrtoLog.m35516d("Run logic now");
                collectSdm();
            }
        } catch (Throwable th) {
            try {
                ErrorReporting.Report(th, getContext(), ConfigManager.getConfig(this, false), false);
            } catch (Throwable th2) {
            }
        }
    }

    public void initCollectionOnAnotherThread() {
        new Timer().schedule(new TimerTask() { // from class: com.criteo.sync.sdk.CriteoSyncManager.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                CriteoSyncManager.this.initCollectionAsync();
            }
        }, 0L);
    }

    public boolean isLastCollectionTooOld(Config config) {
        return System.currentTimeMillis() > this.preferencesManager.getLastCollectionTime() + config.getCollectionPeriod().toMillis();
    }

    public boolean isLibraryInitializable() {
        EnvironmentChecker buildEnvironmentChecker = buildEnvironmentChecker();
        buildEnvironmentChecker.checkAndroidVersion();
        buildEnvironmentChecker.checkHasMandatoryPermission("android.permission.INTERNET");
        buildEnvironmentChecker.checkHasMandatoryPermission("android.permission.ACCESS_NETWORK_STATE");
        buildEnvironmentChecker.checkHasDependency(AdvertisingInfoLoader.AdvertisingIdClientClassName, "Google Play Services");
        buildEnvironmentChecker.checkGooglePlayVersion();
        if (buildEnvironmentChecker.hasError()) {
            CrtoLog.m35514e("Aborted because preconditions not met");
            return false;
        } else if (!customTabsHasPackage()) {
            CrtoLog.m35516d("Additional check completed");
            return false;
        } else {
            CrtoLog.m35516d("Preconditions verified");
            return true;
        }
    }

    @SuppressLint({"MissingPermission"})
    @TargetApi(16)
    public boolean isNetworkMetered() {
        return ((ConnectivityManager) this.context.getSystemService("connectivity")).isActiveNetworkMetered();
    }

    public void processUserConsent(boolean z) {
        if (z) {
            CrtoLog.m35512i("Consent provided");
        } else {
            CrtoLog.m35512i("Consent denied");
        }
        this.userConsent = z ? UserConsent.GRANTED : UserConsent.DENIED;
        initCollection();
    }
}
