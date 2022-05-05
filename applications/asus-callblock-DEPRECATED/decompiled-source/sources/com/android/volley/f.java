package com.android.volley;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/android/volley/f.class */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f2297a = "0123456789ABCDEF".toCharArray();

    public static String a(String str) {
        String str2;
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            instance.update(bytes, 0, bytes.length);
            byte[] digest = instance.digest();
            char[] cArr = new char[digest.length * 2];
            for (int i = 0; i < digest.length; i++) {
                int i2 = digest[i] & 255;
                cArr[i * 2] = f2297a[i2 >>> 4];
                cArr[(i * 2) + 1] = f2297a[i2 & 15];
            }
            str2 = new String(cArr);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            str2 = null;
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            str2 = null;
        }
        return str2;
    }
}
