package com.amazonaws.util;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/BinaryUtils.class */
public class BinaryUtils {
    /* renamed from: a */
    public static String m38259a(byte[] bArr) {
        String str;
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b);
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
        return StringUtils.m38227b(sb.toString());
    }

    /* renamed from: a */
    public static byte[] m38261a(String str) {
        int i;
        byte[] bArr = new byte[(str.length() + 1) / 2];
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length()) {
            bArr[i3] = (byte) Integer.parseInt(str.substring(i2, i), 16);
            i2 += 2;
            i3++;
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m38260a(ByteBuffer byteBuffer) {
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

    /* renamed from: b */
    public static String m38257b(byte[] bArr) {
        return Base64.encodeAsString(bArr);
    }

    /* renamed from: b */
    public static byte[] m38258b(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str);
    }
}
