package com.apptentive.android.sdk.migration.v4_0_0;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/AppRelease.class */
public class AppRelease extends JSONObject {
    public AppRelease(String str) throws JSONException {
        super(str);
    }

    public String getAppStore() {
        if (!isNull("app_store")) {
            return optString("app_store", null);
        }
        return null;
    }

    public boolean getDebug() {
        return optBoolean("debug");
    }

    public String getIdentifier() {
        if (!isNull("identifier")) {
            return optString("identifier", null);
        }
        return null;
    }

    public boolean getInheritStyle() {
        return optBoolean("inheriting_styles");
    }

    public boolean getOverrideStyle() {
        return optBoolean("overriding_styles");
    }

    public String getTargetSdkVersion() {
        if (!isNull("target_sdk_version")) {
            return optString("target_sdk_version");
        }
        return null;
    }

    public String getType() {
        if (!isNull("type")) {
            return optString("type", null);
        }
        return null;
    }

    public int getVersionCode() {
        if (!isNull("version_code")) {
            return optInt("version_code", -1);
        }
        return -1;
    }

    public String getVersionName() {
        if (!isNull("version_name")) {
            return optString("version_name", null);
        }
        return null;
    }
}
