package com.applovin.mediation;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.mediation.AppLovinExtras;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MediationUtils;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinUtils.class */
public class AppLovinUtils {
    private static final String DEFAULT_ZONE = "";

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinUtils$ServerParameterKeys.class */
    public static class ServerParameterKeys {
        public static final String SDK_KEY = "sdkKey";
        public static final String ZONE_ID = "zone_id";

        private ServerParameterKeys() {
        }
    }

    public static AppLovinAdSize appLovinAdSizeFromAdMobAdSize(Context context, AdSize adSize) {
        ArrayList arrayList = new ArrayList();
        AdSize adSize2 = AdSize.BANNER;
        arrayList.add(adSize2);
        AdSize adSize3 = AdSize.LEADERBOARD;
        arrayList.add(adSize3);
        AdSize findClosestSize = MediationUtils.findClosestSize(context, adSize, arrayList);
        if (adSize2.equals(findClosestSize)) {
            return AppLovinAdSize.BANNER;
        }
        if (!adSize3.equals(findClosestSize)) {
            return null;
        }
        return AppLovinAdSize.LEADER;
    }

    public static AdError getAdError(int i) {
        String m8886k = C0033h.m8886k("AppLovin error code ", i);
        if (i == -8) {
            m8886k = "INVALID_AD_TOKEN";
        } else if (i == -7) {
            m8886k = "INVALID_ZONE";
        } else if (i != -6) {
            switch (i) {
                case -1009:
                    m8886k = "NO_NETWORK";
                    break;
                case -1001:
                    m8886k = "FETCH_AD_TIMEOUT";
                    break;
                case AppLovinErrorCodes.INVALID_URL /* -900 */:
                    m8886k = "INVALID_URL";
                    break;
                case AppLovinErrorCodes.INVALID_RESPONSE /* -800 */:
                    m8886k = "INVALID_RESPONSE";
                    break;
                case AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO /* -600 */:
                    m8886k = "INCENTIVIZED_USER_CLOSED_VIDEO";
                    break;
                case AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT /* -500 */:
                    m8886k = "INCENTIVIZED_SERVER_TIMEOUT";
                    break;
                case AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR /* -400 */:
                    m8886k = "INCENTIVIZED_UNKNOWN_SERVER_ERROR";
                    break;
                case AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED /* -300 */:
                    m8886k = "INCENTIVIZED_NO_AD_PRELOADED";
                    break;
                case AppLovinErrorCodes.SDK_DISABLED /* -22 */:
                    m8886k = "SDK_DISABLED";
                    break;
                case -1:
                    m8886k = "UNSPECIFIED_ERROR";
                    break;
                case 204:
                    m8886k = "NO_FILL";
                    break;
                default:
                    switch (i) {
                        case AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES /* -202 */:
                            m8886k = "UNABLE_TO_PRECACHE_VIDEO_RESOURCES";
                            break;
                        case AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES /* -201 */:
                            m8886k = "UNABLE_TO_PRECACHE_IMAGE_RESOURCES";
                            break;
                        case AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES /* -200 */:
                            m8886k = "UNABLE_TO_PRECACHE_RESOURCES";
                            break;
                    }
            }
        } else {
            m8886k = "UNABLE_TO_RENDER_AD";
        }
        return new AdError(i, C1676a.m4789h("AppLovin SDK returned a load failure callback with reason: ", m8886k), AppLovinMediationAdapter.ERROR_DOMAIN);
    }

    private static Bundle retrieveMetadata(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static AppLovinSdk retrieveSdk(Bundle bundle, Context context) {
        String string = bundle != null ? bundle.getString(ServerParameterKeys.SDK_KEY) : null;
        AppLovinSdkSettings sdkSettings = AppLovinMediationAdapter.getSdkSettings(context);
        AppLovinSdk appLovinSdk = !TextUtils.isEmpty(string) ? AppLovinSdk.getInstance(string, sdkSettings, context) : AppLovinSdk.getInstance(sdkSettings, context);
        appLovinSdk.setPluginVersion(BuildConfig.ADAPTER_VERSION);
        appLovinSdk.setMediationProvider(AppLovinMediationProvider.ADMOB);
        return appLovinSdk;
    }

    public static String retrieveSdkKey(Context context, Bundle bundle) {
        String string = bundle != null ? bundle.getString(ServerParameterKeys.SDK_KEY) : null;
        String str = string;
        if (TextUtils.isEmpty(string)) {
            Bundle retrieveMetadata = retrieveMetadata(context);
            str = string;
            if (retrieveMetadata != null) {
                str = retrieveMetadata.getString("applovin.sdk.key");
            }
        }
        return str;
    }

    public static String retrieveZoneId(Bundle bundle) {
        return bundle.containsKey(ServerParameterKeys.ZONE_ID) ? bundle.getString(ServerParameterKeys.ZONE_ID) : "";
    }

    public static boolean shouldMuteAudio(Bundle bundle) {
        return bundle != null && bundle.getBoolean(AppLovinExtras.Keys.MUTE_AUDIO);
    }
}
