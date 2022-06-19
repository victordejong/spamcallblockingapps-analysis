package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/h.class */
public class C5424h {

    /* renamed from: a */
    static final char[] f18958a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    private static String m32347a(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "bytes is null");
        if (i < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = i2 * 2;
        char[] cArr = new char[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = bArr[i5 + i] & 255;
            int i7 = i4 + 1;
            char[] cArr2 = f18958a;
            cArr[i4] = cArr2[i6 >> 4];
            i4 = i7 + 1;
            cArr[i7] = cArr2[i6 & 15];
        }
        return new String(cArr, 0, i3);
    }

    /* renamed from: a */
    public static void m32348a(InputStream inputStream, String str) throws Exception {
        if (str != null) {
            try {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    try {
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = inputStream.read(bArr, 0, 4096);
                            if (read == -1) {
                                break;
                            }
                            messageDigest.update(bArr, 0, read);
                        }
                        try {
                            byte[] digest = messageDigest.digest();
                            String m32347a = m32347a(digest, 0, digest.length);
                            if (str.equals(m32347a)) {
                                return;
                            }
                            throw new RuntimeException("md5 check failed file: local md5:" + m32347a + " expect md5:" + str);
                        } catch (Exception e) {
                            throw new RuntimeException("md5 check failed:" + e.getMessage(), e);
                        }
                    } catch (Exception e2) {
                        throw new RuntimeException("md5 check failed:" + e2.getMessage(), e2);
                    }
                } finally {
                    C5417b.m32360a(inputStream);
                }
            } catch (Exception e3) {
                throw new RuntimeException("md5 check failed:" + e3.getMessage(), e3);
            }
        }
        throw new RuntimeException("md5 check failed: md5 == null");
    }
}
