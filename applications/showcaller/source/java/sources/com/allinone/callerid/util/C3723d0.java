package com.allinone.callerid.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.allinone.callerid.util.d0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/d0.class */
public class C3723d0 {
    /* renamed from: a */
    private static String m24421a(MessageDigest messageDigest) {
        byte[] digest;
        StringBuilder sb = new StringBuilder();
        for (byte b : messageDigest.digest()) {
            sb.append(Integer.toHexString((b >> 4) & 15));
            sb.append(Integer.toHexString(b & 15));
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m24420b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return m24421a(messageDigest);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
