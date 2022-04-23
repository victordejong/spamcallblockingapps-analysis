package com.privacystar.core.util;

import android.content.Context;
import com.privacystar.core.service.googleplay.util.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.RSAPublicKeySpec;
import net.kibotu.pgp.Pgp;
import org.apache.commons.p018io.IOUtils;
import org.spongycastle.openpgp.PGPException;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CryptoUtil.class */
public class CryptoUtil {
    private static String HASH_SALT = "9r1V@cY8t@r";
    private static String PGP_PASS = "SuperSpecialSecretPassword";

    private static String bytesToHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] >>> 4) & 15;
            int i3 = 0;
            while (true) {
                if (i2 < 0 || i2 > 9) {
                    stringBuffer.append((char) ((i2 - 10) + 97));
                } else {
                    stringBuffer.append((char) (i2 + 48));
                }
                i2 = bArr[i] & 15;
                if (i3 >= 1) {
                    break;
                }
                i3++;
            }
        }
        return stringBuffer.toString();
    }

    public static String encryptWithPGP(String str, String str2) throws IOException, PGPException {
        Pgp.generateKeyRingGenerator(PGP_PASS.toCharArray());
        Pgp.setPublicKey(str2);
        String encrypt = Pgp.encrypt(str);
        return encrypt == null ? "" : encrypt;
    }

    private static byte[] hexToBytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static String sha1HashIt(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return sha1HashIt(str, true);
    }

    public static String sha1HashIt(String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String str2 = str;
        if (z) {
            str2 = str + HASH_SALT;
        }
        MessageDigest instance = MessageDigest.getInstance("SHA-1");
        byte[] bytes = str2.getBytes("UTF-8");
        instance.update(bytes, 0, bytes.length);
        return bytesToHex(instance.digest());
    }

    public static boolean verify(String str, String str2, Context context) {
        Throwable th;
        Exception e;
        byte[] hexToBytes;
        BigInteger bigInteger;
        BigInteger bigInteger2;
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                hexToBytes = hexToBytes(str);
                bigInteger = new BigInteger(1, Base64.decode("7EAgihmZ4S43XXjwwPMsVcGat2z07JMJyiGWAwZ9R4/noTwth2e3eS6lKHXE94WChf7q0vW4m0DqIz9ihluDMT7w4lq1kaHebcSGY4B4ZqWO+Ur3RuhR4CQttyqYRzIC8LX/YTffJNfvvblm9sS/V2aIrhqmvDX21/zd5Te3/OM=".getBytes()));
                bigInteger2 = new BigInteger(1, Base64.decode("AQAB".getBytes()));
                fileInputStream = new FileInputStream(new File(str2));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            byte[] byteArray = IOUtils.toByteArray(fileInputStream);
            if (byteArray != null) {
                PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(bigInteger, bigInteger2));
                Signature instance = Signature.getInstance("SHA1withRSA");
                instance.initVerify(generatePublic);
                instance.update(byteArray);
                boolean verify = instance.verify(hexToBytes);
                IOUtils.closeQuietly((InputStream) fileInputStream);
                return verify;
            }
            IOUtils.closeQuietly((InputStream) fileInputStream);
            return false;
        } catch (Exception e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            Timber.m32e(e, "while verifying", new Object[0]);
            IOUtils.closeQuietly((InputStream) fileInputStream);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            IOUtils.closeQuietly((InputStream) fileInputStream2);
            throw th;
        }
    }
}
