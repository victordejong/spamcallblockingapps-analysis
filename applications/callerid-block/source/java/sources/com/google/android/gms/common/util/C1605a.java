package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.p080g.C1562c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.common.util.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/a.class */
public class C1605a {
    @RecentlyNullable
    @Deprecated
    /* renamed from: a */
    public static byte[] m8254a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        MessageDigest m8253b;
        PackageInfo m8430f = C1562c.m8427a(context).m8430f(str, 64);
        Signature[] signatureArr = m8430f.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (m8253b = m8253b("SHA1")) == null) {
            return null;
        }
        return m8253b.digest(m8430f.signatures[0].toByteArray());
    }

    @RecentlyNullable
    /* renamed from: b */
    public static MessageDigest m8253b(@RecentlyNonNull String str) {
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
