package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/KeccakDigest.class */
public class KeccakDigest implements ExtendedDigest {
    protected int bitsInQueue;
    protected byte[] dataQueue;
    protected int fixedOutputLength;
    protected int rate;
    protected boolean squeezing;
    protected long[] state;
    private static long[] KeccakRoundConstants = keccakInitializeRoundConstants();
    private static int[] KeccakRhoOffsets = keccakInitializeRhoOffsets();

    public KeccakDigest() {
        this(288);
    }

    public KeccakDigest(int i) {
        this.state = new long[25];
        this.dataQueue = new byte[192];
        init(i);
    }

    public KeccakDigest(KeccakDigest keccakDigest) {
        this.state = new long[25];
        this.dataQueue = new byte[192];
        System.arraycopy(keccakDigest.state, 0, this.state, 0, keccakDigest.state.length);
        System.arraycopy(keccakDigest.dataQueue, 0, this.dataQueue, 0, keccakDigest.dataQueue.length);
        this.rate = keccakDigest.rate;
        this.bitsInQueue = keccakDigest.bitsInQueue;
        this.fixedOutputLength = keccakDigest.fixedOutputLength;
        this.squeezing = keccakDigest.squeezing;
    }

    private void KeccakAbsorb(byte[] bArr, int i) {
        int i2 = this.rate;
        int i3 = i;
        for (int i4 = 0; i4 < (i2 >> 6); i4++) {
            long[] jArr = this.state;
            jArr[i4] = jArr[i4] ^ Pack.littleEndianToLong(bArr, i3);
            i3 += 8;
        }
        KeccakPermutation();
    }

    private void KeccakExtract() {
        Pack.longToLittleEndian(this.state, 0, this.rate >> 6, this.dataQueue, 0);
    }

    private void KeccakPermutation() {
        for (int i = 0; i < 24; i++) {
            theta(this.state);
            rho(this.state);
            m185pi(this.state);
            chi(this.state);
            iota(this.state, i);
        }
    }

    private static boolean LFSR86540(byte[] bArr) {
        boolean z = (bArr[0] & 1) != 0;
        if ((bArr[0] & 128) != 0) {
            bArr[0] = (byte) ((bArr[0] << 1) ^ 113);
        } else {
            bArr[0] = (byte) (bArr[0] << 1);
        }
        return z;
    }

    private static void chi(long[] jArr) {
        for (int i = 0; i < 25; i += 5) {
            int i2 = i + 0;
            long j = jArr[i2];
            int i3 = i + 1;
            long j2 = jArr[i3];
            int i4 = i + 2;
            long j3 = jArr[i4];
            long j4 = jArr[i3];
            long j5 = jArr[i4];
            int i5 = i + 3;
            long j6 = jArr[i5];
            long j7 = jArr[i4];
            long j8 = jArr[i5];
            int i6 = i + 4;
            long j9 = jArr[i6];
            long j10 = jArr[i5];
            long j11 = jArr[i6];
            long j12 = jArr[i2];
            long j13 = jArr[i6];
            long j14 = jArr[i2];
            long j15 = jArr[i3];
            jArr[i2] = j ^ ((j2 ^ (-1)) & j3);
            jArr[i3] = j4 ^ ((j5 ^ (-1)) & j6);
            jArr[i4] = j7 ^ ((j8 ^ (-1)) & j9);
            jArr[i5] = ((j11 ^ (-1)) & j12) ^ j10;
            jArr[i6] = j13 ^ ((j14 ^ (-1)) & j15);
        }
    }

    private void init(int i) {
        if (i == 128 || i == 224 || i == 256 || i == 288 || i == 384 || i == 512) {
            initSponge(1600 - (i << 1));
            return;
        }
        throw new IllegalArgumentException("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
    }

    private void initSponge(int i) {
        if (i <= 0 || i >= 1600 || i % 64 != 0) {
            throw new IllegalStateException("invalid rate value");
        }
        this.rate = i;
        for (int i2 = 0; i2 < this.state.length; i2++) {
            this.state[i2] = 0;
        }
        Arrays.fill(this.dataQueue, (byte) 0);
        this.bitsInQueue = 0;
        this.squeezing = false;
        this.fixedOutputLength = (1600 - i) / 2;
    }

    private static void iota(long[] jArr, int i) {
        jArr[0] = jArr[0] ^ KeccakRoundConstants[i];
    }

    private static int[] keccakInitializeRhoOffsets() {
        int[] iArr = new int[25];
        int i = 0;
        iArr[0] = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < 24) {
            int i4 = i + 1;
            iArr[(i2 % 5) + ((i3 % 5) * 5)] = (((i + 2) * i4) / 2) % 64;
            i3 = ((i2 * 2) + (i3 * 3)) % 5;
            i2 = ((i2 * 0) + (i3 * 1)) % 5;
            i = i4;
        }
        return iArr;
    }

    private static long[] keccakInitializeRoundConstants() {
        long[] jArr = new long[24];
        for (int i = 0; i < 24; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 7; i2++) {
                if (LFSR86540(new byte[]{1})) {
                    jArr[i] = jArr[i] ^ (1 << ((1 << i2) - 1));
                }
            }
        }
        return jArr;
    }

    private static long leftRotate(long j, int i) {
        return (j >>> (-i)) | (j << i);
    }

    private void padAndSwitchToSqueezingPhase() {
        byte[] bArr = this.dataQueue;
        int i = this.bitsInQueue >> 3;
        bArr[i] = (byte) (bArr[i] | ((byte) (1 << (this.bitsInQueue & 7))));
        int i2 = this.bitsInQueue + 1;
        this.bitsInQueue = i2;
        if (i2 == this.rate) {
            KeccakAbsorb(this.dataQueue, 0);
            this.bitsInQueue = 0;
        }
        int i3 = this.bitsInQueue >> 6;
        int i4 = this.bitsInQueue & 63;
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            long[] jArr = this.state;
            jArr[i6] = jArr[i6] ^ Pack.littleEndianToLong(this.dataQueue, i5);
            i5 += 8;
        }
        if (i4 > 0) {
            long[] jArr2 = this.state;
            jArr2[i3] = (((1 << i4) - 1) & Pack.littleEndianToLong(this.dataQueue, i5)) ^ jArr2[i3];
        }
        long[] jArr3 = this.state;
        int i7 = (this.rate - 1) >> 6;
        jArr3[i7] = jArr3[i7] ^ Long.MIN_VALUE;
        KeccakPermutation();
        KeccakExtract();
        this.bitsInQueue = this.rate;
        this.squeezing = true;
    }

    /* renamed from: pi */
    private static void m185pi(long[] jArr) {
        long j = jArr[1];
        jArr[1] = jArr[6];
        jArr[6] = jArr[9];
        jArr[9] = jArr[22];
        jArr[22] = jArr[14];
        jArr[14] = jArr[20];
        jArr[20] = jArr[2];
        jArr[2] = jArr[12];
        jArr[12] = jArr[13];
        jArr[13] = jArr[19];
        jArr[19] = jArr[23];
        jArr[23] = jArr[15];
        jArr[15] = jArr[4];
        jArr[4] = jArr[24];
        jArr[24] = jArr[21];
        jArr[21] = jArr[8];
        jArr[8] = jArr[16];
        jArr[16] = jArr[5];
        jArr[5] = jArr[3];
        jArr[3] = jArr[18];
        jArr[18] = jArr[17];
        jArr[17] = jArr[11];
        jArr[11] = jArr[7];
        jArr[7] = jArr[10];
        jArr[10] = j;
    }

    private static void rho(long[] jArr) {
        for (int i = 1; i < 25; i++) {
            jArr[i] = leftRotate(jArr[i], KeccakRhoOffsets[i]);
        }
    }

    private static void theta(long[] jArr) {
        long j = (((jArr[0] ^ jArr[5]) ^ jArr[10]) ^ jArr[15]) ^ jArr[20];
        long j2 = (((jArr[1] ^ jArr[6]) ^ jArr[11]) ^ jArr[16]) ^ jArr[21];
        long j3 = (((jArr[2] ^ jArr[7]) ^ jArr[12]) ^ jArr[17]) ^ jArr[22];
        long j4 = (((jArr[3] ^ jArr[8]) ^ jArr[13]) ^ jArr[18]) ^ jArr[23];
        long j5 = (((jArr[4] ^ jArr[9]) ^ jArr[14]) ^ jArr[19]) ^ jArr[24];
        long leftRotate = leftRotate(j2, 1) ^ j5;
        jArr[0] = jArr[0] ^ leftRotate;
        jArr[5] = jArr[5] ^ leftRotate;
        jArr[10] = jArr[10] ^ leftRotate;
        jArr[15] = jArr[15] ^ leftRotate;
        jArr[20] = jArr[20] ^ leftRotate;
        long leftRotate2 = leftRotate(j3, 1) ^ j;
        jArr[1] = jArr[1] ^ leftRotate2;
        jArr[6] = jArr[6] ^ leftRotate2;
        jArr[11] = jArr[11] ^ leftRotate2;
        jArr[16] = jArr[16] ^ leftRotate2;
        jArr[21] = leftRotate2 ^ jArr[21];
        long leftRotate3 = leftRotate(j4, 1) ^ j2;
        jArr[2] = jArr[2] ^ leftRotate3;
        jArr[7] = jArr[7] ^ leftRotate3;
        jArr[12] = jArr[12] ^ leftRotate3;
        jArr[17] = jArr[17] ^ leftRotate3;
        jArr[22] = leftRotate3 ^ jArr[22];
        long leftRotate4 = leftRotate(j5, 1) ^ j3;
        jArr[3] = jArr[3] ^ leftRotate4;
        jArr[8] = jArr[8] ^ leftRotate4;
        jArr[13] = jArr[13] ^ leftRotate4;
        jArr[18] = jArr[18] ^ leftRotate4;
        jArr[23] = leftRotate4 ^ jArr[23];
        long leftRotate5 = leftRotate(j, 1) ^ j4;
        jArr[4] = jArr[4] ^ leftRotate5;
        jArr[9] = jArr[9] ^ leftRotate5;
        jArr[14] = jArr[14] ^ leftRotate5;
        jArr[19] = jArr[19] ^ leftRotate5;
        jArr[24] = leftRotate5 ^ jArr[24];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void absorb(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (this.bitsInQueue % 8 != 0) {
            throw new IllegalStateException("attempt to absorb with odd length queue");
        } else if (this.squeezing) {
            throw new IllegalStateException("attempt to absorb while squeezing");
        } else {
            int i5 = this.bitsInQueue;
            int i6 = this.rate >> 3;
            int i7 = i5 >> 3;
            int i8 = 0;
            while (i8 < i2) {
                if (i7 != 0 || i8 > (i3 = i2 - i6)) {
                    int min = Math.min(i6 - i7, i2 - i8);
                    System.arraycopy(bArr, i + i8, this.dataQueue, i7, min);
                    int i9 = i7 + min;
                    int i10 = i8 + min;
                    i8 = i10;
                    i7 = i9;
                    if (i9 == i6) {
                        KeccakAbsorb(this.dataQueue, 0);
                        i7 = 0;
                        i8 = i10;
                    }
                } else {
                    do {
                        KeccakAbsorb(bArr, i + i8);
                        i4 = i8 + i6;
                        i8 = i4;
                    } while (i4 <= i3);
                    i8 = i4;
                }
            }
            this.bitsInQueue = i7 << 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void absorbBits(int i, int i2) {
        if (i2 < 1 || i2 > 7) {
            throw new IllegalArgumentException("'bits' must be in the range 1 to 7");
        } else if (this.bitsInQueue % 8 != 0) {
            throw new IllegalStateException("attempt to absorb with odd length queue");
        } else if (this.squeezing) {
            throw new IllegalStateException("attempt to absorb while squeezing");
        } else {
            this.dataQueue[this.bitsInQueue >> 3] = (byte) (i & ((1 << i2) - 1));
            this.bitsInQueue += i2;
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        squeeze(bArr, i, this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int doFinal(byte[] bArr, int i, byte b, int i2) {
        if (i2 > 0) {
            absorbBits(b, i2);
        }
        squeeze(bArr, i, this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Keccak-" + this.fixedOutputLength;
    }

    @Override // org.spongycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.rate / 8;
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        return this.fixedOutputLength / 8;
    }

    @Override // org.spongycastle.crypto.Digest
    public void reset() {
        init(this.fixedOutputLength);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void squeeze(byte[] bArr, int i, long j) {
        if (!this.squeezing) {
            padAndSwitchToSqueezingPhase();
        }
        long j2 = 0;
        if (j % 8 != 0) {
            throw new IllegalStateException("outputLength not a multiple of 8");
        }
        while (j2 < j) {
            if (this.bitsInQueue == 0) {
                KeccakPermutation();
                KeccakExtract();
                this.bitsInQueue = this.rate;
            }
            int min = (int) Math.min(this.bitsInQueue, j - j2);
            System.arraycopy(this.dataQueue, (this.rate - this.bitsInQueue) / 8, bArr, ((int) (j2 / 8)) + i, min / 8);
            this.bitsInQueue -= min;
            j2 += min;
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte b) {
        absorb(new byte[]{b}, 0, 1);
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        absorb(bArr, i, i2);
    }
}
