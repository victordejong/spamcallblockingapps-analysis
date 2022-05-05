package org.spongycastle.crypto.digests;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import com.github.rahatarmanahmed.cpv.BuildConfig;
import com.privacystar.core.util.pdus.PduHeaders;
import com.zendesk.service.HttpConstants;
import kotlin.text.Typography;
import org.mozilla.classfile.ByteCode;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.math.Primes;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Memoable;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/WhirlpoolDigest.class */
public final class WhirlpoolDigest implements ExtendedDigest, Memoable {
    private static final int BITCOUNT_ARRAY_SIZE = 32;
    private static final int BYTE_LENGTH = 64;
    private static final int DIGEST_LENGTH_BYTES = 64;
    private static final int REDUCTION_POLYNOMIAL = 285;
    private static final int ROUNDS = 10;

    /* renamed from: _K */
    private long[] f1175_K;

    /* renamed from: _L */
    private long[] f1176_L;
    private short[] _bitCount;
    private long[] _block;
    private byte[] _buffer;
    private int _bufferPos;
    private long[] _hash;
    private final long[] _rc;
    private long[] _state;
    private static final int[] SBOX = {24, 35, ByteCode.IFNULL, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_FORWARDING_DENIED, 135, 184, 1, 79, 54, 166, 210, 245, 121, 111, 145, 82, 96, 188, 155, 142, 163, 12, 123, 53, 29, 224, Typography.times, 194, 46, 75, 254, 87, 21, 119, 55, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_CONTENT_NOT_ACCEPTED, 159, 240, 74, 218, 88, 201, 41, 10, 177, 160, 107, 133, 189, 93, 16, 244, HttpConstants.HTTP_NOT_AUTHORITATIVE, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, 216, 251, 238, 124, 102, 221, 23, 71, 158, 202, 45, 191, 7, 173, 90, 131, 51, 99, 2, 170, 113, 200, 25, 73, 217, 242, 227, 91, 136, 154, 38, 50, 176, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_NOT_SUPPORTED, 15, 213, 128, 190, HttpConstants.HTTP_RESET, 52, 72, 255, 122, 144, 95, 32, 104, 26, 174, 180, 84, 147, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, 141, 61, 151, 0, 207, 43, 118, 130, 214, 27, 181, 175, 106, 80, 69, 243, 48, 239, 63, 85, 162, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_ADDRESS_HIDING_NOT_SUPPORTED, 101, 186, 47, 192, 222, 28, 253, 77, 146, 117, 6, 138, 178, 230, 14, 31, 98, 212, 168, 150, 249, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, BuildConfig.VERSION_CODE, 165, 226, 97, 179, 33, 156, 30, 67, ByteCode.IFNONNULL, 252, 4, 81, 153, 109, 13, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 223, 126, 36, 59, 171, HttpConstants.HTTP_PARTIAL, 17, 143, 78, 183, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_LACK_OF_PREPAID, 60, 129, 148, 247, 185, 19, 44, Primes.SMALL_FACTOR_LIMIT, 231, 110, 196, 3, 86, 68, 127, 169, 42, 187, 193, 83, 220, 11, 157, 108, 49, 116, 246, 70, 172, 137, 20, 225, 22, 58, 105, 9, 112, 182, 208, 237, HttpConstants.HTTP_NO_CONTENT, 66, 152, 164, 40, 92, 248, 134};

    /* renamed from: C0 */
    private static final long[] f1167C0 = new long[256];

    /* renamed from: C1 */
    private static final long[] f1168C1 = new long[256];

    /* renamed from: C2 */
    private static final long[] f1169C2 = new long[256];

    /* renamed from: C3 */
    private static final long[] f1170C3 = new long[256];

    /* renamed from: C4 */
    private static final long[] f1171C4 = new long[256];

    /* renamed from: C5 */
    private static final long[] f1172C5 = new long[256];

    /* renamed from: C6 */
    private static final long[] f1173C6 = new long[256];

    /* renamed from: C7 */
    private static final long[] f1174C7 = new long[256];
    private static final short[] EIGHT = new short[32];

    static {
        EIGHT[31] = (short) 8;
    }

    public WhirlpoolDigest() {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this.f1175_K = new long[8];
        this.f1176_L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        for (int i = 0; i < 256; i++) {
            int i2 = SBOX[i];
            int maskWithReductionPolynomial = maskWithReductionPolynomial(i2 << 1);
            int maskWithReductionPolynomial2 = maskWithReductionPolynomial(maskWithReductionPolynomial << 1);
            int i3 = maskWithReductionPolynomial2 ^ i2;
            int maskWithReductionPolynomial3 = maskWithReductionPolynomial(maskWithReductionPolynomial2 << 1);
            int i4 = maskWithReductionPolynomial3 ^ i2;
            f1167C0[i] = packIntoLong(i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4);
            f1168C1[i] = packIntoLong(i4, i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial);
            f1169C2[i] = packIntoLong(maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3);
            f1170C3[i] = packIntoLong(i3, maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3);
            f1171C4[i] = packIntoLong(maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2, i2);
            f1172C5[i] = packIntoLong(i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2, i2, maskWithReductionPolynomial2);
            f1173C6[i] = packIntoLong(maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2, i2);
            f1174C7[i] = packIntoLong(i2, maskWithReductionPolynomial2, i2, maskWithReductionPolynomial3, i3, maskWithReductionPolynomial, i4, i2);
        }
        this._rc[0] = 0;
        for (int i5 = 1; i5 <= 10; i5++) {
            int i6 = (i5 - 1) * 8;
            this._rc[i5] = (((((((f1167C0[i6] & (-72057594037927936L)) ^ (f1168C1[i6 + 1] & 71776119061217280L)) ^ (f1169C2[i6 + 2] & 280375465082880L)) ^ (f1170C3[i6 + 3] & 1095216660480L)) ^ (f1171C4[i6 + 4] & 4278190080L)) ^ (f1172C5[i6 + 5] & 16711680)) ^ (f1173C6[i6 + 6] & 65280)) ^ (f1174C7[i6 + 7] & 255);
        }
    }

    public WhirlpoolDigest(WhirlpoolDigest whirlpoolDigest) {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this.f1175_K = new long[8];
        this.f1176_L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        reset(whirlpoolDigest);
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
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (this._bitCount[i] & 255);
        }
        return bArr;
    }

    private void finish() {
        byte[] copyBitLength = copyBitLength();
        byte[] bArr = this._buffer;
        int i = this._bufferPos;
        this._bufferPos = i + 1;
        bArr[i] = (byte) (bArr[i] | 128);
        if (this._bufferPos == this._buffer.length) {
            processFilledBuffer(this._buffer, 0);
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
            i2 = (((this._bitCount[length] & 255) + EIGHT[length]) + i2) >>> 8;
            this._bitCount[length] = (short) (i & 255);
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

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new WhirlpoolDigest(this);
    }

    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        for (int i2 = 0; i2 < 8; i2++) {
            convertLongToByteArray(this._hash[i2], bArr, (i2 * 8) + i);
        }
        reset();
        return getDigestSize();
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Whirlpool";
    }

    @Override // org.spongycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    protected void processBlock() {
        for (int i = 0; i < 8; i++) {
            long[] jArr = this._state;
            long j = this._block[i];
            long[] jArr2 = this.f1175_K;
            long j2 = this._hash[i];
            jArr2[i] = j2;
            jArr[i] = j ^ j2;
        }
        for (int i2 = 1; i2 <= 10; i2++) {
            for (int i3 = 0; i3 < 8; i3++) {
                this.f1176_L[i3] = 0;
                long[] jArr3 = this.f1176_L;
                jArr3[i3] = f1167C0[((int) (this.f1175_K[(i3 + 0) & 7] >>> 56)) & 255] ^ jArr3[i3];
                long[] jArr4 = this.f1176_L;
                jArr4[i3] = jArr4[i3] ^ f1168C1[((int) (this.f1175_K[(i3 - 1) & 7] >>> 48)) & 255];
                long[] jArr5 = this.f1176_L;
                jArr5[i3] = jArr5[i3] ^ f1169C2[((int) (this.f1175_K[(i3 - 2) & 7] >>> 40)) & 255];
                long[] jArr6 = this.f1176_L;
                jArr6[i3] = jArr6[i3] ^ f1170C3[((int) (this.f1175_K[(i3 - 3) & 7] >>> 32)) & 255];
                long[] jArr7 = this.f1176_L;
                jArr7[i3] = jArr7[i3] ^ f1171C4[((int) (this.f1175_K[(i3 - 4) & 7] >>> 24)) & 255];
                long[] jArr8 = this.f1176_L;
                jArr8[i3] = jArr8[i3] ^ f1172C5[((int) (this.f1175_K[(i3 - 5) & 7] >>> 16)) & 255];
                long[] jArr9 = this.f1176_L;
                jArr9[i3] = jArr9[i3] ^ f1173C6[((int) (this.f1175_K[(i3 - 6) & 7] >>> 8)) & 255];
                long[] jArr10 = this.f1176_L;
                jArr10[i3] = jArr10[i3] ^ f1174C7[((int) this.f1175_K[(i3 - 7) & 7]) & 255];
            }
            System.arraycopy(this.f1176_L, 0, this.f1175_K, 0, this.f1175_K.length);
            long[] jArr11 = this.f1175_K;
            jArr11[0] = jArr11[0] ^ this._rc[i2];
            for (int i4 = 0; i4 < 8; i4++) {
                this.f1176_L[i4] = this.f1175_K[i4];
                long[] jArr12 = this.f1176_L;
                jArr12[i4] = jArr12[i4] ^ f1167C0[((int) (this._state[(i4 + 0) & 7] >>> 56)) & 255];
                long[] jArr13 = this.f1176_L;
                jArr13[i4] = jArr13[i4] ^ f1168C1[((int) (this._state[(i4 - 1) & 7] >>> 48)) & 255];
                long[] jArr14 = this.f1176_L;
                jArr14[i4] = jArr14[i4] ^ f1169C2[((int) (this._state[(i4 - 2) & 7] >>> 40)) & 255];
                long[] jArr15 = this.f1176_L;
                jArr15[i4] = jArr15[i4] ^ f1170C3[((int) (this._state[(i4 - 3) & 7] >>> 32)) & 255];
                long[] jArr16 = this.f1176_L;
                jArr16[i4] = jArr16[i4] ^ f1171C4[((int) (this._state[(i4 - 4) & 7] >>> 24)) & 255];
                long[] jArr17 = this.f1176_L;
                jArr17[i4] = jArr17[i4] ^ f1172C5[((int) (this._state[(i4 - 5) & 7] >>> 16)) & 255];
                long[] jArr18 = this.f1176_L;
                jArr18[i4] = jArr18[i4] ^ f1173C6[((int) (this._state[(i4 - 6) & 7] >>> 8)) & 255];
                long[] jArr19 = this.f1176_L;
                jArr19[i4] = jArr19[i4] ^ f1174C7[((int) this._state[(i4 - 7) & 7]) & 255];
            }
            System.arraycopy(this.f1176_L, 0, this._state, 0, this._state.length);
        }
        for (int i5 = 0; i5 < 8; i5++) {
            long[] jArr20 = this._hash;
            jArr20[i5] = jArr20[i5] ^ (this._state[i5] ^ this._block[i5]);
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public void reset() {
        this._bufferPos = 0;
        Arrays.fill(this._bitCount, (short) 0);
        Arrays.fill(this._buffer, (byte) 0);
        Arrays.fill(this._hash, 0L);
        Arrays.fill(this.f1175_K, 0L);
        Arrays.fill(this.f1176_L, 0L);
        Arrays.fill(this._block, 0L);
        Arrays.fill(this._state, 0L);
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        WhirlpoolDigest whirlpoolDigest = (WhirlpoolDigest) memoable;
        System.arraycopy(whirlpoolDigest._rc, 0, this._rc, 0, this._rc.length);
        System.arraycopy(whirlpoolDigest._buffer, 0, this._buffer, 0, this._buffer.length);
        this._bufferPos = whirlpoolDigest._bufferPos;
        System.arraycopy(whirlpoolDigest._bitCount, 0, this._bitCount, 0, this._bitCount.length);
        System.arraycopy(whirlpoolDigest._hash, 0, this._hash, 0, this._hash.length);
        System.arraycopy(whirlpoolDigest.f1175_K, 0, this.f1175_K, 0, this.f1175_K.length);
        System.arraycopy(whirlpoolDigest.f1176_L, 0, this.f1176_L, 0, this.f1176_L.length);
        System.arraycopy(whirlpoolDigest._block, 0, this._block, 0, this._block.length);
        System.arraycopy(whirlpoolDigest._state, 0, this._state, 0, this._state.length);
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte b) {
        this._buffer[this._bufferPos] = b;
        this._bufferPos++;
        if (this._bufferPos == this._buffer.length) {
            processFilledBuffer(this._buffer, 0);
        }
        increment();
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
    }
}
