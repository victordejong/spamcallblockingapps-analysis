package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbPackageNativeData.class */
class DtbPackageNativeData {

    /* renamed from: b  reason: collision with root package name */
    private static DtbPackageNativeData f6503b;

    /* renamed from: a  reason: collision with root package name */
    JSONObject f6504a = new JSONObject();

    private DtbPackageNativeData(Context context) {
        PackageInfo packageInfo;
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        String str = (String) packageManager.getApplicationLabel(context.getApplicationInfo());
        try {
            packageInfo = packageManager.getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            DtbLog.c("Package " + packageName + " not found");
            packageInfo = null;
        }
        String str2 = packageInfo != null ? packageInfo.versionName : "";
        String num = packageInfo != null ? Integer.toString(packageInfo.versionCode) : "";
        try {
            this.f6504a.put("lbl", str);
            this.f6504a.put("pn", packageName);
            if (!num.equals("")) {
                this.f6504a.put("v", num);
            }
            if (!str2.equals("")) {
                this.f6504a.put("vn", str2);
            }
        } catch (JSONException e2) {
            DtbLog.c("JSON exception while buildinf package native data");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static DtbPackageNativeData a(Context context) {
        DtbPackageNativeData dtbPackageNativeData;
        synchronized (DtbPackageNativeData.class) {
            try {
                if (f6503b == null) {
                    f6503b = new DtbPackageNativeData(context);
                }
                dtbPackageNativeData = f6503b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dtbPackageNativeData;
    }
}
