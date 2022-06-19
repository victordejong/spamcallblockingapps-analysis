package com.bytedance.sdk.openadsdk.p176k.p183g;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.bytedance.sdk.openadsdk.k.g.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/b.class */
public class C5028b {

    /* renamed from: a */
    private static final MessageDigest f18213a = m33245a();

    /* renamed from: b */
    private static final char[] f18214b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private C5028b() {
    }

    /* renamed from: a */
    public static String m33243a(String str) {
        byte[] digest;
        MessageDigest messageDigest = f18213a;
        if (messageDigest == null || TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bytes = str.getBytes(C5030d.f18220a);
        synchronized (C5028b.class) {
            try {
                digest = messageDigest.digest(bytes);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m33242a(digest);
    }

    /* renamed from: a */
    public static String m33242a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f18214b;
            cArr[i] = cArr2[(b & 240) >> 4];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    private static MessageDigest m33245a() {
        try {
            return MessageDigest.getInstance("md5");
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
