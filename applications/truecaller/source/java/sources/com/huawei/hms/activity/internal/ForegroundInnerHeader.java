package com.huawei.hms.activity.internal;

import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/activity/internal/ForegroundInnerHeader.class */
public class ForegroundInnerHeader {
    private static final String TAG = "ForegroundInnerHeader";
    private String action;
    private int apkVersion;
    private String responseCallbackKey;

    public void fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.apkVersion = JsonUtil.getIntValue(jSONObject, "apkVersion");
            this.action = JsonUtil.getStringValue(jSONObject, "action");
            this.responseCallbackKey = JsonUtil.getStringValue(jSONObject, "responseCallbackKey");
        } catch (JSONException e) {
            StringBuilder m8728C = C22128a.m8728C("fromJson failed: ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e(TAG, m8728C.toString());
        }
    }

    public String getAction() {
        return this.action;
    }

    public int getApkVersion() {
        return this.apkVersion;
    }

    public String getResponseCallbackKey() {
        return this.responseCallbackKey;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setApkVersion(int i) {
        this.apkVersion = i;
    }

    public void setResponseCallbackKey(String str) {
        this.responseCallbackKey = str;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("apkVersion", this.apkVersion);
            jSONObject.put("action", this.action);
            jSONObject.put("responseCallbackKey", this.responseCallbackKey);
        } catch (JSONException e) {
            StringBuilder m8728C = C22128a.m8728C("ForegroundInnerHeader toJson failed: ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e(TAG, m8728C.toString());
        }
        return jSONObject.toString();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("apkVersion:");
        m8728C.append(this.apkVersion);
        m8728C.append(", action:");
        m8728C.append(this.action);
        m8728C.append(", responseCallbackKey:");
        m8728C.append(this.responseCallbackKey);
        return m8728C.toString();
    }
}
