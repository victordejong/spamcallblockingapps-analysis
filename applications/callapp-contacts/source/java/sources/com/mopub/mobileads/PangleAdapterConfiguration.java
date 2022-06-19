package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.MoPub;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PangleAdapterConfiguration.class */
public class PangleAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_NAME = "PangleAdapterConfiguration";
    private static final String ADAPTER_VERSION = "1.0";
    public static final String AD_PLACEMENT_ID_EXTRA_KEY = "ad_placement_id";
    public static final String ALLOW_AD_IN_LOCK_SCREEN_EXTRA_KEY = "allow_lock_screen";
    public static final String APP_ID_EXTRA_KEY = "app_id";
    public static final int CONTENT_TYPE_ERROR = 40000;
    private static final String MOPUB_NETWORK_NAME = "pangle";
    public static final int NO_AD = 20001;
    public static final int PLACEMENT_EMPTY_ERROR = 40004;
    public static final int PLACEMENT_ERROR = 40006;
    public static final int REQUEST_PARAMETER_ERROR = 40001;
    public static final String SUPPORT_MULTIPROCESS_EXTRA_KEY = "support_multiprocess";
    private static String mMediaExtra;
    private static int mMediaViewHeight;
    private static int mMediaViewWidth;
    private static int mRewardAmount;
    private static String mRewardName;
    private static String mUserID;
    private static boolean sIsAllowAdShowInLockScreen;
    private static boolean sIsSDKInitialized;
    private static boolean sIsSupportMultiProcess;
    private static final AtomicBoolean networkInitializationSucceeded = new AtomicBoolean(false);
    private static boolean cachedInitializationParametersSet = false;

    private static JSONArray getAdCallSource() {
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", "mediation");
            jSONObject.putOpt("value", MoPub.ANALYTICS_MOPUB_TAG);
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("name", "adapter_version");
            jSONObject2.putOpt("value", "1.2.0");
            jSONArray.put(jSONObject2);
        } catch (Throwable th) {
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = ADAPTER_NAME;
            MoPubLog.log(adapterLogEvent, str, "AdCallSource encounter parsing error: " + th.getLocalizedMessage());
        }
        return jSONArray;
    }

    public static String getMediaExtra() {
        return mMediaExtra;
    }

    public static int getMediaViewHeight() {
        return mMediaViewHeight;
    }

    public static int getMediaViewWidth() {
        return mMediaViewWidth;
    }

    public static TTAdManager getPangleSdkManager() {
        return TTAdSdk.getAdManager();
    }

    public static int getRewardAmount() {
        return mRewardAmount;
    }

    public static String getRewardName() {
        return mRewardName;
    }

    public static String getUserID() {
        return mUserID;
    }

    private static boolean hasWakeLockPermission(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null || strArr.length <= 0) {
                return false;
            }
            for (String str : strArr) {
                if ("android.permission.WAKE_LOCK".equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean isInitialized() {
        return networkInitializationSucceeded.get();
    }

    public static MoPubErrorCode mapErrorCode(int i) {
        switch (i) {
            case NO_AD /* 20001 */:
                return MoPubErrorCode.NETWORK_NO_FILL;
            case CONTENT_TYPE_ERROR /* 40000 */:
                return MoPubErrorCode.NO_CONNECTION;
            case 40001:
                return MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR;
            case 40004:
            case PLACEMENT_ERROR /* 40006 */:
                return MoPubErrorCode.MISSING_AD_UNIT_ID;
            default:
                return MoPubErrorCode.UNSPECIFIED;
        }
    }

    private static void pangleSdkInit(Context context, String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str) || context == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, ADAPTER_NAME, "Invalid Pangle app ID. Ensure the app id is valid on the MoPub dashboard.");
        } else if (sIsSDKInitialized) {
        } else {
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str2 = ADAPTER_NAME;
            MoPubLog.log(adapterLogEvent, str2, "Pangle SDK initializes with app ID: ".concat(String.valueOf(str)));
            boolean hasWakeLockPermission = hasWakeLockPermission(context);
            if (!hasWakeLockPermission) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, str2, "For video ads to work in Pangle Ad TextureView, declare the android.permission.WAKE_LOCK permission in your AndroidManifest.");
            }
            TTAdConfig.Builder allowShowPageWhenScreenLock = new TTAdConfig.Builder().appId(str).useTextureView(hasWakeLockPermission).appName(MOPUB_NETWORK_NAME).allowShowPageWhenScreenLock(sIsAllowAdShowInLockScreen);
            if (MoPubLog.getLogLevel() == MoPubLog.LogLevel.DEBUG) {
                z = true;
            }
            TTAdSdk.init(context, allowShowPageWhenScreenLock.debug(z).supportMultiProcess(sIsSupportMultiProcess).data(getAdCallSource().toString()).build());
            getPangleSdkManager().setGdpr(!MoPub.canCollectPersonalInformation() ? 1 : 0);
            sIsSDKInitialized = true;
        }
    }

    public static void setMediaExtra(String str) {
        mMediaExtra = str;
    }

    public static void setMediaViewHeight(int i) {
        mMediaViewHeight = i;
    }

    public static void setMediaViewWidth(int i) {
        mMediaViewWidth = i;
    }

    public static void setRewardAmount(int i) {
        mRewardAmount = i;
    }

    public static void setRewardName(String str) {
        mRewardName = str;
    }

    public static void setUserID(String str) {
        mUserID = str;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getAdapterVersion() {
        return "1.0";
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getBiddingToken(Context context) {
        if (getPangleSdkManager() != null) {
            return getPangleSdkManager().getBiddingToken();
        }
        return null;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getMoPubNetworkName() {
        return MOPUB_NETWORK_NAME;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getNetworkSdkVersion() {
        if (sIsSDKInitialized) {
            return TTAdSdk.getAdManager().getSDKVersion();
        }
        String adapterVersion = getAdapterVersion();
        return adapterVersion.substring(0, adapterVersion.lastIndexOf(46));
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        AtomicBoolean atomicBoolean = networkInitializationSucceeded;
        if (!atomicBoolean.get()) {
            synchronized (PangleAdapterConfiguration.class) {
                try {
                    try {
                        String m28703a = CallAppRemoteConfigManager.get().m28703a("pangle_app_id");
                        if (map != null && !map.isEmpty()) {
                            sIsSupportMultiProcess = map.get(SUPPORT_MULTIPROCESS_EXTRA_KEY) != null ? Boolean.valueOf(map.get(SUPPORT_MULTIPROCESS_EXTRA_KEY)).booleanValue() : false;
                            sIsAllowAdShowInLockScreen = map.get(ALLOW_AD_IN_LOCK_SCREEN_EXTRA_KEY) != null ? Boolean.valueOf(map.get(ALLOW_AD_IN_LOCK_SCREEN_EXTRA_KEY)).booleanValue() : false;
                        }
                        pangleSdkInit(context, m28703a);
                        atomicBoolean.set(true);
                    } catch (Exception e) {
                        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Initializing Pangle has encountered an exception.", e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (networkInitializationSucceeded.get()) {
                onNetworkInitializationFinishedListener.onNetworkInitializationFinished(PangleAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
            } else {
                onNetworkInitializationFinishedListener.onNetworkInitializationFinished(PangleAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            }
        }
    }

    @Override // com.mopub.common.BaseAdapterConfiguration, com.mopub.common.AdapterConfiguration
    public void setCachedInitializationParameters(Context context, Map<String, String> map) {
        if (!cachedInitializationParametersSet) {
            cachedInitializationParametersSet = true;
            super.setCachedInitializationParameters(context, map);
        }
    }
}
