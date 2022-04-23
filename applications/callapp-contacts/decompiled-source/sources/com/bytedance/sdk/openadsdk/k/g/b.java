package com.bytedance.sdk.openadsdk.k.g;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final MessageDigest f9767a = a();

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f9768b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private b() {
    }

    public static String a(String str) {
        byte[] digest;
        MessageDigest messageDigest = f9767a;
        if (messageDigest == null || TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bytes = str.getBytes(d.f9773a);
        synchronized (b.class) {
            try {
                digest = messageDigest.digest(bytes);
            } catch (Throwable th) {
                throw th;
            }
        }
        return a(digest);
    }

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f9768b;
            cArr[i] = cArr2[(b2 & 240) >> 4];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    private static MessageDigest a() {
        try {
            return MessageDigest.getInstance("md5");
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
