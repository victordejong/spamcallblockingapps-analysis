package org.bouncycastle.util;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.io.ByteArrayOutputStream;
import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/Strings.class */
public final class Strings {
    public static String fromUTF8ByteArray(byte[] bArr) {
        char c;
        int i;
        byte b;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            i4++;
            if ((bArr[i3] & 240) == 240) {
                i4++;
                i3 += 4;
            } else {
                i3 = (bArr[i3] & 224) == 224 ? i3 + 3 : (bArr[i3] & 192) == 192 ? i3 + 2 : i3 + 1;
            }
        }
        char[] cArr = new char[i4];
        int i5 = 0;
        int i6 = 0;
        while (i6 < bArr.length) {
            if ((bArr[i6] & 240) == 240) {
                c = (char) ((((((((bArr[i6] & 3) << 18) | ((bArr[i6 + 1] & 63) << 12)) | ((bArr[i6 + 2] & 63) << 6)) | (bArr[i6 + 3] & 63)) - 65536) & 1023) | 56320);
                cArr[i5] = (char) (55296 | (i2 >> 10));
                i6 += 4;
                i5++;
            } else if ((bArr[i6] & 224) == 224) {
                c = (char) (((bArr[i6] & 15) << 12) | ((bArr[i6 + 1] & 63) << 6) | (bArr[i6 + 2] & 63));
                i6 += 3;
            } else {
                if ((bArr[i6] & 208) == 208) {
                    i = (bArr[i6] & 31) << 6;
                    b = bArr[i6 + 1];
                } else if ((bArr[i6] & 192) == 192) {
                    i = (bArr[i6] & 31) << 6;
                    b = bArr[i6 + 1];
                } else {
                    c = (char) (bArr[i6] & 255);
                    i6++;
                }
                c = (char) (i | (b & 63));
                i6 += 2;
            }
            cArr[i5] = c;
            i5++;
        }
        return new String(cArr);
    }

    public static String[] split(String str, char c) {
        Vector vector = new Vector();
        boolean z = true;
        while (z) {
            int indexOf = str.indexOf(c);
            if (indexOf > 0) {
                vector.addElement(str.substring(0, indexOf));
                str = str.substring(indexOf + 1);
            } else {
                vector.addElement(str);
                z = false;
            }
        }
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i = 0; i != size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    public static byte[] toByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public static byte[] toByteArray(char[] cArr) {
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return bArr;
    }

    public static String toLowerCase(String str) {
        boolean z;
        char[] charArray = str.toCharArray();
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i == charArray.length) {
                break;
            }
            char c = charArray[i];
            boolean z3 = z;
            if ('A' <= c) {
                z3 = z;
                if ('Z' >= c) {
                    charArray[i] = (char) ((c - 'A') + 97);
                    z3 = true;
                }
            }
            i++;
            z2 = z3;
        }
        if (z) {
            str = new String(charArray);
        }
        return str;
    }

    public static byte[] toUTF8ByteArray(String str) {
        return toUTF8ByteArray(str.toCharArray());
    }

    public static byte[] toUTF8ByteArray(char[] cArr) {
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        while (i2 < cArr.length) {
            char c = cArr[i2];
            if (c >= 128) {
                if (c < 2048) {
                    i = (c >> 6) | 192;
                } else if (c < 55296 || c > 57343) {
                    byteArrayOutputStream.write((c >> '\f') | 224);
                    i = ((c >> 6) & 63) | 128;
                } else {
                    i2++;
                    if (i2 >= cArr.length) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    char c2 = cArr[i2];
                    if (c > 56319) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    c = (((c & 1023) << 10) | (c2 & 1023)) + 65536;
                    byteArrayOutputStream.write((c >> 18) | HighLevelEncoder.LATCH_TO_EDIFACT);
                    byteArrayOutputStream.write(((c >> '\f') & 63) | 128);
                    byteArrayOutputStream.write(((c >> 6) & 63) | 128);
                    c = (c & '?') | 128;
                }
                byteArrayOutputStream.write(i);
                c = (c & '?') | 128;
            }
            byteArrayOutputStream.write(c);
            i2++;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String toUpperCase(String str) {
        boolean z;
        char[] charArray = str.toCharArray();
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i == charArray.length) {
                break;
            }
            char c = charArray[i];
            boolean z3 = z;
            if ('a' <= c) {
                z3 = z;
                if ('z' >= c) {
                    charArray[i] = (char) ((c - 'a') + 65);
                    z3 = true;
                }
            }
            i++;
            z2 = z3;
        }
        if (z) {
            str = new String(charArray);
        }
        return str;
    }
}
