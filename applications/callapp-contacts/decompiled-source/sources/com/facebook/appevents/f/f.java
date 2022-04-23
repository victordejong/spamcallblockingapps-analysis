package com.facebook.appevents.f;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/f.class */
final class f {
    f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(File file) throws Exception {
        int read;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 1024);
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            do {
                read = bufferedInputStream.read(bArr);
                if (read > 0) {
                    instance.update(bArr, 0, read);
                }
            } while (read != -1);
            String bigInteger = new BigInteger(1, instance.digest()).toString(16);
            bufferedInputStream.close();
            return bigInteger;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
