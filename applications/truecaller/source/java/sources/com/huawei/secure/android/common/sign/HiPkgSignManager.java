package com.huawei.secure.android.common.sign;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.secure.android.common.util.LogsUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/sign/HiPkgSignManager.class */
public class HiPkgSignManager {

    /* renamed from: a */
    private static final String f7997a = "HiPkgSignManager";

    /* renamed from: a */
    private static String m37033a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < length; i++) {
            if ((bArr[i] & 255) < 16) {
                StringBuilder m8728C = C22128a.m8728C(DtbConstants.NETWORK_TYPE_UNKNOWN);
                m8728C.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(m8728C.toString());
            } else {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
            }
        }
        return stringBuffer.toString().toUpperCase(Locale.ENGLISH);
    }

    /* renamed from: b */
    private static String m37032b(byte[] bArr) {
        String str;
        try {
            str = m37033a(MessageDigest.getInstance("SHA-256").digest(bArr));
        } catch (NoSuchAlgorithmException e) {
            e.getMessage();
            str = "";
        }
        return str;
    }

    public static boolean doCheckArchiveApk(Context context, String str, String str2, String str3) {
        boolean z = false;
        if (!TextUtils.isEmpty(str2)) {
            z = false;
            if (!TextUtils.isEmpty(str)) {
                z = false;
                if (context != null) {
                    if (TextUtils.isEmpty(str3)) {
                        z = false;
                    } else {
                        String unInstalledAppHash = getUnInstalledAppHash(context, str2);
                        String unInstalledAPPPackageName = getUnInstalledAPPPackageName(context, str2);
                        z = false;
                        if (str.equalsIgnoreCase(unInstalledAppHash)) {
                            z = false;
                            if (str3.equals(unInstalledAPPPackageName)) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public static boolean doCheckInstalled(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || context == null) {
            return false;
        }
        return str.equals(getInstalledAppHash(context, str2));
    }

    public static byte[] getInstalledAPPSignature(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(str, 64)) != null) {
                return packageInfo.signatures[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder m8728C = C22128a.m8728C("PackageManager.NameNotFoundException : ");
            m8728C.append(e.getMessage());
            LogsUtil.m36916e(f7997a, m8728C.toString(), true);
        } catch (Exception e2) {
            StringBuilder m8728C2 = C22128a.m8728C("Exception : ");
            m8728C2.append(e2.getMessage());
            LogsUtil.m36916e(f7997a, m8728C2.toString(), true);
        }
        return new byte[0];
    }

    public static String getInstalledAppHash(Context context, String str) {
        byte[] installedAPPSignature = getInstalledAPPSignature(context, str);
        return (installedAPPSignature == null || installedAPPSignature.length <= 0) ? "" : m37032b(installedAPPSignature);
    }

    public static String getUnInstalledAPPPackageName(Context context, String str) {
        PackageInfo packageArchiveInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 64)) == null) ? "" : packageArchiveInfo.packageName;
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }

    public static byte[] getUnInstalledAPPSignature(Context context, String str) {
        PackageInfo packageArchiveInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 64)) != null) {
                return packageArchiveInfo.signatures[0].toByteArray();
            }
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Exception : ");
            m8728C.append(e.getMessage());
            LogsUtil.m36916e(f7997a, m8728C.toString(), true);
        }
        return new byte[0];
    }

    public static String getUnInstalledAppHash(Context context, String str) {
        byte[] unInstalledAPPSignature = getUnInstalledAPPSignature(context, str);
        return (unInstalledAPPSignature == null || unInstalledAPPSignature.length <= 0) ? "" : m37032b(unInstalledAPPSignature);
    }
}
