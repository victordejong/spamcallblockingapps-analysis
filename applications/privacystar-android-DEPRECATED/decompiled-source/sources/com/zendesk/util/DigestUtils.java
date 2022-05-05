package com.zendesk.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/DigestUtils.class */
public class DigestUtils {
    private static final String MD5 = "MD5";
    private static final String SHA1 = "SHA-1";
    private static final String SHA256 = "SHA-256";
    private static final String SHA384 = "SHA-384";
    private static final String SHA512 = "SHA-512";

    private static byte[] digest(String str, String str2) {
        if (!StringUtils.hasLength(str) || !StringUtils.hasLength(str2)) {
            return new byte[0];
        }
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(str2.getBytes());
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            return new byte[0];
        }
    }

    private static String hexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    public static String md5(String str) {
        return StringUtils.hasLength(str) ? hexString(digest(MD5, str)) : "";
    }

    public static String sha1(String str) {
        return StringUtils.hasLength(str) ? hexString(digest("SHA-1", str)) : "";
    }

    public static String sha256(String str) {
        return StringUtils.hasLength(str) ? hexString(digest("SHA-256", str)) : "";
    }

    public static String sha384(String str) {
        return StringUtils.hasLength(str) ? hexString(digest("SHA-384", str)) : "";
    }

    public static String sha512(String str) {
        return StringUtils.hasLength(str) ? hexString(digest("SHA-512", str)) : "";
    }
}
