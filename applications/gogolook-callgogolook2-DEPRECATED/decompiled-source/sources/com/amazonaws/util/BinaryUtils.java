package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/BinaryUtils.class */
public class BinaryUtils {
    public static byte[] fromBase64(String str) {
        return str == null ? null : Base64.decode(str);
    }

    public static byte[] fromHex(String str) {
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

    public static String toBase64(byte[] bArr) {
        return Base64.encodeAsString(bArr);
    }

    public static String toHex(byte[] bArr) {
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
        return StringUtils.lowerCase(sb.toString());
    }
}
