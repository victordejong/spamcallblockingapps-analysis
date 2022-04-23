package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.mixpanel.android.util.HttpService;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.util.OfflineMode;
import com.mixpanel.android.util.RemoteService;
import java.security.GeneralSecurityException;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MPConfig.class */
public class MPConfig {
    public static boolean DEBUG = false;
    private static final String LOGTAG = "MixpanelAPI.Conf";
    static final int MAX_NOTIFICATION_CACHE_COUNT = 2;
    static final String REFERRER_PREFS_NAME = "com.mixpanel.android.mpmetrics.ReferralInfo";
    public static final int UI_FEATURES_MIN_API = 16;
    public static final String VERSION = "5.2.2-SNAPSHOT";
    private static MPConfig sInstance;
    private static final Object sInstanceLock = new Object();
    private static String spPrefix = "";
    private final boolean mAutoShowMixpanelUpdates;
    private final int mBulkUploadLimit;
    private final int mDataExpiration;
    private final String mDecideEndpoint;
    private final boolean mDisableAppOpenEvent;
    private final boolean mDisableDecideChecker;
    private final boolean mDisableEmulatorBindingUI;
    private final boolean mDisableGestureBindingUI;
    private final boolean mDisableViewCrawler;
    private final String[] mDisableViewCrawlerForProjects;
    private final String mEditorUrl;
    private String mEventsEndpoint;
    private List<String> mEventsFallbackEndpoints;
    private final int mFlushInterval;
    private final boolean mIgnoreInvisibleViewsEditor;
    private final int mImageCacheMaxMemoryFactor;
    private final int mMinSessionDuration;
    private final int mMinimumDatabaseLimit;
    private final String mNotificationChannelId;
    private final int mNotificationChannelImportance;
    private final String mNotificationChannelName;
    private final int mNotificationDefaults;
    private OfflineMode mOfflineMode;
    private final String mPeopleEndpoint;
    private RemoteService mRemoteService;
    private final String mResourcePackageName;
    private SSLSocketFactory mSSLSocketFactory;
    private final int mSessionTimeoutDuration;
    private final boolean mTestMode;

    MPConfig(Bundle bundle, Context context) {
        SSLSocketFactory sSLSocketFactory = null;
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            instance.init(null, null, null);
            sSLSocketFactory = instance.getSocketFactory();
        } catch (GeneralSecurityException e) {
            MPLog.m308i(LOGTAG, "System has no SSL support. Built-in events editor will not be available", e);
        }
        this.mSSLSocketFactory = sSLSocketFactory;
        setRemoteService(new HttpService());
        DEBUG = bundle.getBoolean("com.mixpanel.android.MPConfig.EnableDebugLogging", false);
        if (DEBUG) {
            MPLog.setLevel(2);
        }
        if (bundle.containsKey("com.mixpanel.android.MPConfig.DebugFlushInterval")) {
            MPLog.m305w(LOGTAG, "We do not support com.mixpanel.android.MPConfig.DebugFlushInterval anymore. There will only be one flush interval. Please, update your AndroidManifest.xml.");
        }
        this.mBulkUploadLimit = bundle.getInt("com.mixpanel.android.MPConfig.BulkUploadLimit", 40);
        this.mFlushInterval = bundle.getInt("com.mixpanel.android.MPConfig.FlushInterval", 60000);
        this.mDataExpiration = bundle.getInt("com.mixpanel.android.MPConfig.DataExpiration", 432000000);
        this.mMinimumDatabaseLimit = bundle.getInt("com.mixpanel.android.MPConfig.MinimumDatabaseLimit", 20971520);
        this.mResourcePackageName = bundle.getString("com.mixpanel.android.MPConfig.ResourcePackageName");
        this.mDisableGestureBindingUI = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableGestureBindingUI", true);
        this.mDisableEmulatorBindingUI = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableEmulatorBindingUI", true);
        this.mDisableAppOpenEvent = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableAppOpenEvent", true);
        this.mDisableViewCrawler = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableViewCrawler", true);
        this.mDisableDecideChecker = bundle.getBoolean("com.mixpanel.android.MPConfig.DisableDecideChecker", true);
        this.mImageCacheMaxMemoryFactor = bundle.getInt("com.mixpanel.android.MPConfig.ImageCacheMaxMemoryFactor", 10);
        this.mIgnoreInvisibleViewsEditor = bundle.getBoolean("com.mixpanel.android.MPConfig.IgnoreInvisibleViewsVisualEditor", false);
        this.mAutoShowMixpanelUpdates = bundle.getBoolean("com.mixpanel.android.MPConfig.AutoShowMixpanelUpdates", true);
        this.mNotificationDefaults = bundle.getInt("com.mixpanel.android.MPConfig.NotificationDefaults", 0);
        this.mMinSessionDuration = bundle.getInt("com.mixpanel.android.MPConfig.MinimumSessionDuration", 10000);
        this.mSessionTimeoutDuration = bundle.getInt("com.mixpanel.android.MPConfig.SessionTimeoutDuration", Integer.MAX_VALUE);
        this.mTestMode = bundle.getBoolean("com.mixpanel.android.MPConfig.TestMode", false);
        this.mNotificationChannelImportance = bundle.getInt("com.mixpanel.android.MPConfig.NotificationChannelImportance", 3);
        boolean z = bundle.getBoolean("com.mixpanel.android.MPConfig.UseIpAddressForGeolocation", true);
        String string = bundle.getString("com.mixpanel.android.MPConfig.NotificationChannelId");
        this.mNotificationChannelId = string == null ? "mp" : string;
        String string2 = bundle.getString("com.mixpanel.android.MPConfig.NotificationChannelName");
        this.mNotificationChannelName = string2 == null ? SystemInformation.getInstance(context).getAppName() : string2;
        String string3 = bundle.getString("com.mixpanel.android.MPConfig.EventsEndpoint");
        String str = string3;
        if (string3 == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("https://api.mixpanel.com/track?ip=");
            sb.append(z ? "1" : "0");
            str = sb.toString();
        }
        this.mEventsEndpoint = str;
        String string4 = bundle.getString("com.mixpanel.android.MPConfig.PeopleEndpoint");
        this.mPeopleEndpoint = string4 == null ? "https://api.mixpanel.com/engage" : string4;
        String string5 = bundle.getString("com.mixpanel.android.MPConfig.DecideEndpoint");
        this.mDecideEndpoint = string5 == null ? "https://decide.mixpanel.com/decide" : string5;
        String string6 = bundle.getString("com.mixpanel.android.MPConfig.EditorUrl");
        this.mEditorUrl = string6 == null ? "wss://switchboard.mixpanel.com/connect/" : string6;
        int i = bundle.getInt("com.mixpanel.android.MPConfig.DisableViewCrawlerForProjects", -1);
        if (i != -1) {
            this.mDisableViewCrawlerForProjects = context.getResources().getStringArray(i);
        } else {
            this.mDisableViewCrawlerForProjects = new String[0];
        }
        MPLog.m307v(LOGTAG, "Mixpanel (5.2.2-SNAPSHOT) configured with:\n    AutoShowMixpanelUpdates " + getAutoShowMixpanelUpdates() + "\n    BulkUploadLimit " + getBulkUploadLimit() + "\n    FlushInterval " + getFlushInterval() + "\n    DataExpiration " + getDataExpiration() + "\n    MinimumDatabaseLimit " + getMinimumDatabaseLimit() + "\n    DisableAppOpenEvent " + getDisableAppOpenEvent() + "\n    DisableViewCrawler " + getDisableViewCrawler() + "\n    DisableGestureBindingUI " + getDisableGestureBindingUI() + "\n    DisableEmulatorBindingUI " + getDisableEmulatorBindingUI() + "\n    EnableDebugLogging " + DEBUG + "\n    TestMode " + getTestMode() + "\n    EventsEndpoint " + getEventsEndpoint() + "\n    PeopleEndpoint " + getPeopleEndpoint() + "\n    DecideEndpoint " + getDecideEndpoint() + "\n    EditorUrl " + getEditorUrl() + "\n    ImageCacheMaxMemoryFactor " + getImageCacheMaxMemoryFactor() + "\n    DisableDecideChecker " + getDisableDecideChecker() + "\n    IgnoreInvisibleViewsEditor " + getIgnoreInvisibleViewsEditor() + "\n    NotificationDefaults " + getNotificationDefaults() + "\n    MinimumSessionDuration: " + getMinimumSessionDuration() + "\n    SessionTimeoutDuration: " + getSessionTimeoutDuration() + "\n    NotificationChannelId: " + getNotificationChannelId() + "\n    NotificationChannelName: " + getNotificationChannelName() + "\n    NotificationChannelImportance: " + getNotificationChannelImportance());
    }

    public static MPConfig getInstance(Context context) {
        synchronized (sInstanceLock) {
            if (sInstance == null) {
                sInstance = readConfig(context.getApplicationContext());
            }
        }
        return sInstance;
    }

    public static String getSpPrefix() {
        return spPrefix;
    }

    static MPConfig readConfig(Context context) {
        String packageName = context.getPackageName();
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(packageName, 128).metaData;
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            return new MPConfig(bundle2, context);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Can't configure Mixpanel with package name " + packageName, e);
        }
    }

    public static void setDebuggable(boolean z) {
        synchronized (MPConfig.class) {
            try {
                DEBUG = z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setSpPrefix(String str) {
        spPrefix = str;
    }

    public boolean getAutoShowMixpanelUpdates() {
        return this.mAutoShowMixpanelUpdates;
    }

    public int getBulkUploadLimit() {
        return this.mBulkUploadLimit;
    }

    public int getDataExpiration() {
        return this.mDataExpiration;
    }

    public String getDecideEndpoint() {
        return this.mDecideEndpoint;
    }

    public boolean getDisableAppOpenEvent() {
        return this.mDisableAppOpenEvent;
    }

    public boolean getDisableDecideChecker() {
        return this.mDisableDecideChecker;
    }

    public boolean getDisableEmulatorBindingUI() {
        return this.mDisableEmulatorBindingUI;
    }

    public boolean getDisableGestureBindingUI() {
        return this.mDisableGestureBindingUI;
    }

    public boolean getDisableViewCrawler() {
        return this.mDisableViewCrawler;
    }

    public String[] getDisableViewCrawlerForProjects() {
        return this.mDisableViewCrawlerForProjects;
    }

    public String getEditorUrl() {
        return this.mEditorUrl;
    }

    @Nullable
    public String getEventsEndpoint() {
        return this.mEventsEndpoint;
    }

    @Nullable
    public List<String> getEventsFallbackEndpoints() {
        return this.mEventsFallbackEndpoints;
    }

    public int getFlushInterval() {
        return this.mFlushInterval;
    }

    public boolean getIgnoreInvisibleViewsEditor() {
        return this.mIgnoreInvisibleViewsEditor;
    }

    public int getImageCacheMaxMemoryFactor() {
        return this.mImageCacheMaxMemoryFactor;
    }

    public int getMinimumDatabaseLimit() {
        return this.mMinimumDatabaseLimit;
    }

    public int getMinimumSessionDuration() {
        return this.mMinSessionDuration;
    }

    public String getNotificationChannelId() {
        return this.mNotificationChannelId;
    }

    public int getNotificationChannelImportance() {
        return this.mNotificationChannelImportance;
    }

    public String getNotificationChannelName() {
        return this.mNotificationChannelName;
    }

    public int getNotificationDefaults() {
        return this.mNotificationDefaults;
    }

    public OfflineMode getOfflineMode() {
        OfflineMode offlineMode;
        synchronized (this) {
            offlineMode = this.mOfflineMode;
        }
        return offlineMode;
    }

    public String getPeopleEndpoint() {
        return this.mPeopleEndpoint;
    }

    public RemoteService getRemoteService() {
        RemoteService remoteService;
        synchronized (this) {
            remoteService = this.mRemoteService;
        }
        return remoteService;
    }

    public String getResourcePackageName() {
        return this.mResourcePackageName;
    }

    public SSLSocketFactory getSSLSocketFactory() {
        SSLSocketFactory sSLSocketFactory;
        synchronized (this) {
            sSLSocketFactory = this.mSSLSocketFactory;
        }
        return sSLSocketFactory;
    }

    public int getSessionTimeoutDuration() {
        return this.mSessionTimeoutDuration;
    }

    public boolean getTestMode() {
        return this.mTestMode;
    }

    public void setEventsEndpoint(String str) {
        synchronized (this) {
            this.mEventsEndpoint = str;
        }
    }

    public void setEventsFallbackEndpoints(List<String> list) {
        synchronized (this) {
            this.mEventsFallbackEndpoints = list;
        }
    }

    public void setOfflineMode(OfflineMode offlineMode) {
        synchronized (this) {
            this.mOfflineMode = offlineMode;
        }
    }

    public void setRemoteService(RemoteService remoteService) {
        synchronized (this) {
            this.mRemoteService = remoteService;
            if (this.mRemoteService != null) {
                this.mRemoteService.checkIsMixpanelBlocked();
            }
        }
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        synchronized (this) {
            this.mSSLSocketFactory = sSLSocketFactory;
        }
    }
}
