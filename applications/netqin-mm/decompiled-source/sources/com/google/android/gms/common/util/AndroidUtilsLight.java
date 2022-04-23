package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/AndroidUtilsLight.class */
public class AndroidUtilsLight {
    /* renamed from: a */
    public static MessageDigest m17121a(String str) {
        MessageDigest instance;
        for (int i = 0; i < 2; i++) {
            try {
                instance = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (instance != null) {
                return instance;
            }
        }
        return null;
    }

    @KeepForSdk
    /* renamed from: a */
    public static byte[] m17122a(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest a;
        PackageInfo b = Wrappers.m17026b(context).m17028b(str, 64);
        Signature[] signatureArr = b.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (a = m17121a("SHA1")) == null) {
            return null;
        }
        return a.digest(b.signatures[0].toByteArray());
    }
}
