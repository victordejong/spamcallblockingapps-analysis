package com.p102b.p103a;
/* renamed from: com.b.a.c */
/* loaded from: classes-dex2jar.jar:com/b/a/c.class */
public final class C3513c {

    /* renamed from: a */
    private static final char[] f13381a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static String m37856a(byte[] bArr) {
        return m37855a(bArr, 0);
    }

    /* renamed from: a */
    public static String m37855a(byte[] bArr, int i) {
        int length = bArr.length;
        char[] cArr = new char[(length << 1) + (i > 0 ? length / i : 0)];
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i2;
            if (i > 0) {
                i4 = i2;
                if (i3 % i == 0) {
                    i4 = i2;
                    if (i2 > 0) {
                        cArr[i2] = (char) 45;
                        i4 = i2 + 1;
                    }
                }
            }
            int i5 = i4 + 1;
            char[] cArr2 = f13381a;
            cArr[i4] = cArr2[(bArr[i3] & 240) >>> 4];
            i2 = i5 + 1;
            cArr[i5] = cArr2[bArr[i3] & 15];
        }
        return new String(cArr);
    }
}
