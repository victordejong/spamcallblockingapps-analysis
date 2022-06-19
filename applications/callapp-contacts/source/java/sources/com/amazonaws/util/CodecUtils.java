package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/CodecUtils.class */
public enum CodecUtils {
    ;

    public static int sanitize(String str, byte[] bArr) {
        int length = bArr.length;
        char[] charArray = str.toCharArray();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                char c = charArray[i];
                int i4 = i3;
                if (c != '\r') {
                    i4 = i3;
                    if (c != '\n') {
                        i4 = i3;
                        if (c == ' ') {
                            continue;
                        } else if (c > 127) {
                            throw new IllegalArgumentException("Invalid character found at position " + i + " for " + str);
                        } else {
                            bArr[i3] = (byte) c;
                            i4 = i3 + 1;
                        }
                    } else {
                        continue;
                    }
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    public static void sanityCheckLastPos(int i, int i2) {
        if ((i & i2) == 0) {
            return;
        }
        throw new IllegalArgumentException("Invalid last non-pad character detected");
    }

    public static byte[] toBytesDirect(String str) {
        char c;
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            if (charArray[i] > 127) {
                throw new IllegalArgumentException("Invalid character found at position " + i + " for " + str);
            }
            bArr[i] = (byte) c;
        }
        return bArr;
    }

    public static String toStringDirect(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            cArr[i2] = (char) bArr[i];
            i++;
            i2++;
        }
        return new String(cArr);
    }
}
