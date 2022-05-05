package com.asus.updatesdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.Log;
import com.asus.updatesdk.activity.ZenFamilyActivity;
import com.asus.updatesdk.analytic.TrackerManager;
import com.asus.updatesdk.cdn.CdnUtils;
import com.asus.updatesdk.utility.DeviceUtils;
import com.asus.updatesdk.utility.GeneralUtils;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/ZenUiFamily.class */
public class ZenUiFamily {
    public static final long INVALID_VERSION = -1;
    public static final long STAGE_ROLLOUT_VERSION = -2;

    /* renamed from: a  reason: collision with root package name */
    private static String f3120a = "entry normal";

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/ZenUiFamily$AppStatus.class */
    public enum AppStatus {
        IMPORTANT(0),
        NOT_INSTALLED(1),
        NEED_UPDATE(2),
        UP_TO_DATE(3),
        NOT_SUPPORTED(4);
        

        /* renamed from: a  reason: collision with root package name */
        int f3122a;

        AppStatus(int i) {
            this.f3122a = i;
        }

        public static AppStatus getFromIndex(int i) {
            AppStatus appStatus;
            switch (i) {
                case 0:
                    appStatus = IMPORTANT;
                    break;
                case 1:
                    appStatus = NOT_INSTALLED;
                    break;
                case 2:
                    appStatus = NEED_UPDATE;
                    break;
                case 3:
                    appStatus = UP_TO_DATE;
                    break;
                default:
                    appStatus = NOT_SUPPORTED;
                    break;
            }
            return appStatus;
        }

        public final int getIndex() {
            return this.f3122a;
        }

        public final String getName() {
            String str;
            switch (this.f3122a) {
                case 0:
                    str = "IMPORTANT";
                    break;
                case 1:
                    str = "NOT_INSTALLED";
                    break;
                case 2:
                    str = "NEED_UPDATE";
                    break;
                case 3:
                    str = "UP_TO_DATE";
                    break;
                default:
                    str = "NOT_SUPPORTED";
                    break;
            }
            return str;
        }
    }

    private static String a(Context context, String str) {
        String str2;
        try {
            String[] split = context.getPackageManager().getPackageInfo(str, 0).versionName.split(" |_|\\.");
            int length = split.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    str2 = "0";
                    break;
                }
                str2 = split[i];
                if (str2.length() == 6) {
                    break;
                }
                i++;
            }
        } catch (PackageManager.NameNotFoundException e) {
            str2 = "0";
        }
        return str2;
    }

    private static boolean a(Context context, JSONObject jSONObject) {
        String[] split;
        boolean z;
        boolean z2 = false;
        try {
            if (a(jSONObject)) {
                String optString = jSONObject.optString("platforms");
                if (BuildConfig.FLAVOR.equals(optString)) {
                    z = true;
                } else {
                    String lowerCase = DeviceUtils.SYSPROP_CPU_ABILIST.toLowerCase();
                    String lowerCase2 = DeviceUtils.SYSPROP_CPU_ABI.toLowerCase();
                    String lowerCase3 = DeviceUtils.SYSPROP_CPU_ABI2.toLowerCase();
                    for (String str : optString.toLowerCase().split("[ ,]")) {
                        if (lowerCase.contains(str) || lowerCase2.startsWith(str) || lowerCase3.startsWith(str)) {
                            z = true;
                            break;
                        }
                    }
                    z = false;
                }
                if (z) {
                    String[] split2 = jSONObject.getString("features").split(",");
                    PackageManager packageManager = context.getPackageManager();
                    int length = split2.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z2 = true;
                            break;
                        }
                        z2 = false;
                        if (!packageManager.hasSystemFeature(split2[i].toLowerCase())) {
                            break;
                        }
                        i++;
                    }
                } else {
                    z2 = false;
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
            z2 = false;
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r0 <= java.lang.Integer.valueOf(r0).intValue()) goto L_0x0035;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(org.json.JSONObject r4) {
        /*
            r0 = 0
            r5 = r0
            int r0 = com.asus.updatesdk.utility.GeneralUtils.getDeviceApiLevel()     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            r6 = r0
            r0 = r4
            java.lang.String r1 = "max_level"
            java.lang.String r0 = r0.optString(r1)     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            r7 = r0
            r0 = r6
            r1 = r4
            java.lang.String r2 = "api_level"
            java.lang.String r1 = r1.getString(r2)     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            int r1 = r1.intValue()     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            if (r0 >= r1) goto L_0x001f
        L_0x001d:
            r0 = r5
            return r0
        L_0x001f:
            r0 = r7
            boolean r0 = r0.isEmpty()     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            if (r0 != 0) goto L_0x0035
            r0 = r7
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            int r0 = r0.intValue()     // Catch: JSONException -> 0x003a, NumberFormatException -> 0x003e
            r8 = r0
            r0 = r6
            r1 = r8
            if (r0 > r1) goto L_0x001d
        L_0x0035:
            r0 = 1
            r5 = r0
            goto L_0x001d
        L_0x003a:
            r4 = move-exception
            goto L_0x001d
        L_0x003e:
            r4 = move-exception
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.ZenUiFamily.a(org.json.JSONObject):boolean");
    }

    private static boolean b(JSONObject jSONObject) {
        boolean z;
        try {
            z = jSONObject.getString(CdnUtils.NODE_STATUS).equals("true");
        } catch (JSONException e) {
            z = true;
        }
        return z;
    }

    public static boolean checkBlackList(String str) {
        return str == null ? false : Arrays.asList(str.split("[ ,]")).contains(DeviceUtils.SYSPROP_PRODUCT_DEVICE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
        if (checkBlackList(r0.getString(com.asus.updatesdk.cdn.CdnUtils.NODE_BLACKLIST)) != false) goto L_0x0024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
        r9 = getLatestVersionCode(r0, r0.getJSONArray(com.asus.updatesdk.cdn.CdnUtils.NODE_APK));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long getApkLatestVersion(android.content.Context r4, java.lang.String r5) {
        /*
            r0 = -1
            r6 = r0
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()
            r8 = r0
            r0 = r8
            boolean r0 = com.asus.updatesdk.utility.GeneralUtils.hasInternetPermisson(r0)
            if (r0 == 0) goto L_0x0027
            r0 = r8
            com.asus.updatesdk.utility.GeneralUtils.getGtmValues(r0)
            r0 = r8
            org.json.JSONObject r0 = com.asus.updatesdk.cdn.CdnUtils.getJson(r0)
            r4 = r0
        L_0x001d:
            r0 = r4
            if (r0 != 0) goto L_0x0030
            r0 = r6
            r9 = r0
        L_0x0024:
            r0 = r9
            return r0
        L_0x0027:
            r0 = r8
            org.json.JSONObject r0 = com.asus.updatesdk.cdn.CdnUtils.getJsonNoNetwork(r0)
            r4 = r0
            goto L_0x001d
        L_0x0030:
            r0 = r4
            java.lang.String r1 = "apps"
            org.json.JSONArray r0 = r0.getJSONArray(r1)     // Catch: JSONException -> 0x0083
            r4 = r0
            r0 = 0
            r11 = r0
        L_0x003a:
            r0 = r6
            r9 = r0
            r0 = r11
            r1 = r4
            int r1 = r1.length()     // Catch: JSONException -> 0x0083
            if (r0 >= r1) goto L_0x0024
            r0 = r4
            r1 = r11
            org.json.JSONObject r0 = r0.getJSONObject(r1)     // Catch: JSONException -> 0x0083
            r12 = r0
            r0 = r12
            java.lang.String r1 = "package_name"
            java.lang.String r0 = r0.getString(r1)     // Catch: JSONException -> 0x0083
            r1 = r5
            boolean r0 = r0.equals(r1)     // Catch: JSONException -> 0x0083
            if (r0 == 0) goto L_0x007d
            r0 = r6
            r9 = r0
            r0 = r12
            java.lang.String r1 = "blacklist"
            java.lang.String r0 = r0.getString(r1)     // Catch: JSONException -> 0x0083
            boolean r0 = checkBlackList(r0)     // Catch: JSONException -> 0x0083
            if (r0 != 0) goto L_0x0024
            r0 = r8
            r1 = r12
            java.lang.String r2 = "apk"
            org.json.JSONArray r1 = r1.getJSONArray(r2)     // Catch: JSONException -> 0x0083
            long r0 = getLatestVersionCode(r0, r1)     // Catch: JSONException -> 0x0083
            r9 = r0
            goto L_0x0024
        L_0x007d:
            int r11 = r11 + 1
            goto L_0x003a
        L_0x0083:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            r0 = r6
            r9 = r0
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.ZenUiFamily.getApkLatestVersion(android.content.Context, java.lang.String):long");
    }

    public static AppStatus getAppUpdateState(Context context, String str, long j, int i) {
        int i2;
        AppStatus appStatus;
        if (-1 == j) {
            appStatus = AppStatus.NOT_SUPPORTED;
        } else {
            try {
                i2 = Integer.parseInt(a(context, str));
            } catch (NumberFormatException e) {
                i2 = 0;
            }
            boolean z = false;
            if (i != 0) {
                z = false;
                if (i > i2) {
                    z = true;
                    Log.v("ZenUiFamily", str + " is urgent. App date is " + String.valueOf(i2) + "; Urgent date is " + String.valueOf(i));
                }
            }
            try {
                appStatus = ((long) context.getPackageManager().getPackageInfo(str, 0).versionCode) < j ? z ? AppStatus.IMPORTANT : AppStatus.NEED_UPDATE : AppStatus.UP_TO_DATE;
            } catch (PackageManager.NameNotFoundException e2) {
                appStatus = -2 == j ? AppStatus.NOT_SUPPORTED : AppStatus.NOT_INSTALLED;
            }
        }
        return appStatus;
    }

    public static long getAppVersion(Context context, String str) {
        long j;
        try {
            j = context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            j = -1;
        }
        return j;
    }

    public static String getEntryPoint() {
        return f3120a;
    }

    public static long getLatestVersionCode(Context context, JSONArray jSONArray) {
        long j;
        JSONObject jSONObject;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                jSONObject = jSONArray.getJSONObject(i);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (a(context, jSONObject)) {
                j = b(jSONObject) ? -2L : Long.valueOf(jSONObject.getString(CdnUtils.NODE_VERSION)).longValue();
                return j;
            }
        }
        j = -1;
        return j;
    }

    public static int getUpdateIconResource() {
        return R.drawable.ud_sdk_asus_update_icon;
    }

    public static int getZenUiFamilyTitle() {
        return DeviceUtils.checkAsusDevice() ? R.string.ud_sdk_update_sdk_asus : R.string.ud_sdk_update_sdk;
    }

    public static void launchZenUiFamily(Context context) {
        launchZenUiFamily(context, 0);
    }

    public static void launchZenUiFamily(Context context, int i) {
        if (Build.VERSION.SDK_INT <= 16) {
            GeneralUtils.openZenFamilyPage(context);
            return;
        }
        Intent intent = new Intent("com.asus.updatesdk.LAUNCH_ZENUIFAMILY");
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.size() <= 0 || GeneralUtils.isAppLocked(context, queryIntentActivities.get(0).activityInfo.packageName)) {
            Intent intent2 = new Intent(context, ZenFamilyActivity.class);
            intent2.addFlags(i);
            context.startActivity(intent2);
            return;
        }
        intent.setPackage(queryIntentActivities.get(0).activityInfo.packageName);
        intent.addFlags(i);
        intent.putExtra("call_by_package", context.getPackageName());
        context.startActivity(intent);
    }

    public static void setEntryPoint(String str) {
        f3120a = str;
    }

    public static void setGAEnable(boolean z) {
        TrackerManager.setEnableStatus(z);
    }
}
