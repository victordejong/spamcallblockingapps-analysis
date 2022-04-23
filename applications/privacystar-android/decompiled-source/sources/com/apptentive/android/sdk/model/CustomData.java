package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/CustomData.class */
public class CustomData extends JSONObject {
    public CustomData() throws JSONException {
    }

    public CustomData(String str) throws JSONException {
        super(str);
    }

    public CustomData(JSONObject jSONObject) throws JSONException {
        super(jSONObject.toString());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CustomData)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        JSONObject jSONObject = (JSONObject) obj;
        if (length() != jSONObject.length()) {
            return false;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        try {
            Iterator<String> keys = keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, getString(next));
            }
            Iterator<String> keys2 = jSONObject.keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                hashMap2.put(next2, jSONObject.getString(next2));
            }
        } catch (JSONException e) {
            ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Error comparing two device data entries: \"%s\"  AND  \"%s\"", toString(), jSONObject.toString());
        }
        return hashMap.equals(hashMap2);
    }
}
