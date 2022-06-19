package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.common.p132c.C2586c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.common.util.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/a.class */
public class C2701a {

    /* renamed from: a */
    private static volatile int f7504a = -1;

    /* renamed from: a */
    public static MessageDigest m13880a(String str) {
        MessageDigest messageDigest;
        int i = 0;
        while (true) {
            if (i >= 2) {
                messageDigest = null;
                break;
            }
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                break;
            }
            i++;
        }
        return messageDigest;
    }

    /* renamed from: a */
    public static byte[] m13881a(Context context, String str) {
        MessageDigest m13880a;
        PackageInfo m14194b = C2586c.m14193a(context).m14194b(str, 64);
        return (m14194b.signatures == null || m14194b.signatures.length != 1 || (m13880a = m13880a("SHA1")) == null) ? null : m13880a.digest(m14194b.signatures[0].toByteArray());
    }
}
