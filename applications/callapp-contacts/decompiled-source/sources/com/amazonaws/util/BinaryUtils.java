package com.amazonaws.util;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/BinaryUtils.class */
public class BinaryUtils {
    public static String a(byte[] bArr) {
        String str;
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2);
            if (hexString.length() == 1) {
                sb.append("0");
                str = hexString;
            } else {
                str = hexString;
                if (hexString.length() == 8) {
                    str = hexString.substring(6);
                }
            }
            sb.append(str);
        }
        return StringUtils.b(sb.toString());
    }

    public static byte[] a(String str) {
        byte[] bArr = new byte[(str.length() + 1) / 2];
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int i3 = i + 2;
            bArr[i2] = (byte) Integer.parseInt(str.substring(i, i3), 16);
            i = i3;
            i2++;
        }
        return bArr;
    }

    public static byte[] a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        if (byteBuffer.hasArray()) {
            return Arrays.copyOfRange(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.arrayOffset() + byteBuffer.limit());
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        asReadOnlyBuffer.rewind();
        byte[] bArr = new byte[asReadOnlyBuffer.remaining()];
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static String b(byte[] bArr) {
        return Base64.encodeAsString(bArr);
    }

    public static byte[] b(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str);
    }
}
