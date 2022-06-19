package com.callapp.common.util;

import io.objectbox.model.PropertyFlags;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/HashUtils.class */
public class HashUtils {

    /* renamed from: a */
    private static final char[] f19139a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    private static final char[] f19140b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static String m31921a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("CP1252"));
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                stringBuffer.append(Integer.toHexString((b & 255) | PropertyFlags.INDEX_PARTIAL_SKIP_NULL).substring(1, 3));
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            return null;
        }
    }
}
