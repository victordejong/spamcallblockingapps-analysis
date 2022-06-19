package org.bouncycastle.crypto.digests;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.millennialmedia.InterstitialAd;
import com.mopub.mobileads.resource.DrawableConstants;
import org.bouncycastle.asn1.x509.DisplayText;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/WhirlpoolDigest.class */
public final class WhirlpoolDigest implements ExtendedDigest {
    private static final int BITCOUNT_ARRAY_SIZE = 32;
    private static final int BYTE_LENGTH = 64;
    private static final int DIGEST_LENGTH_BYTES = 64;
    private static final short[] EIGHT;
    private static final int REDUCTION_POLYNOMIAL = 285;
    private static final int ROUNDS = 10;

    /* renamed from: _K */
    private long[] f7424_K;

    /* renamed from: _L */
    private long[] f7425_L;
    private short[] _bitCount;
    private long[] _block;
    private byte[] _buffer;
    private int _bufferPos;
    private long[] _hash;
    private final long[] _rc;
    private long[] _state;
    private static final int[] SBOX = {24, 35, 198, 232, 135, 184, 1, 79, 54, 166, 210, 245, 121, 111, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 82, 96, 188, 155, CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 163, 12, 123, 53, 29, 224, 215, 194, 46, 75, 254, 87, 21, 119, 55, 229, 159, HighLevelEncoder.LATCH_TO_EDIFACT, 74, 218, 88, InterstitialAd.InterstitialErrorStatus.EXPIRED, 41, 10, 177, 160, 107, 133, 189, 93, 16, 244, InterstitialAd.InterstitialErrorStatus.ALREADY_LOADED, 62, 5, 103, 228, 39, 65, CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 167, 125, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, 216, 251, HighLevelEncoder.LATCH_TO_ANSIX12, 124, 102, 221, 23, 71, 158, InterstitialAd.InterstitialErrorStatus.NOT_LOADED, 45, 191, 7, 173, 90, 131, 51, 99, 2, 170, 113, DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, 25, 73, 217, 242, 227, 91, 136, 154, 38, 50, 176, 233, 15, 213, 128, 190, 205, 52, 72, 255, 122, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA, 95, 32, 104, 26, 174, 180, 84, CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 61, 151, 0, 207, 43, 118, 130, 214, 27, 181, 175, 106, 80, 69, 243, 48, HighLevelEncoder.LATCH_TO_TEXT, 63, 85, 162, 234, 101, 186, 47, 192, 222, 28, 253, 77, CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA, 117, 6, CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 178, HighLevelEncoder.LATCH_TO_C40, 14, 31, 98, 212, 168, DrawableConstants.CtaButton.WIDTH_DIPS, 249, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA, 209, 165, 226, 97, 179, 33, 156, 30, 67, 199, 252, 4, 81, 153, 109, 13, 250, 223, 126, 36, 59, 171, 206, 17, CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 78, 183, HighLevelEncoder.UPPER_SHIFT, 60, 129, CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 247, 185, 19, 44, 211, HighLevelEncoder.LATCH_TO_BASE256, 110, 196, 3, 86, 68, 127, 169, 42, 187, 193, 83, 220, 11, 157, 108, 49, 116, 246, 70, 172, 137, 20, 225, 22, 58, 105, 9, 112, 182, 208, 237, 204, 66, 152, 164, 40, 92, 248, 134};

    /* renamed from: C0 */
    private static final long[] f7416C0 = new long[256];

    /* renamed from: C1 */
    private static final long[] f7417C1 = new long[256];

    /* renamed from: C2 */
    private static final long[] f7418C2 = new long[256];

    /* renamed from: C3 */
    private static final long[] f7419C3 = new long[256];

    /* renamed from: C4 */
    private static final long[] f7420C4 = new long[256];

    /* renamed from: C5 */
    private static final long[] f7421C5 = new long[256];

    /* renamed from: C6 */
    private static final long[] f7422C6 = new long[256];

    /* renamed from: C7 */
    private static final long[] f7423C7 = new long[256];

    static {
        short[] sArr = new short[32];
        EIGHT = sArr;
        sArr[31] = (short) 8;
    }

    public WhirlpoolDigest() {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this.f7424_K = new long[8];
        this.f7425_L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        for (int i = 0; i < 256; i++) {
            int i2 = SBOX[i];
            int maskWithReductionPolynomial = maskWithReductionPolynomial(i2 << 1);
            int maskWithReductionPolynomial2 = maskWithReductionPolynomial(maskWithReductionPolynomial << 1);
            int i3 = maskWithReductionPolynomial2 ^ i2;
            int maskWithReductionPolynomial3 = maskWithReductionPolynomial(maskWithReductionPolynomial2 << 1);
            int i4 = maskWithReductionPolynomial3 ^ i2;
            f7416C0[i] = packIntoLong(i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4);
            f7417C1[i] = packIntoLong(i4, i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial);
            f7418C2[i] = packIntoLong(maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3);
            f7419C3[i] = packIntoLong(i3, maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3);
            f7420C4[i] = packIntoLong(maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2, i2);
            f7421C5[i] = packIntoLong(i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2);
            f7422C6[i] = packIntoLong(maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2, i2);
            f7423C7[i] = packIntoLong(i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2);
        }
        this._rc[0] = 0;
        for (int i5 = 1; i5 <= 10; i5++) {
            int i6 = (i5 - 1) * 8;
            this._rc[i5] = (((((((f7416C0[i6] & (-72057594037927936L)) ^ (f7417C1[i6 + 1] & 71776119061217280L)) ^ (f7418C2[i6 + 2] & 280375465082880L)) ^ (f7419C3[i6 + 3] & 1095216660480L)) ^ (f7420C4[i6 + 4] & 4278190080L)) ^ (f7421C5[i6 + 5] & 16711680)) ^ (f7422C6[i6 + 6] & 65280)) ^ (f7423C7[i6 + 7] & 255);
        }
    }

    public WhirlpoolDigest(WhirlpoolDigest whirlpoolDigest) {
        long[] jArr = new long[11];
        this._rc = jArr;
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this.f7424_K = new long[8];
        this.f7425_L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        System.arraycopy(whirlpoolDigest._rc, 0, jArr, 0, jArr.length);
        byte[] bArr = whirlpoolDigest._buffer;
        byte[] bArr2 = this._buffer;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this._bufferPos = whirlpoolDigest._bufferPos;
        short[] sArr = whirlpoolDigest._bitCount;
        short[] sArr2 = this._bitCount;
        System.arraycopy(sArr, 0, sArr2, 0, sArr2.length);
        long[] jArr2 = whirlpoolDigest._hash;
        long[] jArr3 = this._hash;
        System.arraycopy(jArr2, 0, jArr3, 0, jArr3.length);
        long[] jArr4 = whirlpoolDigest.f7424_K;
        long[] jArr5 = this.f7424_K;
        System.arraycopy(jArr4, 0, jArr5, 0, jArr5.length);
        long[] jArr6 = whirlpoolDigest.f7425_L;
        long[] jArr7 = this.f7425_L;
        System.arraycopy(jArr6, 0, jArr7, 0, jArr7.length);
        long[] jArr8 = whirlpoolDigest._block;
        long[] jArr9 = this._block;
        System.arraycopy(jArr8, 0, jArr9, 0, jArr9.length);
        long[] jArr10 = whirlpoolDigest._state;
        long[] jArr11 = this._state;
        System.arraycopy(jArr10, 0, jArr11, 0, jArr11.length);
    }

    private long bytesToLongFromBuffer(byte[] bArr, int i) {
        return (bArr[i + 7] & 255) | ((bArr[i + 0] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    private void convertLongToByteArray(long j, byte[] bArr, int i) {
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i + i2] = (byte) ((j >> (56 - (i2 * 8))) & 255);
        }
    }

    private byte[] copyBitLength() {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 32; i++) {
            bArr[i] = (byte) (this._bitCount[i] & 255);
        }
        return bArr;
    }

    private void finish() {
        byte[] copyBitLength = copyBitLength();
        byte[] bArr = this._buffer;
        int i = this._bufferPos;
        int i2 = i + 1;
        this._bufferPos = i2;
        bArr[i] = (byte) (bArr[i] | 128);
        if (i2 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        if (this._bufferPos > 32) {
            while (this._bufferPos != 0) {
                update((byte) 0);
            }
        }
        while (this._bufferPos <= 32) {
            update((byte) 0);
        }
        System.arraycopy(copyBitLength, 0, this._buffer, 32, copyBitLength.length);
        processFilledBuffer(this._buffer, 0);
    }

    private void increment() {
        int i;
        int i2 = 0;
        for (int length = this._bitCount.length - 1; length >= 0; length--) {
            short[] sArr = this._bitCount;
            i2 = (((sArr[length] & 255) + EIGHT[length]) + i2) >>> 8;
            sArr[length] = (short) (i & 255);
        }
    }

    private int maskWithReductionPolynomial(int i) {
        int i2 = i;
        if (i >= 256) {
            i2 = i ^ REDUCTION_POLYNOMIAL;
        }
        return i2;
    }

    private long packIntoLong(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return (((((((i2 << 48) ^ (i << 56)) ^ (i3 << 40)) ^ (i4 << 32)) ^ (i5 << 24)) ^ (i6 << 16)) ^ (i7 << 8)) ^ i8;
    }

    private void processFilledBuffer(byte[] bArr, int i) {
        for (int i2 = 0; i2 < this._state.length; i2++) {
            this._block[i2] = bytesToLongFromBuffer(this._buffer, i2 * 8);
        }
        processBlock();
        this._bufferPos = 0;
        Arrays.fill(this._buffer, (byte) 0);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        for (int i2 = 0; i2 < 8; i2++) {
            convertLongToByteArray(this._hash[i2], bArr, (i2 * 8) + i);
        }
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Whirlpool";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    public void processBlock() {
        long[] jArr;
        for (int i = 0; i < 8; i++) {
            long[] jArr2 = this._state;
            long j = this._block[i];
            long[] jArr3 = this.f7424_K;
            long j2 = this._hash[i];
            jArr3[i] = j2;
            jArr2[i] = j ^ j2;
        }
        for (int i2 = 1; i2 <= 10; i2++) {
            for (int i3 = 0; i3 < 8; i3++) {
                long[] jArr4 = this.f7425_L;
                jArr4[i3] = 0;
                long j3 = jArr4[i3];
                long[] jArr5 = f7416C0;
                long[] jArr6 = this.f7424_K;
                jArr4[i3] = jArr5[((int) (jArr6[(i3 + 0) & 7] >>> 56)) & 255] ^ j3;
                jArr4[i3] = jArr4[i3] ^ f7417C1[((int) (jArr6[(i3 - 1) & 7] >>> 48)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7418C2[((int) (jArr6[(i3 - 2) & 7] >>> 40)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7419C3[((int) (jArr6[(i3 - 3) & 7] >>> 32)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7420C4[((int) (jArr6[(i3 - 4) & 7] >>> 24)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7421C5[((int) (jArr6[(i3 - 5) & 7] >>> 16)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7422C6[((int) (jArr6[(i3 - 6) & 7] >>> 8)) & 255];
                jArr4[i3] = jArr4[i3] ^ f7423C7[((int) jArr6[(i3 - 7) & 7]) & 255];
            }
            long[] jArr7 = this.f7425_L;
            long[] jArr8 = this.f7424_K;
            System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
            long[] jArr9 = this.f7424_K;
            jArr9[0] = jArr9[0] ^ this._rc[i2];
            int i4 = 0;
            while (true) {
                jArr = this.f7425_L;
                if (i4 < 8) {
                    jArr[i4] = this.f7424_K[i4];
                    long j4 = jArr[i4];
                    long[] jArr10 = f7416C0;
                    long[] jArr11 = this._state;
                    jArr[i4] = j4 ^ jArr10[((int) (jArr11[(i4 + 0) & 7] >>> 56)) & 255];
                    jArr[i4] = jArr[i4] ^ f7417C1[((int) (jArr11[(i4 - 1) & 7] >>> 48)) & 255];
                    jArr[i4] = jArr[i4] ^ f7418C2[((int) (jArr11[(i4 - 2) & 7] >>> 40)) & 255];
                    jArr[i4] = jArr[i4] ^ f7419C3[((int) (jArr11[(i4 - 3) & 7] >>> 32)) & 255];
                    jArr[i4] = jArr[i4] ^ f7420C4[((int) (jArr11[(i4 - 4) & 7] >>> 24)) & 255];
                    jArr[i4] = jArr[i4] ^ f7421C5[((int) (jArr11[(i4 - 5) & 7] >>> 16)) & 255];
                    jArr[i4] = jArr[i4] ^ f7422C6[((int) (jArr11[(i4 - 6) & 7] >>> 8)) & 255];
                    jArr[i4] = jArr[i4] ^ f7423C7[((int) jArr11[(i4 - 7) & 7]) & 255];
                    i4++;
                }
            }
            long[] jArr12 = this._state;
            System.arraycopy(jArr, 0, jArr12, 0, jArr12.length);
        }
        for (int i5 = 0; i5 < 8; i5++) {
            long[] jArr13 = this._hash;
            jArr13[i5] = jArr13[i5] ^ (this._state[i5] ^ this._block[i5]);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this._bufferPos = 0;
        Arrays.fill(this._bitCount, (short) 0);
        Arrays.fill(this._buffer, (byte) 0);
        Arrays.fill(this._hash, 0L);
        Arrays.fill(this.f7424_K, 0L);
        Arrays.fill(this.f7425_L, 0L);
        Arrays.fill(this._block, 0L);
        Arrays.fill(this._state, 0L);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this._buffer;
        int i = this._bufferPos;
        bArr[i] = b;
        int i2 = i + 1;
        this._bufferPos = i2;
        if (i2 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        increment();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
    }
}
