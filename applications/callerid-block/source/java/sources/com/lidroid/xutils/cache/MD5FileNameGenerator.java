package com.lidroid.xutils.cache;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/cache/MD5FileNameGenerator.class */
public class MD5FileNameGenerator implements FileNameGenerator {
    private String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    @Override // com.lidroid.xutils.cache.FileNameGenerator
    public String generate(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            str2 = bytesToHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            str2 = String.valueOf(str.hashCode());
        }
        return str2;
    }
}
