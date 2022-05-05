package com.facebook.stetho.websocket;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/websocket/MaskingHelper.class */
class MaskingHelper {
    MaskingHelper() {
    }

    public static void unmask(byte[] bArr, byte[] bArr2, int i, int i2) {
        int i3 = 0;
        while (i2 > 0) {
            bArr2[i] = (byte) (bArr[i3 % bArr.length] ^ bArr2[i]);
            i++;
            i2--;
            i3++;
        }
    }
}
