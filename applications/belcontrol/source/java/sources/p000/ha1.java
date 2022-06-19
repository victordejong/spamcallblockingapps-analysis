package p000;

import android.text.TextUtils;
/* renamed from: ha1 */
/* loaded from: classes3-dex2jar.jar:ha1.class */
public class ha1 {
    /* renamed from: a */
    public static String m1638a(byte[] bArr) {
        if (bArr.length != 8) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(16);
        for (int i = 0; i < 8; i++) {
            if (bArr[i] != 110) {
                if (bArr[i] >= 100 && bArr[i] <= 109) {
                    stringBuffer.append(bArr[i] - 100);
                } else if (bArr[i] < 0 || bArr[i] > 99) {
                    return null;
                } else {
                    int i2 = bArr[i] / 10;
                    byte b = bArr[i];
                    stringBuffer.append(i2);
                    stringBuffer.append(b - (i2 * 10));
                }
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    public static byte[] m1637b(String str) {
        byte[] bArr = null;
        if (str != null) {
            if (TextUtils.isEmpty(str)) {
                bArr = null;
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                for (int i = 0; i < str.length(); i++) {
                    if (Character.isDigit(str.charAt(i))) {
                        stringBuffer.append(str.charAt(i));
                    }
                }
                int length = stringBuffer.length();
                bArr = null;
                if (length != 0) {
                    if (length <= 16) {
                        byte[] bArr2 = new byte[8];
                        bArr2[0] = 110;
                        bArr2[1] = 110;
                        bArr2[2] = 110;
                        bArr2[3] = 110;
                        bArr2[4] = 110;
                        bArr2[5] = 110;
                        bArr2[6] = 110;
                        bArr2[7] = 110;
                        int i2 = length - 1;
                        int i3 = 7;
                        while (true) {
                            bArr = bArr2;
                            if (i2 <= -1) {
                                break;
                            }
                            bArr2[i3] = (byte) (((i2 > 0 ? Character.digit(stringBuffer.charAt(i2 - 1), 10) : 10) * 10) + Character.digit(stringBuffer.charAt(i2), 10));
                            i2 -= 2;
                            i3--;
                        }
                    } else {
                        bArr = null;
                    }
                }
            }
        }
        return bArr;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: c */
    public static Long m1636c(byte[] bArr) {
        if (bArr == null || bArr.length != 8) {
            return null;
        }
        char c = 0;
        for (int i = 0; i < 8; i++) {
            ?? r0 = c | bArr[i];
            c = r0;
            if (i < 7) {
                c = r0 << 8;
            }
        }
        return Long.valueOf(c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: d */
    public static byte[] m1635d(long j) {
        byte[] bArr = new byte[8];
        ?? r7 = j;
        for (int i = 7; i > -1; i--) {
            bArr[i] = (byte) (255 & r7);
            r7 >>>= '\b';
        }
        return bArr;
    }
}
