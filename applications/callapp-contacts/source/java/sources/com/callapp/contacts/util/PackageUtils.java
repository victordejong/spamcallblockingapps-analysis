package com.callapp.contacts.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.callapp.common.model.json.JSONInstalledApp;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/PackageUtils.class */
public class PackageUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/PackageUtils$PackageInfo.class */
    public static class PackageInfo {

        /* renamed from: a */
        private String f27776a = "";

        /* renamed from: b */
        private String f27777b = "";

        /* renamed from: c */
        private String f27778c = "";

        /* renamed from: d */
        private int f27779d = 0;

        /* renamed from: e */
        private long f27780e = 0;

        /* renamed from: f */
        private long f27781f = 0;

        public JSONInstalledApp getJsonObject() {
            JSONInstalledApp jSONInstalledApp = new JSONInstalledApp();
            jSONInstalledApp.setAppName(this.f27776a);
            jSONInstalledApp.setPackageName(this.f27777b);
            jSONInstalledApp.setVersionName(this.f27778c);
            jSONInstalledApp.setVersionCode(this.f27779d);
            jSONInstalledApp.setFirstInstallTime(this.f27780e);
            jSONInstalledApp.setLastUpdateTime(this.f27781f);
            return jSONInstalledApp;
        }

        public String toString() {
            return this.f27776a + ", " + this.f27777b + ", " + this.f27778c + ", " + this.f27779d + ", " + this.f27780e + ", " + this.f27781f;
        }
    }

    /* renamed from: a */
    public static ArrayList<JSONInstalledApp> m27438a(Context context) {
        ArrayList<JSONInstalledApp> arrayList = new ArrayList<>();
        PackageManager packageManager = context.getPackageManager();
        for (android.content.pm.PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
            if (packageInfo.versionName != null) {
                PackageInfo packageInfo2 = new PackageInfo();
                packageInfo2.f27776a = packageInfo.applicationInfo.loadLabel(packageManager).toString();
                packageInfo2.f27777b = packageInfo.packageName;
                packageInfo2.f27778c = packageInfo.versionName;
                packageInfo2.f27779d = packageInfo.versionCode;
                packageInfo2.f27780e = packageInfo.firstInstallTime;
                packageInfo2.f27781f = packageInfo.lastUpdateTime;
                arrayList.add(packageInfo2.getJsonObject());
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static boolean m27437a(Context context, String str) {
        boolean z = true;
        try {
            context.getPackageManager().getPackageInfo(str, 1);
        } catch (Exception e) {
            z = false;
        }
        return z;
    }
}
