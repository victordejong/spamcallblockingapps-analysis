package com.firstorion.libcyd;

import android.content.Context;
import android.util.Log;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TokenHelper.class */
public final class TokenHelper {
    private static final String CYD_SHARED_PREFERENCES_OLD_VALUES = "cyd_storage_oldValues";
    static final String TOKEN_STORAGE_KEY = "tokenstorage";
    static final String TOKEN_STORAGE_KEY_KEY = "token";
    static final Object tokenLock = new Object();

    private TokenHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void attemptExistingTokenRefresh(Context context, String str) {
        String token = getToken(context);
        if (token != null) {
            RefreshTokenHandler.sendRefreshTokenBroadcast(context, token, str);
        } else {
            Log.w("libcyd.app", "Unable to refresh null token.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getOldValues(Context context) {
        return context.getSharedPreferences("cyd_storage", 0).getString(CYD_SHARED_PREFERENCES_OLD_VALUES, null);
    }

    private static String getToken(Context context) {
        if (context != null) {
            return context.getApplicationContext().getSharedPreferences(TOKEN_STORAGE_KEY, 0).getString("token", null);
        }
        throw new NullPointerException("context");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void handleRefreshedToken(Context context, String str, String str2) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("refreshedToken");
        } else {
            synchronized (tokenLock) {
                putToken(context, str);
            }
            RefreshTokenHandler.sendRefreshTokenBroadcast(context, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putOldValues(Context context, String str) {
        context.getSharedPreferences("cyd_storage", 0).edit().putString(CYD_SHARED_PREFERENCES_OLD_VALUES, str).apply();
    }

    private static void putToken(Context context, String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("token");
        } else {
            context.getApplicationContext().getSharedPreferences(TOKEN_STORAGE_KEY, 0).edit().putString("token", str).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void stageForRefresh(Context context) {
        try {
            String oldValues = getOldValues(context);
            if (oldValues != null) {
                JSONObject jSONObject = new JSONObject(oldValues);
                jSONObject.put("sdkVersion", "0");
                putOldValues(context, jSONObject.toString());
            }
        } catch (Throwable th) {
            Log.e("libcyd.app", "Caught unexpected exception staging token for refresh.", th);
        }
    }
}
