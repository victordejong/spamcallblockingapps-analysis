package net.pubnative.lite.sdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNCrypto.class */
public class PNCrypto {
    private static final String AES_MODE = "AES/CBC/PKCS5Padding";
    private static final String TAG = "PNCrypto";
    private static final byte[] ivBytes = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    public static String decryptString(String str, String str2) {
        try {
            byte[] decode = Base64.decode(str, 2);
            byte[] copyOfRange = Arrays.copyOfRange(decode, 0, 16);
            byte[] copyOfRange2 = Arrays.copyOfRange(decode, 16, decode.length);
            Cipher instance = Cipher.getInstance(AES_MODE);
            instance.init(2, new SecretKeySpec(str2.getBytes(StandardCharsets.UTF_8), "AES"), new IvParameterSpec(copyOfRange));
            return new String(instance.doFinal(copyOfRange2), StandardCharsets.UTF_8);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String encryptString(String str, String str2) {
        try {
            byte[] bArr = new byte[16];
            new SecureRandom().nextBytes(bArr);
            Cipher instance = Cipher.getInstance(AES_MODE);
            instance.init(1, new SecretKeySpec(str2.getBytes(StandardCharsets.UTF_8), "AES"), new IvParameterSpec(bArr));
            return Base64.encodeToString(getCombinedArray(bArr, instance.doFinal(str.getBytes(StandardCharsets.UTF_8))), 2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static byte[] getCombinedArray(byte[] bArr, byte[] bArr2) {
        int length = bArr.length + bArr2.length;
        byte[] bArr3 = new byte[length];
        int i = 0;
        while (i < length) {
            bArr3[i] = i < bArr.length ? bArr[i] : bArr2[i - bArr.length];
            i++;
        }
        return bArr3;
    }

    public static String md5(String str) {
        String sb;
        if (!TextUtils.isEmpty(str)) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(str.getBytes());
                byte[] digest = instance.digest();
                StringBuilder sb2 = new StringBuilder();
                for (byte b2 : digest) {
                    String hexString = Integer.toHexString(b2 & 255);
                    while (hexString.length() < 2) {
                        hexString = "0".concat(String.valueOf(hexString));
                    }
                    sb2.append(hexString);
                }
                sb = sb2.toString();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            return sb;
        }
        sb = "";
        return sb;
    }

    public static String sha1(String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            StringBuilder sb = new StringBuilder();
            try {
                MessageDigest instance = MessageDigest.getInstance("SHA-1");
                byte[] bytes = str.getBytes("UTF-8");
                instance.update(bytes, 0, bytes.length);
                byte[] digest = instance.digest();
                int length = digest.length;
                for (int i = 0; i < length; i++) {
                    sb.append(String.format("%02X", Byte.valueOf(digest[i])));
                }
                str2 = sb.toString().toLowerCase(Locale.US);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return str2;
        }
        str2 = "";
        return str2;
    }
}
