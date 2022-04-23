package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.d.c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f22934a = -1;

    public static MessageDigest a(String str) {
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

    @Deprecated
    public static byte[] a(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest a2;
        PackageInfo b2 = c.a(context).b(str, 64);
        if (b2.signatures == null || b2.signatures.length != 1 || (a2 = a("SHA1")) == null) {
            return null;
        }
        return a2.digest(b2.signatures[0].toByteArray());
    }
}
