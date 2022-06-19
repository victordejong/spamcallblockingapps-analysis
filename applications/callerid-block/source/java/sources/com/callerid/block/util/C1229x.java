package com.callerid.block.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.callerid.block.util.x */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/x.class */
public class C1229x {
    /* renamed from: a */
    private static String m9517a(MessageDigest messageDigest) {
        byte[] digest;
        StringBuilder sb = new StringBuilder();
        for (byte b : messageDigest.digest()) {
            sb.append(Integer.toHexString((b >> 4) & 15));
            sb.append(Integer.toHexString(b & 15));
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m9516b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return m9517a(messageDigest);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
