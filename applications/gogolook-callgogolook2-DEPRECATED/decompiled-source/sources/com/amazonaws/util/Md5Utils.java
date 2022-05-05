package com.amazonaws.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Md5Utils.class */
public class Md5Utils {
    public static byte[] computeMD5Hash(File file) throws FileNotFoundException, IOException {
        return computeMD5Hash(new FileInputStream(file));
    }

    public static byte[] computeMD5Hash(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        break;
                    }
                    instance.update(bArr, 0, read);
                }
                byte[] digest = instance.digest();
                try {
                    bufferedInputStream.close();
                } catch (Exception e) {
                    Log log = LogFactory.getLog(Md5Utils.class);
                    log.debug("Unable to close input stream of hash candidate: " + e);
                }
                return digest;
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Exception e2) {
                    Log log2 = LogFactory.getLog(Md5Utils.class);
                    log2.debug("Unable to close input stream of hash candidate: " + e2);
                }
                throw th;
            }
        } catch (NoSuchAlgorithmException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public static String md5AsBase64(File file) throws FileNotFoundException, IOException {
        return Base64.encodeAsString(computeMD5Hash(file));
    }
}
