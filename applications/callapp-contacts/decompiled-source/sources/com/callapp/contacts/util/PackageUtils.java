package com.callapp.contacts.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.callapp.common.model.json.JSONInstalledApp;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/PackageUtils.class */
public class PackageUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/PackageUtils$PackageInfo.class */
    public static class PackageInfo {

        /* renamed from: a  reason: collision with root package name */
        private String f15933a = "";

        /* renamed from: b  reason: collision with root package name */
        private String f15934b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f15935c = "";

        /* renamed from: d  reason: collision with root package name */
        private int f15936d = 0;
        private long e = 0;
        private long f = 0;

        public JSONInstalledApp getJsonObject() {
            JSONInstalledApp jSONInstalledApp = new JSONInstalledApp();
            jSONInstalledApp.setAppName(this.f15933a);
            jSONInstalledApp.setPackageName(this.f15934b);
            jSONInstalledApp.setVersionName(this.f15935c);
            jSONInstalledApp.setVersionCode(this.f15936d);
            jSONInstalledApp.setFirstInstallTime(this.e);
            jSONInstalledApp.setLastUpdateTime(this.f);
            return jSONInstalledApp;
        }

        public String toString() {
            return this.f15933a + ", " + this.f15934b + ", " + this.f15935c + ", " + this.f15936d + ", " + this.e + ", " + this.f;
        }
    }

    public static ArrayList<JSONInstalledApp> a(Context context) {
        ArrayList<JSONInstalledApp> arrayList = new ArrayList<>();
        PackageManager packageManager = context.getPackageManager();
        for (android.content.pm.PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
            if (packageInfo.versionName != null) {
                PackageInfo packageInfo2 = new PackageInfo();
                packageInfo2.f15933a = packageInfo.applicationInfo.loadLabel(packageManager).toString();
                packageInfo2.f15934b = packageInfo.packageName;
                packageInfo2.f15935c = packageInfo.versionName;
                packageInfo2.f15936d = packageInfo.versionCode;
                packageInfo2.e = packageInfo.firstInstallTime;
                packageInfo2.f = packageInfo.lastUpdateTime;
                arrayList.add(packageInfo2.getJsonObject());
            }
        }
        return arrayList;
    }

    public static boolean a(Context context, String str) {
        boolean z = true;
        try {
            context.getPackageManager().getPackageInfo(str, 1);
        } catch (Exception e) {
            z = false;
        }
        return z;
    }
}
