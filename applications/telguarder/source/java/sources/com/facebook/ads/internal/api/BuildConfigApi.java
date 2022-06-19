package com.facebook.ads.internal.api;

import android.content.Context;
import com.facebook.ads.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/BuildConfigApi.class */
public class BuildConfigApi {
    static final String UNITY_SHARED_PREFERENCES_SUFIX = ".v2.playerprefs";
    static final String UNITY_TAG = "an_isUnitySDK";
    static final String UNITY_VERSION_SUFIX = "-unity";

    public static String getVersionName(Context context) {
        if (isUnity(context)) {
            return BuildConfig.VERSION_NAME + UNITY_VERSION_SUFIX;
        }
        return BuildConfig.VERSION_NAME;
    }

    public static boolean isDebug() {
        return BuildConfig.DEBUG;
    }

    private static boolean isUnity(Context context) {
        boolean z = false;
        if (context.getSharedPreferences(context.getPackageName() + UNITY_SHARED_PREFERENCES_SUFIX, 0).contains(UNITY_TAG) || context.getSharedPreferences(context.getPackageName(), 0).contains(UNITY_TAG)) {
            z = true;
        }
        return z;
    }
}
