package com.telguarder.helpers.common;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.core.app.ActivityCompat;
import com.telguarder.ApplicationObject;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/common/AppUtil.class */
public class AppUtil {
    private static final char[] hexArray = "0123456789ABCDEF".toCharArray();

    public static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = hexArray;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    public static Spanned fromHtml(String str) {
        return Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 0) : Html.fromHtml(str);
    }

    public static String getApplicationVersionCode(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            Logger.error(e.getMessage());
            return "";
        }
    }

    public static ClipData getClipBoardData(Context context) {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (clipboardManager.hasPrimaryClip() && clipboardManager.getPrimaryClip() != null && clipboardManager.getPrimaryClip().getItemCount() != 0) {
                return clipboardManager.getPrimaryClip();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static int getColorResource(Context context, int i) {
        return UiHelper.getColorWrapper(context, i);
    }

    public static String getDeviceId(Context context) {
        String str;
        TelephonyManager telephonyManager;
        if (Build.VERSION.SDK_INT >= 29 || (telephonyManager = getTelephonyManager(context)) == null || (Build.VERSION.SDK_INT >= 23 && ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0)) {
            str = null;
        } else if (Build.VERSION.SDK_INT >= 26) {
            String imei = telephonyManager.getImei();
            str = imei;
            if (TextUtils.isEmpty(imei)) {
                str = telephonyManager.getMeid();
            }
        } else {
            str = telephonyManager.getDeviceId();
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = UID.uid(context, false);
        }
        return str2;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public static long getFirstInstallTime(Context context) {
        char c;
        try {
            c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            c = 0;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    public static String getFullApplicationVersionName(Context context) {
        ?? r8;
        String str;
        String str2 = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            str = packageInfo.versionName;
            if (Build.VERSION.SDK_INT >= 28) {
                str2 = str;
                r8 = packageInfo.getLongVersionCode();
            } else {
                str2 = str;
                r8 = packageInfo.versionCode;
            }
        } catch (PackageManager.NameNotFoundException e) {
            Logger.error(e.getMessage());
            r8 = true;
            str = str2;
        }
        return str + " (" + (r8 == true ? 1L : 0L) + ")";
    }

    public static String getLastClipBoardEntry(Context context) {
        String str;
        try {
            ClipData clipBoardData = getClipBoardData(context);
            CharSequence text = clipBoardData != null ? clipBoardData.getItemAt(0).getText() : null;
            str = TextUtils.isEmpty(text) ? null : text.toString();
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public static long getLastUpdateTime(Context context) {
        char c;
        try {
            c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            c = 0;
        }
        return c;
    }

    public static String getStringResource(Context context, int i) {
        if (context == null) {
            context = ApplicationObject.getContext();
        }
        return context != null ? context.getString(i) : "";
    }

    private static TelephonyManager getTelephonyManager(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    public static String getUpperCaseStringResource(Context context, int i) {
        return getStringResource(context, i).toUpperCase();
    }

    public static boolean isDeviceOnAbroadNetwork(Context context) {
        TelephonyManager telephonyManager = getTelephonyManager(context);
        return telephonyManager != null && !telephonyManager.getSimCountryIso().equals(telephonyManager.getNetworkCountryIso());
    }

    private static boolean isPlayServicesUsable(int i) {
        return i == 0 || 2 == i;
    }

    public static boolean isSameStrings(String str, String str2) {
        return (str == null && str2 == null) || !(str == null || str2 == null || !str.equalsIgnoreCase(str2));
    }

    public static boolean isUpgrade(Context context) {
        boolean z = true;
        try {
            if (context.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime == context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime) {
                z = false;
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return z;
    }
}
