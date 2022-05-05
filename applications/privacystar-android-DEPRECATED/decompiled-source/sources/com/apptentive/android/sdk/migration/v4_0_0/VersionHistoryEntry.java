package com.apptentive.android.sdk.migration.v4_0_0;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry.class */
public class VersionHistoryEntry extends JSONObject {
    private static final String KEY_TIMESTAMP = "timestamp";
    private static final String KEY_VERSION_CODE = "versionCode";
    private static final String KEY_VERSION_NAME = "versionName";

    /* JADX INFO: Access modifiers changed from: package-private */
    public VersionHistoryEntry(Integer num, String str, Double d) throws JSONException {
        setVersionCode(num);
        setVersionName(str);
        setTimestamp(d);
    }

    private VersionHistoryEntry(String str) throws JSONException {
        super(str);
    }

    public VersionHistoryEntry(JSONObject jSONObject) throws JSONException {
        this(jSONObject.toString());
    }

    public Double getTimestamp() {
        return (Double) opt("timestamp");
    }

    public int getVersionCode() {
        return optInt(KEY_VERSION_CODE);
    }

    public String getVersionName() {
        return optString(KEY_VERSION_NAME, null);
    }

    public void setTimestamp(Double d) throws JSONException {
        put("timestamp", d);
    }

    public void setVersionCode(Integer num) throws JSONException {
        put(KEY_VERSION_CODE, num);
    }

    public void setVersionName(String str) throws JSONException {
        put(KEY_VERSION_NAME, str);
    }
}
