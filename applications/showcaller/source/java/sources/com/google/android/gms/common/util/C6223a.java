package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.p272k.C6198c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.common.util.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/a.class */
public class C6223a {
    @RecentlyNullable
    @Deprecated
    /* renamed from: a */
    public static byte[] m16833a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        MessageDigest m16832b;
        PackageInfo m16888f = C6198c.m16885a(context).m16888f(str, 64);
        Signature[] signatureArr = m16888f.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (m16832b = m16832b("SHA1")) == null) {
            return null;
        }
        return m16832b.digest(m16888f.signatures[0].toByteArray());
    }

    @RecentlyNullable
    /* renamed from: b */
    public static MessageDigest m16832b(@RecentlyNonNull String str) {
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
