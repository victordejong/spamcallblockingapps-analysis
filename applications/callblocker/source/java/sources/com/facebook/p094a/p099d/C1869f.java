package com.facebook.p094a.p099d;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
/* renamed from: com.facebook.a.d.f */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/f.class */
final class C1869f {
    /* renamed from: a */
    private static String m16051a(File file) {
        int read;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 1024);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            do {
                read = bufferedInputStream.read(bArr);
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                }
            } while (read != -1);
            String bigInteger = new BigInteger(1, messageDigest.digest()).toString(16);
            if (bufferedInputStream != null) {
                if (0 != 0) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th) {
                        throw new NullPointerException();
                    }
                } else {
                    bufferedInputStream.close();
                }
            }
            return bigInteger;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                if (bufferedInputStream != null) {
                    if (th2 != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                    } else {
                        bufferedInputStream.close();
                    }
                }
                throw th3;
            }
        }
    }

    /* renamed from: a */
    public static final String m16050a(String str) {
        return m16051a(new File(str));
    }
}
