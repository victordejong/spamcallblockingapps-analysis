package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbPackageNativeData.class */
class DtbPackageNativeData {

    /* renamed from: b */
    private static DtbPackageNativeData f11904b;

    /* renamed from: a */
    JSONObject f11905a = new JSONObject();

    private DtbPackageNativeData(Context context) {
        PackageInfo packageInfo;
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        String str = (String) packageManager.getApplicationLabel(context.getApplicationInfo());
        try {
            packageInfo = packageManager.getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            DtbLog.m38821c("Package " + packageName + " not found");
            packageInfo = null;
        }
        String str2 = packageInfo != null ? packageInfo.versionName : "";
        String num = packageInfo != null ? Integer.toString(packageInfo.versionCode) : "";
        try {
            this.f11905a.put("lbl", str);
            this.f11905a.put("pn", packageName);
            if (!num.equals("")) {
                this.f11905a.put("v", num);
            }
            if (str2.equals("")) {
                return;
            }
            this.f11905a.put("vn", str2);
        } catch (JSONException e2) {
            DtbLog.m38821c("JSON exception while buildinf package native data");
        }
    }

    /* renamed from: a */
    public static DtbPackageNativeData m38809a(Context context) {
        DtbPackageNativeData dtbPackageNativeData;
        synchronized (DtbPackageNativeData.class) {
            try {
                if (f11904b == null) {
                    f11904b = new DtbPackageNativeData(context);
                }
                dtbPackageNativeData = f11904b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dtbPackageNativeData;
    }
}
