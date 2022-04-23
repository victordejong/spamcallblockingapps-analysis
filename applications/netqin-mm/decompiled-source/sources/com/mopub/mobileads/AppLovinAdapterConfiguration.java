package com.mopub.mobileads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.applovin.BuildConfig;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinAdapterConfiguration.class */
public class AppLovinAdapterConfiguration extends BaseAdapterConfiguration {

    /* renamed from: b */
    public static String f34016b;

    /* renamed from: c */
    public static AppLovinSdk f34017c;

    /* renamed from: a */
    public static void m4446a(String str) {
        f34016b = str;
    }

    /* renamed from: a */
    public static boolean m4447a(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                return !TextUtils.isEmpty(bundle.getString("applovin.sdk.key"));
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static MoPubErrorCode getMoPubErrorCode(int i) {
        return i != -103 ? i != -102 ? i != -7 ? i != 204 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.NETWORK_NO_FILL : MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR : MoPubErrorCode.NETWORK_TIMEOUT : MoPubErrorCode.NO_CONNECTION;
    }

    public static String getSdkKey() {
        return f34016b;
    }

    /* renamed from: a */
    public final AppLovinSdk m4445a(Map<String, String> map, Context context) {
        String str = (map == null || map.isEmpty()) ? null : map.get(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY);
        if (!TextUtils.isEmpty(str)) {
            m4446a(str);
            return AppLovinSdk.getInstance(str, new AppLovinSdkSettings(context), context);
        } else if (m4447a(context)) {
            return AppLovinSdk.getInstance(context);
        } else {
            return null;
        }
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getAdapterVersion() {
        return "9.12.2.0";
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getBiddingToken(Context context) {
        Preconditions.checkNotNull(context);
        AppLovinSdk appLovinSdk = f34017c;
        return appLovinSdk != null ? appLovinSdk.getAdService().getBidToken() : null;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getMoPubNetworkName() {
        return BuildConfig.NETWORK_NAME;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getNetworkSdkVersion() {
        return AppLovinSdk.VERSION;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        AppLovinSdk a = m4445a(map, context);
        f34017c = a;
        if (a != null) {
            a.setPluginVersion("MoPub-9.12.2.0");
            f34017c.setMediationProvider("mopub");
            f34017c.getSettings().setVerboseLogging(MoPubLog.getLogLevel() == MoPubLog.LogLevel.DEBUG);
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(AppLovinAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
            return;
        }
        onNetworkInitializationFinishedListener.onNetworkInitializationFinished(AppLovinAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }
}
