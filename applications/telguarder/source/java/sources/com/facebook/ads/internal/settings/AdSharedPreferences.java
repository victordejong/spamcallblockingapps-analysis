package com.facebook.ads.internal.settings;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.ads.internal.util.process.ProcessUtils;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/settings/AdSharedPreferences.class */
public class AdSharedPreferences {
    public static final String PREFS_NAME = "FBAdPrefs";

    public static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(ProcessUtils.getProcessSpecificName(PREFS_NAME, context), 0);
    }
}
