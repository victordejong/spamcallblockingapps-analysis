package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ExtendedData.class */
public abstract class ExtendedData implements Serializable {
    private static final String KEY_VERSION = "version";
    private Type type = Type.unknown;
    private int version;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ExtendedData$Type.class */
    public enum Type {
        time,
        location,
        commerce,
        unknown;

        public static Type parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.PAYLOADS;
                ApptentiveLog.m403v(apptentiveLogTag, "Error parsing unknown ExtendedData.PayloadType: " + str, new Object[0]);
                return unknown;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExtendedData() {
        init();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExtendedData(String str) throws JSONException {
        setVersion(new JSONObject(str).optInt("version", -1));
        init();
    }

    public String getTypeName() {
        return this.type.name();
    }

    protected abstract void init();

    /* JADX INFO: Access modifiers changed from: protected */
    public void setType(Type type) {
        this.type = type;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setVersion(int i) {
        this.version = i;
    }

    public JSONObject toJsonObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", this.version);
        return jSONObject;
    }
}
