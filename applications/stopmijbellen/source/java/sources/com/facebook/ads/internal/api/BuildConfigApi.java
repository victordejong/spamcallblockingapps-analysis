package com.facebook.ads.internal.api;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import androidx.annotation.Keep;
import com.facebook.ads.BuildConfig;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/BuildConfigApi.class */
public class BuildConfigApi {
    public static final String UNITY_SHARED_PREFERENCES_SUFIX = ".v2.playerprefs";
    public static final String UNITY_TAG = "an_isUnitySDK";
    public static final String UNITY_VERSION_SUFIX = "-unity";

    public static String getVersionName(Context context) {
        return isUnity(context) ? C0082b.m8754h(new StringBuilder(), BuildConfig.VERSION_NAME, UNITY_VERSION_SUFIX) : BuildConfig.VERSION_NAME;
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
