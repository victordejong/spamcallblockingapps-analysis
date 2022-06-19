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
    /* renamed from: a */
    public static String m38239a(File file) throws IOException {
        return Base64.encodeAsString(m38238a(new FileInputStream(file)));
    }

    /* renamed from: a */
    public static String m38237a(byte[] bArr) {
        return Base64.encodeAsString(m38236b(bArr));
    }

    /* renamed from: a */
    private static byte[] m38238a(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                byte[] digest = messageDigest.digest();
                try {
                    bufferedInputStream.close();
                } catch (Exception e) {
                    LogFactory.m38584a(Md5Utils.class).mo38593b("Unable to close input stream of hash candidate: ".concat(String.valueOf(e)));
                }
                return digest;
            } catch (NoSuchAlgorithmException e2) {
                throw new IllegalStateException(e2);
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Exception e3) {
                LogFactory.m38584a(Md5Utils.class).mo38593b("Unable to close input stream of hash candidate: ".concat(String.valueOf(e3)));
            }
            throw th;
        }
    }

    /* renamed from: b */
    private static byte[] m38236b(byte[] bArr) {
        try {
            return MessageDigest.getInstance("MD5").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }
}
