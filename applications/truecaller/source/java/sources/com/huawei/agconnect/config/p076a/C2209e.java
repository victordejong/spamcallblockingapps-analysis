package com.huawei.agconnect.config.p076a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.agconnect.config.a.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/config/a/e.class */
public class C2209e {

    /* renamed from: a */
    private static final char[] f7151a = "0123456789ABCDEF".toCharArray();

    /* renamed from: a */
    public static String m38284a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            char[] cArr = f7151a;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static byte[] m38285a(String str) {
        return m38283a(str.toCharArray());
    }

    /* renamed from: a */
    private static byte[] m38283a(char[] cArr) {
        int digit;
        int digit2;
        if ((cArr.length & 1) == 0) {
            byte[] bArr = new byte[cArr.length >> 1];
            int i = 0;
            int i2 = 0;
            while (i < cArr.length) {
                if (Character.digit(cArr[i], 16) == -1) {
                    throw new IllegalArgumentException(C22128a.m8611i2("Illegal hexadecimal character at index ", i));
                }
                int i3 = i + 1;
                if (Character.digit(cArr[i3], 16) == -1) {
                    throw new IllegalArgumentException(C22128a.m8611i2("Illegal hexadecimal character at index ", i3));
                }
                i = i3 + 1;
                bArr[i2] = (byte) (((digit << 4) | digit2) & 255);
                i2++;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Odd number of characters.");
    }
}
