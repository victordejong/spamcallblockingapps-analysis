package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.CustomData;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/IntegrationConfigItem.class */
public class IntegrationConfigItem implements Serializable {
    private static final String KEY_TOKEN = "token";
    private static final long serialVersionUID = 3509802144209212980L;
    private HashMap<String, String> contents = new HashMap<>();

    public IntegrationConfigItem() {
    }

    public IntegrationConfigItem(JSONObject jSONObject) {
        setToken(jSONObject.optString(KEY_TOKEN, null));
    }

    public IntegrationConfigItem clone() {
        IntegrationConfigItem integrationConfigItem = new IntegrationConfigItem();
        integrationConfigItem.contents.putAll(this.contents);
        return integrationConfigItem;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || IntegrationConfigItem.class != obj.getClass()) {
            return false;
        }
        HashMap<String, String> hashMap = this.contents;
        HashMap<String, String> hashMap2 = ((IntegrationConfigItem) obj).contents;
        if (hashMap != null) {
            z = hashMap.equals(hashMap2);
        } else if (hashMap2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        HashMap<String, String> hashMap = this.contents;
        return hashMap != null ? hashMap.hashCode() : 0;
    }

    public void setToken(String str) {
        this.contents.put(KEY_TOKEN, str);
    }

    public CustomData toJson() {
        try {
            CustomData customData = new CustomData();
            for (String str : this.contents.keySet()) {
                customData.put(str, this.contents.get(str));
            }
            return customData;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
