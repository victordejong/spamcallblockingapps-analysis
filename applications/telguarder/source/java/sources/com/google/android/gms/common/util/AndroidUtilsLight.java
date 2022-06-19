package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.common.zzi;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/AndroidUtilsLight.class */
public class AndroidUtilsLight {
    private static volatile int zza = -1;

    @Deprecated
    public static Context getDeviceProtectedStorageContext(Context context) {
        Context context2 = context;
        if (zzi.zza()) {
            context2 = context;
            if (!context.isDeviceProtectedStorage()) {
                context2 = context.createDeviceProtectedStorageContext();
            }
        }
        return context2;
    }

    @Deprecated
    public static byte[] getPackageCertificateHashBytes(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest zza2;
        PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
        if (packageInfo.signatures == null || packageInfo.signatures.length != 1 || (zza2 = zza("SHA1")) == null) {
            return null;
        }
        return zza2.digest(packageInfo.signatures[0].toByteArray());
    }

    public static MessageDigest zza(String str) {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }
}
