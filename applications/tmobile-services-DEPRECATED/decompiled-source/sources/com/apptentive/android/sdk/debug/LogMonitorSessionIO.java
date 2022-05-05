package com.apptentive.android.sdk.debug;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.util.Jwt;
import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/LogMonitorSessionIO.class */
class LogMonitorSessionIO {
    LogMonitorSessionIO() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void deleteCurrentSession(Context context) {
        SharedPreferences.Editor edit = getPrefs(context).edit();
        edit.remove("com.apptentive.debug.EmailRecipients");
        edit.remove("com.apptentive.debug.FilterPID");
        edit.apply();
    }

    private static SharedPreferences getPrefs(Context context) {
        return context.getSharedPreferences("com.apptentive.debug", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static LogMonitorSession readCurrentSession(Context context) {
        if (context != null) {
            SharedPreferences prefs = getPrefs(context);
            if (!prefs.contains("com.apptentive.debug.EmailRecipients")) {
                return null;
            }
            LogMonitorSession logMonitorSession = new LogMonitorSession();
            logMonitorSession.restored = true;
            String string = prefs.getString("com.apptentive.debug.EmailRecipients", null);
            if (!StringUtils.isNullOrEmpty(string)) {
                logMonitorSession.emailRecipients = string.split(",");
            }
            return logMonitorSession;
        }
        throw new IllegalArgumentException("Context is null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static LogMonitorSession readSessionFromJWT(String str) {
        try {
            JSONObject payload = Jwt.decode(str).getPayload();
            LogMonitorSession logMonitorSession = new LogMonitorSession();
            JSONArray optJSONArray = payload.optJSONArray("recipients");
            if (optJSONArray != null) {
                String[] strArr = new String[optJSONArray.length()];
                for (int i = 0; i < optJSONArray.length(); i++) {
                    strArr[i] = optJSONArray.optString(i);
                }
                logMonitorSession.emailRecipients = strArr;
            }
            return logMonitorSession;
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while parsing access token: '%s'", str);
            ErrorMetrics.logException(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveCurrentSession(Context context, LogMonitorSession logMonitorSession) {
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        } else if (logMonitorSession != null) {
            SharedPreferences.Editor edit = getPrefs(context).edit();
            edit.putString("com.apptentive.debug.EmailRecipients", StringUtils.join(logMonitorSession.emailRecipients));
            edit.apply();
        } else {
            throw new IllegalArgumentException("Session is null");
        }
    }
}
