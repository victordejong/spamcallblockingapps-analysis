package org.spongycastle.pqc.crypto.newhope;

import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/newhope/ErrorCorrection.class */
class ErrorCorrection {
    ErrorCorrection() {
    }

    static short LDDecode(int i, int i2, int i3, int i4) {
        return (short) (((((m97g(i) + m97g(i2)) + m97g(i3)) + m97g(i4)) - 98312) >>> 31);
    }

    static int abs(int i) {
        int i2 = i >> 31;
        return (i ^ i2) - i2;
    }

    /* renamed from: f */
    static int m98f(int[] iArr, int i, int i2, int i3) {
        int i4 = (i3 * 2730) >> 25;
        int i5 = i4 - ((12288 - (i3 - (i4 * 12289))) >> 31);
        iArr[i] = (i5 >> 1) + (i5 & 1);
        int i6 = i5 - 1;
        iArr[i2] = (i6 >> 1) + (i6 & 1);
        return abs(i3 - ((iArr[i] * 2) * 12289));
    }

    /* renamed from: g */
    static int m97g(int i) {
        int i2 = (i * 2730) >> 27;
        int i3 = i2 - ((CipherSuite.TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA - (i - (CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA * i2))) >> 31);
        return abs((((i3 >> 1) + (i3 & 1)) * 98312) - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void helpRec(short[] sArr, short[] sArr2, byte[] bArr, byte b) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b;
        byte[] bArr3 = new byte[32];
        ChaCha20.process(bArr, bArr2, bArr3, 0, bArr3.length);
        int[] iArr = new int[8];
        int[] iArr2 = new int[4];
        for (int i = 0; i < 256; i++) {
            byte b2 = bArr3[i >>> 3];
            int i2 = i + 0;
            short s = sArr2[i2];
            int i3 = ((b2 >>> (i & 7)) & 1) * 4;
            int f = m98f(iArr, 0, 4, (s * 8) + i3);
            int i4 = i + 256;
            int f2 = m98f(iArr, 1, 5, (sArr2[i4] * 8) + i3);
            int i5 = i + 512;
            int f3 = m98f(iArr, 2, 6, (sArr2[i5] * 8) + i3);
            int i6 = i + 768;
            int f4 = (24577 - (((f + f2) + f3) + m98f(iArr, 3, 7, i3 + (sArr2[i6] * 8)))) >> 31;
            int i7 = f4 ^ (-1);
            iArr2[0] = (iArr[0] & i7) ^ (f4 & iArr[4]);
            iArr2[1] = (i7 & iArr[1]) ^ (iArr[5] & f4);
            iArr2[2] = (iArr[2] & i7) ^ (iArr[6] & f4);
            iArr2[3] = (iArr[7] & f4) ^ (i7 & iArr[3]);
            sArr[i2] = (short) ((iArr2[0] - iArr2[3]) & 3);
            sArr[i4] = (short) ((iArr2[1] - iArr2[3]) & 3);
            sArr[i5] = (short) ((iArr2[2] - iArr2[3]) & 3);
            sArr[i6] = (short) (((-f4) + (iArr2[3] * 2)) & 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void rec(byte[] bArr, short[] sArr, short[] sArr2) {
        Arrays.fill(bArr, (byte) 0);
        int[] iArr = new int[4];
        for (int i = 0; i < 256; i++) {
            int i2 = i + 0;
            short s = sArr[i2];
            short s2 = sArr2[i2];
            int i3 = i + 768;
            iArr[0] = ((s * 8) + 196624) - (((s2 * 2) + sArr2[i3]) * 12289);
            int i4 = i + 256;
            iArr[1] = ((sArr[i4] * 8) + 196624) - (((sArr2[i4] * 2) + sArr2[i3]) * 12289);
            int i5 = i + 512;
            iArr[2] = ((sArr[i5] * 8) + 196624) - (((sArr2[i5] * 2) + sArr2[i3]) * 12289);
            iArr[3] = ((sArr[i3] * 8) + 196624) - (sArr2[i3] * 12289);
            int i6 = i >>> 3;
            bArr[i6] = (byte) ((LDDecode(iArr[0], iArr[1], iArr[2], iArr[3]) << (i & 7)) | bArr[i6]);
        }
    }
}
