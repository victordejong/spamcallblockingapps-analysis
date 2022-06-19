package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbPackageNativeData.class */
public class DtbPackageNativeData {
    private static DtbPackageNativeData packageNativeDataInstance;
    private String applicationLabel;
    private JSONObject json = new JSONObject();
    private String packageName;
    private String versionCode;
    private String versionName;

    private DtbPackageNativeData(Context context) {
        PackageInfo packageInfo;
        this.packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        this.applicationLabel = (String) packageManager.getApplicationLabel(context.getApplicationInfo());
        try {
            packageInfo = packageManager.getPackageInfo(this.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder m8728C = C22128a.m8728C("Package ");
            m8728C.append(this.packageName);
            m8728C.append(" not found");
            DtbLog.error(m8728C.toString());
            packageInfo = null;
        }
        this.versionName = packageInfo != null ? packageInfo.versionName : "";
        this.versionCode = packageInfo != null ? Integer.toString(packageInfo.versionCode) : "";
        try {
            this.json.put("lbl", this.applicationLabel);
            this.json.put("pn", this.packageName);
            if (!this.versionCode.equals("")) {
                this.json.put("v", this.versionCode);
            }
            if (this.versionName.equals("")) {
                return;
            }
            this.json.put("vn", this.versionName);
        } catch (JSONException e2) {
            DtbLog.error("JSON exception while buildinf package native data");
        }
    }

    public static DtbPackageNativeData getPackageNativeDataInstance(Context context) {
        DtbPackageNativeData dtbPackageNativeData;
        synchronized (DtbPackageNativeData.class) {
            try {
                if (packageNativeDataInstance == null) {
                    packageNativeDataInstance = new DtbPackageNativeData(context);
                }
                dtbPackageNativeData = packageNativeDataInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dtbPackageNativeData;
    }

    public JSONObject getParamsJson() {
        return this.json;
    }
}
