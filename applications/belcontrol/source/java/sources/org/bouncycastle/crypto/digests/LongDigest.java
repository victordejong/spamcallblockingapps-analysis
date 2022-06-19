package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/LongDigest.class */
public abstract class LongDigest implements ExtendedDigest {
    private static final int BYTE_LENGTH = 128;

    /* renamed from: K */
    public static final long[] f7323K = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};

    /* renamed from: H1 */
    public long f7324H1;

    /* renamed from: H2 */
    public long f7325H2;

    /* renamed from: H3 */
    public long f7326H3;

    /* renamed from: H4 */
    public long f7327H4;

    /* renamed from: H5 */
    public long f7328H5;

    /* renamed from: H6 */
    public long f7329H6;

    /* renamed from: H7 */
    public long f7330H7;

    /* renamed from: H8 */
    public long f7331H8;

    /* renamed from: W */
    private long[] f7332W;
    private long byteCount1;
    private long byteCount2;
    private int wOff;
    private byte[] xBuf;
    private int xBufOff;

    public LongDigest() {
        this.f7332W = new long[80];
        this.xBuf = new byte[8];
        this.xBufOff = 0;
        reset();
    }

    public LongDigest(LongDigest longDigest) {
        this.f7332W = new long[80];
        byte[] bArr = new byte[longDigest.xBuf.length];
        this.xBuf = bArr;
        byte[] bArr2 = longDigest.xBuf;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        this.xBufOff = longDigest.xBufOff;
        this.byteCount1 = longDigest.byteCount1;
        this.byteCount2 = longDigest.byteCount2;
        this.f7324H1 = longDigest.f7324H1;
        this.f7325H2 = longDigest.f7325H2;
        this.f7326H3 = longDigest.f7326H3;
        this.f7327H4 = longDigest.f7327H4;
        this.f7328H5 = longDigest.f7328H5;
        this.f7329H6 = longDigest.f7329H6;
        this.f7330H7 = longDigest.f7330H7;
        this.f7331H8 = longDigest.f7331H8;
        long[] jArr = longDigest.f7332W;
        System.arraycopy(jArr, 0, this.f7332W, 0, jArr.length);
        this.wOff = longDigest.wOff;
    }

    /* renamed from: Ch */
    private long m1013Ch(long j, long j2, long j3) {
        return ((j ^ (-1)) & j3) ^ (j2 & j);
    }

    private long Maj(long j, long j2, long j3) {
        return ((j & j3) ^ (j & j2)) ^ (j2 & j3);
    }

    private long Sigma0(long j) {
        return (j >>> 7) ^ (((j << 63) | (j >>> 1)) ^ ((j << 56) | (j >>> 8)));
    }

    private long Sigma1(long j) {
        return (j >>> 6) ^ (((j << 45) | (j >>> 19)) ^ ((j << 3) | (j >>> 61)));
    }

    private long Sum0(long j) {
        return ((j >>> 39) | (j << 25)) ^ (((j << 36) | (j >>> 28)) ^ ((j << 30) | (j >>> 34)));
    }

    private long Sum1(long j) {
        return ((j >>> 41) | (j << 23)) ^ (((j << 50) | (j >>> 14)) ^ ((j << 46) | (j >>> 18)));
    }

    private void adjustByteCounts() {
        long j = this.byteCount1;
        if (j > 2305843009213693951L) {
            this.byteCount2 += j >>> 61;
            this.byteCount1 = j & 2305843009213693951L;
        }
    }

    public void finish() {
        adjustByteCounts();
        long j = this.byteCount1;
        long j2 = this.byteCount2;
        byte b = Byte.MIN_VALUE;
        while (true) {
            update(b);
            if (this.xBufOff == 0) {
                processLength(j << 3, j2);
                processBlock();
                return;
            }
            b = 0;
        }
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v129, types: [long] */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v165, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public void processBlock() {
        adjustByteCounts();
        for (int i = 16; i <= 79; i++) {
            long[] jArr = this.f7332W;
            long Sigma1 = Sigma1(jArr[i - 2]);
            long[] jArr2 = this.f7332W;
            jArr[i] = Sigma1 + jArr2[i - 7] + Sigma0(jArr2[i - 15]) + this.f7332W[i - 16];
        }
        char c = this.f7324H1;
        char c2 = this.f7325H2;
        char c3 = this.f7326H3;
        char c4 = this.f7327H4;
        char c5 = this.f7328H5;
        char c6 = this.f7329H6;
        char c7 = this.f7330H7;
        char c8 = this.f7331H8;
        int i2 = 0;
        int i3 = 0;
        while (i3 < 10) {
            long Sum1 = Sum1(c5);
            long m1013Ch = m1013Ch(c5, c6, c7);
            long[] jArr3 = f7323K;
            long j = jArr3[i2];
            int i4 = i2 + 1;
            long j2 = c8 + Sum1 + m1013Ch + j + this.f7332W[i2];
            long j3 = c4 + j2;
            long Sum0 = j2 + Sum0(c) + Maj(c, c2, c3);
            long Sum12 = Sum1(j3);
            long m1013Ch2 = m1013Ch(j3, c5, c6);
            long j4 = jArr3[i4];
            int i5 = i4 + 1;
            long j5 = c7 + Sum12 + m1013Ch2 + j4 + this.f7332W[i4];
            long j6 = c3 + j5;
            long Sum02 = j5 + Sum0(Sum0) + Maj(Sum0, c, c2);
            long Sum13 = Sum1(j6);
            long m1013Ch3 = m1013Ch(j6, j3, c5);
            long j7 = jArr3[i5];
            int i6 = i5 + 1;
            long j8 = c6 + Sum13 + m1013Ch3 + j7 + this.f7332W[i5];
            long j9 = c2 + j8;
            long Sum03 = j8 + Sum0(Sum02) + Maj(Sum02, Sum0, c);
            long Sum14 = Sum1(j9);
            long m1013Ch4 = m1013Ch(j9, j6, j3);
            long j10 = jArr3[i6];
            int i7 = i6 + 1;
            long j11 = c5 + Sum14 + m1013Ch4 + j10 + this.f7332W[i6];
            long j12 = c + j11;
            long Sum04 = j11 + Sum0(Sum03) + Maj(Sum03, Sum02, Sum0);
            long Sum15 = Sum1(j12);
            long m1013Ch5 = m1013Ch(j12, j9, j6);
            long j13 = jArr3[i7];
            int i8 = i7 + 1;
            long j14 = j3 + Sum15 + m1013Ch5 + j13 + this.f7332W[i7];
            c8 = Sum0 + j14;
            c4 = j14 + Sum0(Sum04) + Maj(Sum04, Sum03, Sum02);
            long Sum16 = Sum1(c8);
            long m1013Ch6 = m1013Ch(c8, j12, j9);
            long j15 = jArr3[i8];
            int i9 = i8 + 1;
            long j16 = j6 + Sum16 + m1013Ch6 + j15 + this.f7332W[i8];
            ?? r0 = Sum02 + j16;
            c3 = j16 + Sum0(c4) + Maj(c4, Sum04, Sum03);
            long Sum17 = Sum1(r0);
            long m1013Ch7 = m1013Ch(r0, c8, j12);
            long j17 = jArr3[i9];
            int i10 = i9 + 1;
            long j18 = j9 + Sum17 + m1013Ch7 + j17 + this.f7332W[i9];
            ?? r02 = Sum03 + j18;
            c2 = j18 + Sum0(c3) + Maj(c3, c4, Sum04);
            long Sum18 = j12 + Sum1(r02) + m1013Ch(r02, r0, c8) + jArr3[i10] + this.f7332W[i10];
            i3++;
            c5 = Sum04 + Sum18;
            i2 = i10 + 1;
            c = Sum18 + Sum0(c2) + Maj(c2, c3, c4);
            c7 = r0;
            c6 = r02;
        }
        this.f7324H1 += c;
        this.f7325H2 += c2;
        this.f7326H3 += c3;
        this.f7327H4 += c4;
        this.f7328H5 += c5;
        this.f7329H6 += c6;
        this.f7330H7 += c7;
        this.f7331H8 += c8;
        this.wOff = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            this.f7332W[i11] = 0;
        }
    }

    public void processLength(long j, long j2) {
        if (this.wOff > 14) {
            processBlock();
        }
        long[] jArr = this.f7332W;
        jArr[14] = j2;
        jArr[15] = j;
    }

    public void processWord(byte[] bArr, int i) {
        this.f7332W[this.wOff] = Pack.bigEndianToLong(bArr, i);
        int i2 = this.wOff + 1;
        this.wOff = i2;
        if (i2 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount1 = 0L;
        this.byteCount2 = 0L;
        this.xBufOff = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (i >= bArr.length) {
                break;
            }
            bArr[i] = (byte) 0;
            i++;
        }
        this.wOff = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.f7332W;
            if (i2 != jArr.length) {
                jArr[i2] = 0;
                i2++;
            } else {
                return;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.xBuf;
        int i = this.xBufOff;
        int i2 = i + 1;
        this.xBufOff = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            processWord(bArr, 0);
            this.xBufOff = 0;
        }
        this.byteCount1++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i2;
        int i8 = i;
        while (true) {
            i3 = i8;
            i4 = i7;
            if (this.xBufOff == 0) {
                break;
            }
            i3 = i8;
            i4 = i7;
            if (i7 <= 0) {
                break;
            }
            update(bArr[i8]);
            i8++;
            i7--;
        }
        while (true) {
            i5 = i3;
            if (i4 > this.xBuf.length) {
                processWord(bArr, i3);
                byte[] bArr2 = this.xBuf;
                i3 += bArr2.length;
                i4 -= bArr2.length;
                this.byteCount1 += bArr2.length;
            }
        }
        for (i6 = i4; i6 > 0; i6--) {
            update(bArr[i5]);
            i5++;
        }
    }
}
