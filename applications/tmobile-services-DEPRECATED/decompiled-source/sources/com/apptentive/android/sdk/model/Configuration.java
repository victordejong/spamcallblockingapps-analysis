package com.apptentive.android.sdk.model;

import android.content.Context;
import android.content.SharedPreferences;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/Configuration.class */
public class Configuration extends JSONObject {
    private static Configuration cachedConfiguration;

    public Configuration() {
    }

    public Configuration(String str) throws JSONException {
        super(str);
    }

    private boolean getBoolean(String str, boolean z) {
        try {
            return optBoolean(str, z);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while getting boolean key '%s'", str);
            logException(e);
            return z;
        }
    }

    private JSONObject getMessageCenter() {
        try {
            if (!isNull("message_center")) {
                return getJSONObject("message_center");
            }
            return null;
        } catch (JSONException e) {
            logException(e);
            return null;
        }
    }

    public static Configuration load() {
        if (cachedConfiguration == null) {
            cachedConfiguration = load(ApptentiveInternal.getInstance().getGlobalSharedPrefs());
        }
        return cachedConfiguration;
    }

    public static Configuration load(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("appConfiguration.json", null);
        if (string != null) {
            try {
                return new Configuration(string);
            } catch (JSONException e) {
                ApptentiveLog.m15641e(e, "Error loading Configuration from SharedPreferences.", new Object[0]);
                logException(e);
            }
        }
        return new Configuration();
    }

    private static void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    public String getAppDisplayName() {
        try {
            if (!isNull("app_display_name")) {
                return getString("app_display_name");
            }
        } catch (JSONException e) {
            logException(e);
        }
        return ApptentiveInternal.getInstance().getDefaultAppDisplayName();
    }

    public long getConfigurationCacheExpirationMillis() {
        try {
            if (!isNull("configuration_cache_expiration_millis")) {
                return getLong("configuration_cache_expiration_millis");
            }
            return 0L;
        } catch (JSONException e) {
            logException(e);
            return 0L;
        }
    }

    public int getMessageCenterBgPoll() {
        try {
            JSONObject messageCenter = getMessageCenter();
            if (messageCenter == null || messageCenter.isNull("bg_poll")) {
                return 60;
            }
            return messageCenter.getInt("bg_poll");
        } catch (JSONException e) {
            logException(e);
            return 60;
        }
    }

    public int getMessageCenterFgPoll() {
        try {
            JSONObject messageCenter = getMessageCenter();
            if (messageCenter == null || messageCenter.isNull("fg_poll")) {
                return 15;
            }
            return messageCenter.getInt("fg_poll");
        } catch (JSONException e) {
            logException(e);
            return 15;
        }
    }

    public boolean hasConfigurationCacheExpired() {
        return getConfigurationCacheExpirationMillis() < System.currentTimeMillis();
    }

    public boolean isCollectingAdID() {
        return getBoolean("collect_ad_id", false);
    }

    public boolean isCollectingApptimizeData() {
        return optBoolean("apptimize_integration", false);
    }

    public boolean isHideBranding(Context context) {
        try {
            if (!isNull("hide_branding")) {
                return getBoolean("hide_branding");
            }
        } catch (JSONException e) {
            logException(e);
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("apptentive_initially_hide_branding", false);
        } catch (Exception e2) {
            ApptentiveLog.m15634w(ApptentiveLogTag.CONVERSATION, e2, "Unexpected error while reading %s manifest setting.", "apptentive_initially_hide_branding");
            logException(e2);
            return false;
        }
    }

    public boolean isMessageCenterNotificationPopupEnabled() {
        JSONObject optJSONObject;
        JSONObject messageCenter = getMessageCenter();
        if (messageCenter == null || messageCenter.isNull("notification_popup") || (optJSONObject = messageCenter.optJSONObject("notification_popup")) == null) {
            return false;
        }
        return optJSONObject.optBoolean("enabled", false);
    }

    public boolean isMetricsEnabled() {
        return getBoolean("metrics_enabled", true);
    }

    public void save() {
        ApptentiveInternal.getInstance().getGlobalSharedPrefs().edit().putString("appConfiguration.json", toString()).apply();
        cachedConfiguration = this;
    }

    public void setConfigurationCacheExpirationMillis(long j) {
        try {
            put("configuration_cache_expiration_millis", j);
        } catch (JSONException e) {
            ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Configuration.", "configuration_cache_expiration_millis");
            logException(e);
        }
    }
}
