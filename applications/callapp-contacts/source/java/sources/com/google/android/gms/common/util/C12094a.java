package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.p352d.C11946c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.common.util.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a.class */
public final class C12094a {

    /* renamed from: a */
    private static volatile int f39619a = -1;

    /* renamed from: a */
    public static MessageDigest m19057a(String str) {
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

    @Deprecated
    /* renamed from: a */
    public static byte[] m19058a(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest m19057a;
        PackageInfo m19259b = C11946c.m19258a(context).m19259b(str, 64);
        if (m19259b.signatures == null || m19259b.signatures.length != 1 || (m19057a = m19057a("SHA1")) == null) {
            return null;
        }
        return m19057a.digest(m19259b.signatures[0].toByteArray());
    }
}
