package com.pgl.p474a.p476b;
/* renamed from: com.pgl.a.b.a */
/* loaded from: classes4-dex2jar.jar:com/pgl/a/b/a.class */
public final class C17052a {
    /* renamed from: a */
    public static String m5954a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        char[] charArray = "0123456789abcdef".toCharArray();
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr[i3] = charArray[i2 >>> 4];
            cArr[i3 + 1] = charArray[i2 & 15];
        }
        return new String(cArr);
    }
}
