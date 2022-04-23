package com.apptentive.android.sdk.debug;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.util.Jwt;
import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/LogMonitorSessionIO.class */
class LogMonitorSessionIO {
    private static final String PREFS_KEY_EMAIL_RECIPIENTS = "com.apptentive.debug.EmailRecipients";
    private static final String PREFS_KEY_FILTER_PID = "com.apptentive.debug.FilterPID";
    private static final String PREFS_NAME = "com.apptentive.debug";

    LogMonitorSessionIO() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void deleteCurrentSession(Context context) {
        SharedPreferences.Editor edit = getPrefs(context).edit();
        edit.remove(PREFS_KEY_EMAIL_RECIPIENTS);
        edit.remove(PREFS_KEY_FILTER_PID);
        edit.apply();
    }

    private static SharedPreferences getPrefs(Context context) {
        return context.getSharedPreferences(PREFS_NAME, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static LogMonitorSession readCurrentSession(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        }
        SharedPreferences prefs = getPrefs(context);
        if (!prefs.contains(PREFS_KEY_EMAIL_RECIPIENTS)) {
            return null;
        }
        LogMonitorSession logMonitorSession = new LogMonitorSession();
        logMonitorSession.restored = true;
        String string = prefs.getString(PREFS_KEY_EMAIL_RECIPIENTS, null);
        if (!StringUtils.isNullOrEmpty(string)) {
            logMonitorSession.emailRecipients = string.split(",");
        }
        return logMonitorSession;
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
            ApptentiveLog.m408e(e, "Exception while parsing access token: '%s'", str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveCurrentSession(Context context, LogMonitorSession logMonitorSession) {
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        } else if (logMonitorSession == null) {
            throw new IllegalArgumentException("Session is null");
        } else {
            SharedPreferences.Editor edit = getPrefs(context).edit();
            edit.putString(PREFS_KEY_EMAIL_RECIPIENTS, StringUtils.join(logMonitorSession.emailRecipients));
            edit.apply();
        }
    }
}
