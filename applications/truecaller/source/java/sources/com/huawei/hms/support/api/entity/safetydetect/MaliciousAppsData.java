package com.huawei.hms.support.api.entity.safetydetect;

import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/safetydetect/MaliciousAppsData.class */
public class MaliciousAppsData {
    private int apkCategory;
    private String apkPackageName;
    private String apkSha256;

    public MaliciousAppsData(String str) {
        JSONObject jSONObject = new JSONObject(str);
        this.apkPackageName = jSONObject.optString("apkPackageName");
        this.apkCategory = jSONObject.optInt("apkCategory");
        this.apkSha256 = jSONObject.optString("apkSha256");
    }

    public int getApkCategory() {
        return this.apkCategory;
    }

    public String getApkPackageName() {
        return this.apkPackageName;
    }

    public String getApkSha256() {
        return this.apkSha256;
    }

    public void setApkCategory(int i) {
        this.apkCategory = i;
    }

    public void setApkPackageName(String str) {
        this.apkPackageName = str;
    }

    public void setApkSha256(String str) {
        this.apkSha256 = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MaliciousAppsData{apkPackageName='");
        C22128a.m8678P0(m8728C, this.apkPackageName, '\'', ", apkCategory=");
        m8728C.append(this.apkCategory);
        m8728C.append(", apkSha256='");
        return C22128a.m8626f(m8728C, this.apkSha256, '\'', '}');
    }
}
