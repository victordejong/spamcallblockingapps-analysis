package com.apptentive.android.sdk.migration.v4_0_0;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryEntry.class */
public class VersionHistoryEntry extends JSONObject {
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
        return optInt("versionCode");
    }

    public String getVersionName() {
        return optString("versionName", null);
    }

    public void setTimestamp(Double d) throws JSONException {
        put("timestamp", d);
    }

    public void setVersionCode(Integer num) throws JSONException {
        put("versionCode", num);
    }

    public void setVersionName(String str) throws JSONException {
        put("versionName", str);
    }
}
