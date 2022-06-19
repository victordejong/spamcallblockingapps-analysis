package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.wrappers.Wrappers;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/AndroidUtilsLight.class */
public class AndroidUtilsLight {
    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static byte[] m38798a(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest m38797b;
        PackageInfo packageInfo = Wrappers.m38764a(context).f6151a.getPackageManager().getPackageInfo(str, 64);
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (m38797b = m38797b("SHA1")) == null) {
            return null;
        }
        return m38797b.digest(packageInfo.signatures[0].toByteArray());
    }

    /* renamed from: b */
    public static MessageDigest m38797b(String str) {
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
