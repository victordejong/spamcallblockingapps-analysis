package com.huawei.hms.utils;

import com.huawei.hms.support.log.HMSLog;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/SHA256.class */
public abstract class SHA256 {
    public static byte[] digest(File file) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        MessageDigest messageDigest;
        BufferedInputStream bufferedInputStream2;
        int i;
        BufferedInputStream bufferedInputStream3 = null;
        try {
            try {
                messageDigest = MessageDigest.getInstance("SHA-256");
                bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            } catch (IOException | NoSuchAlgorithmException e) {
                bufferedInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[4096];
            i = 0;
            while (true) {
                int read = bufferedInputStream2.read(bArr);
                if (read == -1) {
                    break;
                }
                i += read;
                messageDigest.update(bArr, 0, read);
            }
        } catch (IOException | NoSuchAlgorithmException e2) {
            bufferedInputStream = bufferedInputStream2;
            bufferedInputStream3 = bufferedInputStream;
            HMSLog.m37195e("SHA256", "An exception occurred while computing file 'SHA-256'.");
            IOUtils.closeQuietly((InputStream) bufferedInputStream);
            return new byte[0];
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream3 = bufferedInputStream2;
            IOUtils.closeQuietly((InputStream) bufferedInputStream3);
            throw th;
        }
        if (i <= 0) {
            IOUtils.closeQuietly((InputStream) bufferedInputStream2);
            return new byte[0];
        }
        byte[] digest = messageDigest.digest();
        IOUtils.closeQuietly((InputStream) bufferedInputStream2);
        return digest;
    }

    public static byte[] digest(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA-256").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            StringBuilder m8728C = C22128a.m8728C("NoSuchAlgorithmException");
            m8728C.append(e.getMessage());
            HMSLog.m37195e("SHA256", m8728C.toString());
            return new byte[0];
        }
    }
}
