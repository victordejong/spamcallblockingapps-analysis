package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/SM4Engine.class */
public class SM4Engine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;

    /* renamed from: X */
    private final int[] f1271X = new int[4];

    /* renamed from: rk */
    private int[] f1272rk;
    private static final byte[] Sbox = {-42, -112, -23, -2, -52, -31, 61, -73, 22, -74, 20, -62, 40, -5, 44, 5, 43, 103, -102, 118, 42, -66, 4, -61, -86, 68, 19, 38, 73, -122, 6, -103, -100, 66, 80, -12, -111, -17, -104, 122, 51, 84, 11, 67, -19, -49, -84, 98, -28, -77, 28, -87, -55, 8, -24, -107, Byte.MIN_VALUE, -33, -108, -6, 117, -113, 63, -90, 71, 7, -89, -4, -13, 115, 23, -70, -125, 89, 60, 25, -26, -123, 79, -88, 104, 107, -127, -78, 113, 100, -38, -117, -8, -21, 15, 75, 112, 86, -99, 53, 30, 36, 14, 94, 99, 88, -47, -94, 37, 34, 124, 59, 1, 33, 120, -121, -44, 0, 70, 87, -97, -45, 39, 82, 76, 54, 2, -25, -96, -60, -56, -98, -22, -65, -118, -46, 64, -57, 56, -75, -93, -9, -14, -50, -7, 97, 21, -95, -32, -82, 93, -92, -101, 52, 26, 85, -83, -109, 50, 48, -11, -116, -79, -29, 29, -10, -30, 46, -126, 102, -54, 96, -64, 41, 35, -85, 13, 83, 78, 111, -43, -37, 55, 69, -34, -3, -114, 47, 3, -1, 106, 114, 109, 108, 91, 81, -115, 27, -81, -110, -69, -35, -68, Byte.MAX_VALUE, 17, -39, 92, 65, 31, 16, 90, -40, 10, -63, 49, -120, -91, -51, 123, -67, 45, 116, -48, 18, -72, -27, -76, -80, -119, 105, -105, 74, 12, -106, 119, 126, 101, -71, -15, 9, -59, 110, -58, -124, 24, -16, 125, -20, 58, -36, 77, 32, 121, -18, 95, 62, -41, -53, 57, 72};

    /* renamed from: CK */
    private static final int[] f1269CK = {462357, 472066609, 943670861, 1415275113, 1886879365, -1936483679, -1464879427, -993275175, -521670923, -66909679, 404694573, 876298825, 1347903077, 1819507329, -2003855715, -1532251463, -1060647211, -589042959, -117504499, 337322537, 808926789, 1280531041, 1752135293, -2071227751, -1599623499, -1128019247, -656414995, -184876535, 269950501, 741554753, 1213159005, 1684763257};

    /* renamed from: FK */
    private static final int[] f1270FK = {-1548633402, 1453994832, 1736282519, -1301273892};

    /* renamed from: F0 */
    private int m124F0(int[] iArr, int i) {
        return m118T((iArr[3] ^ (iArr[1] ^ iArr[2])) ^ i) ^ iArr[0];
    }

    /* renamed from: F1 */
    private int m123F1(int[] iArr, int i) {
        return m118T((iArr[0] ^ (iArr[2] ^ iArr[3])) ^ i) ^ iArr[1];
    }

    /* renamed from: F2 */
    private int m122F2(int[] iArr, int i) {
        return m118T((iArr[1] ^ (iArr[3] ^ iArr[0])) ^ i) ^ iArr[2];
    }

    /* renamed from: F3 */
    private int m121F3(int[] iArr, int i) {
        return m118T((iArr[2] ^ (iArr[0] ^ iArr[1])) ^ i) ^ iArr[3];
    }

    /* renamed from: L */
    private int m120L(int i) {
        int rotateLeft = rotateLeft(i, 2);
        int rotateLeft2 = rotateLeft(i, 10);
        return rotateLeft(i, 24) ^ (((rotateLeft ^ i) ^ rotateLeft2) ^ rotateLeft(i, 18));
    }

    private int L_ap(int i) {
        return rotateLeft(i, 23) ^ (rotateLeft(i, 13) ^ i);
    }

    /* renamed from: R */
    private void m119R(int[] iArr, int i) {
        int i2 = i + 1;
        int i3 = i + 2;
        int i4 = i + 3;
        iArr[i] = iArr[i] ^ iArr[i4];
        iArr[i4] = iArr[i] ^ iArr[i4];
        iArr[i] = iArr[i4] ^ iArr[i];
        iArr[i2] = iArr[i2] ^ iArr[i3];
        iArr[i3] = iArr[i2] ^ iArr[i3];
        iArr[i2] = iArr[i2] ^ iArr[i3];
    }

    /* renamed from: T */
    private int m118T(int i) {
        return m120L(tau(i));
    }

    private int T_ap(int i) {
        return L_ap(tau(i));
    }

    private int[] expandKey(boolean z, byte[] bArr) {
        int[] iArr = new int[32];
        int[] iArr2 = {Pack.bigEndianToInt(bArr, 0), Pack.bigEndianToInt(bArr, 4), Pack.bigEndianToInt(bArr, 8), Pack.bigEndianToInt(bArr, 12)};
        int[] iArr3 = {iArr2[0] ^ f1270FK[0], iArr2[1] ^ f1270FK[1], iArr2[2] ^ f1270FK[2], iArr2[3] ^ f1270FK[3]};
        if (z) {
            iArr[0] = iArr3[0] ^ T_ap(((iArr3[1] ^ iArr3[2]) ^ iArr3[3]) ^ f1269CK[0]);
            iArr[1] = iArr3[1] ^ T_ap(((iArr3[2] ^ iArr3[3]) ^ iArr[0]) ^ f1269CK[1]);
            iArr[2] = iArr3[2] ^ T_ap(((iArr3[3] ^ iArr[0]) ^ iArr[1]) ^ f1269CK[2]);
            iArr[3] = iArr3[3] ^ T_ap(((iArr[0] ^ iArr[1]) ^ iArr[2]) ^ f1269CK[3]);
            for (int i = 4; i < 32; i++) {
                iArr[i] = iArr[i - 4] ^ T_ap(((iArr[i - 3] ^ iArr[i - 2]) ^ iArr[i - 1]) ^ f1269CK[i]);
            }
        } else {
            iArr[31] = iArr3[0] ^ T_ap(((iArr3[1] ^ iArr3[2]) ^ iArr3[3]) ^ f1269CK[0]);
            iArr[30] = iArr3[1] ^ T_ap(((iArr3[2] ^ iArr3[3]) ^ iArr[31]) ^ f1269CK[1]);
            iArr[29] = iArr3[2] ^ T_ap(((iArr3[3] ^ iArr[31]) ^ iArr[30]) ^ f1269CK[2]);
            iArr[28] = iArr3[3] ^ T_ap(((iArr[30] ^ iArr[31]) ^ iArr[29]) ^ f1269CK[3]);
            for (int i2 = 27; i2 >= 0; i2--) {
                iArr[i2] = iArr[i2 + 4] ^ T_ap(((iArr[i2 + 3] ^ iArr[i2 + 2]) ^ iArr[i2 + 1]) ^ f1269CK[31 - i2]);
            }
        }
        return iArr;
    }

    private int rotateLeft(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    private int tau(int i) {
        return (Sbox[i & 255] & 255) | ((Sbox[(i >> 24) & 255] & 255) << 24) | ((Sbox[(i >> 16) & 255] & 255) << 16) | ((Sbox[(i >> 8) & 255] & 255) << 8);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SM4";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            byte[] key = ((KeyParameter) cipherParameters).getKey();
            if (key.length != 16) {
                throw new IllegalArgumentException("SM4 requires a 128 bit key");
            }
            this.f1272rk = expandKey(z, key);
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to SM4 init - " + cipherParameters.getClass().getName());
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.f1272rk == null) {
            throw new IllegalStateException("SM4 not initialised");
        } else if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            this.f1271X[0] = Pack.bigEndianToInt(bArr, i);
            this.f1271X[1] = Pack.bigEndianToInt(bArr, i + 4);
            this.f1271X[2] = Pack.bigEndianToInt(bArr, i + 8);
            this.f1271X[3] = Pack.bigEndianToInt(bArr, i + 12);
            for (int i3 = 0; i3 < 32; i3 += 4) {
                this.f1271X[0] = m124F0(this.f1271X, this.f1272rk[i3]);
                this.f1271X[1] = m123F1(this.f1271X, this.f1272rk[i3 + 1]);
                this.f1271X[2] = m122F2(this.f1271X, this.f1272rk[i3 + 2]);
                this.f1271X[3] = m121F3(this.f1271X, this.f1272rk[i3 + 3]);
            }
            m119R(this.f1271X, 0);
            Pack.intToBigEndian(this.f1271X[0], bArr2, i2);
            Pack.intToBigEndian(this.f1271X[1], bArr2, i2 + 4);
            Pack.intToBigEndian(this.f1271X[2], bArr2, i2 + 8);
            Pack.intToBigEndian(this.f1271X[3], bArr2, i2 + 12);
            return 16;
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }
}
