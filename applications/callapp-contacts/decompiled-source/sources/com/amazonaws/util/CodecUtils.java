package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/CodecUtils.class */
public enum CodecUtils {
    ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int sanitize(String str, byte[] bArr) {
        int length = bArr.length;
        char[] charArray = str.toCharArray();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char c2 = charArray[i2];
            i = i;
            if (c2 != '\r') {
                i = i;
                if (c2 != '\n') {
                    i = i;
                    if (c2 == ' ') {
                        continue;
                    } else if (c2 <= 127) {
                        bArr[i] = (byte) c2;
                        i++;
                    } else {
                        throw new IllegalArgumentException("Invalid character found at position " + i2 + " for " + str);
                    }
                } else {
                    continue;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sanityCheckLastPos(int i, int i2) {
        if ((i & i2) != 0) {
            throw new IllegalArgumentException("Invalid last non-pad character detected");
        }
    }

    public static byte[] toBytesDirect(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            char c2 = charArray[i];
            if (c2 <= 127) {
                bArr[i] = (byte) c2;
            } else {
                throw new IllegalArgumentException("Invalid character found at position " + i + " for " + str);
            }
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
