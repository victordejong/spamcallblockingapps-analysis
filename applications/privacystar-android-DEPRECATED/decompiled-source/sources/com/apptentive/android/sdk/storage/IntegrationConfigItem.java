package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.model.CustomData;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/IntegrationConfigItem.class */
public class IntegrationConfigItem implements Serializable {
    private static final String KEY_TOKEN = "token";
    private static final long serialVersionUID = 1;
    private HashMap<String, String> contents = new HashMap<>();

    public IntegrationConfigItem() {
    }

    public IntegrationConfigItem(JSONObject jSONObject) {
        setToken(jSONObject.optString("token", null));
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IntegrationConfigItem integrationConfigItem = (IntegrationConfigItem) obj;
        if (this.contents != null) {
            z = this.contents.equals(integrationConfigItem.contents);
        } else if (integrationConfigItem.contents != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.contents != null ? this.contents.hashCode() : 0;
    }

    public void setToken(String str) {
        this.contents.put("token", str);
    }

    public CustomData toJson() {
        try {
            CustomData customData = new CustomData();
            for (String str : this.contents.keySet()) {
                customData.put(str, this.contents.get(str));
            }
            return customData;
        } catch (JSONException e) {
            return null;
        }
    }
}
