package com.yanzhenjie.nohttp.tools;

import com.yanzhenjie.nohttp.Logger;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/Encryption.class */
public class Encryption {
    private Cipher decryptCipher;
    private Cipher encryptCipher;

    public Encryption(String str) {
        this.encryptCipher = null;
        this.decryptCipher = null;
        try {
            Key key = getKey(str.getBytes());
            Cipher cipher = Cipher.getInstance("DES");
            this.encryptCipher = cipher;
            cipher.init(1, key);
            Cipher cipher2 = Cipher.getInstance("DES");
            this.decryptCipher = cipher2;
            cipher2.init(2, key);
        } catch (Exception e) {
            Logger.m566e((Throwable) e);
        }
    }

    public static String byteArrayToHexStr(byte[] bArr) {
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer(length * 2);
        for (int i = 0; i < length; i++) {
            int i2 = bArr[i];
            while (i2 < 0) {
                i2 += 256;
            }
            if (i2 < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toString(i2, 16));
        }
        return stringBuffer.toString();
    }

    private Key getKey(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        for (int i = 0; i < bArr.length && i < 8; i++) {
            bArr2[i] = bArr[i];
        }
        return new SecretKeySpec(bArr2, "DES");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [int] */
    public static String getMD5ForString(String str) {
        byte[] digest;
        StringBuilder sb = new StringBuilder();
        try {
            for (byte b : MessageDigest.getInstance("MD5").digest(str.getBytes())) {
                byte b2 = b;
                if (b < 0) {
                    b2 = b + 256;
                }
                if (b2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(b2));
            }
        } catch (NoSuchAlgorithmException e) {
            Logger.m566e((Throwable) e);
        }
        return sb.toString();
    }

    public static byte[] hexStrToByteArray(String str) {
        byte[] bytes;
        int length = str.getBytes().length;
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) Integer.parseInt(new String(bytes, i, 2), 16);
        }
        return bArr;
    }

    public String decrypt(String str) {
        return new String(decrypt(hexStrToByteArray(str)));
    }

    public byte[] decrypt(byte[] bArr) {
        return this.decryptCipher.doFinal(bArr);
    }

    public String encrypt(String str) {
        return byteArrayToHexStr(encrypt(str.getBytes()));
    }

    public byte[] encrypt(byte[] bArr) {
        return this.encryptCipher.doFinal(bArr);
    }
}
