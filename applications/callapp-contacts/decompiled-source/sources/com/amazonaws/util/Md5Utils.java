package com.amazonaws.util;

import com.amazonaws.logging.LogFactory;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Md5Utils.class */
public class Md5Utils {
    public static String a(File file) throws IOException {
        return Base64.encodeAsString(a(new FileInputStream(file)));
    }

    public static String a(byte[] bArr) {
        return Base64.encodeAsString(b(bArr));
    }

    private static byte[] a(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    instance.update(bArr, 0, read);
                }
                byte[] digest = instance.digest();
                try {
                    bufferedInputStream.close();
                } catch (Exception e) {
                    LogFactory.a(Md5Utils.class).b("Unable to close input stream of hash candidate: ".concat(String.valueOf(e)));
                }
                return digest;
            } catch (NoSuchAlgorithmException e2) {
                throw new IllegalStateException(e2);
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Exception e3) {
                LogFactory.a(Md5Utils.class).b("Unable to close input stream of hash candidate: ".concat(String.valueOf(e3)));
            }
            throw th;
        }
    }

    private static byte[] b(byte[] bArr) {
        try {
            return MessageDigest.getInstance("MD5").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }
}
