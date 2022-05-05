package org.spongycastle.crypto.macs;

import org.apache.commons.cli.HelpFormatter;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/macs/SipHash.class */
public class SipHash implements Mac {

    /* renamed from: c */
    protected final int f1331c;

    /* renamed from: d */
    protected final int f1332d;

    /* renamed from: k0 */
    protected long f1333k0;

    /* renamed from: k1 */
    protected long f1334k1;

    /* renamed from: m */
    protected long f1335m;

    /* renamed from: v0 */
    protected long f1336v0;

    /* renamed from: v1 */
    protected long f1337v1;

    /* renamed from: v2 */
    protected long f1338v2;

    /* renamed from: v3 */
    protected long f1339v3;
    protected int wordCount;
    protected int wordPos;

    public SipHash() {
        this.f1335m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f1331c = 2;
        this.f1332d = 4;
    }

    public SipHash(int i, int i2) {
        this.f1335m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f1331c = i;
        this.f1332d = i2;
    }

    protected static long rotateLeft(long j, int i) {
        return (j >>> (-i)) | (j << i);
    }

    protected void applySipRounds(int i) {
        long j = this.f1336v0;
        long j2 = this.f1337v1;
        long j3 = this.f1338v2;
        long j4 = this.f1339v3;
        for (int i2 = 0; i2 < i; i2++) {
            long j5 = j + j2;
            long j6 = j3 + j4;
            long rotateLeft = rotateLeft(j2, 13) ^ j5;
            long rotateLeft2 = rotateLeft(j4, 16) ^ j6;
            long rotateLeft3 = rotateLeft(j5, 32);
            long j7 = j6 + rotateLeft;
            j = rotateLeft3 + rotateLeft2;
            j2 = rotateLeft(rotateLeft, 17) ^ j7;
            j4 = rotateLeft(rotateLeft2, 21) ^ j;
            j3 = rotateLeft(j7, 32);
        }
        this.f1336v0 = j;
        this.f1337v1 = j2;
        this.f1338v2 = j3;
        this.f1339v3 = j4;
    }

    @Override // org.spongycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        Pack.longToLittleEndian(doFinal(), bArr, i);
        return 8;
    }

    public long doFinal() throws DataLengthException, IllegalStateException {
        this.f1335m >>>= (7 - this.wordPos) << 3;
        this.f1335m >>>= 8;
        this.f1335m |= (((this.wordCount << 3) + this.wordPos) & 255) << 56;
        processMessageWord();
        this.f1338v2 ^= 255;
        applySipRounds(this.f1332d);
        long j = this.f1336v0;
        long j2 = this.f1337v1;
        long j3 = this.f1338v2;
        long j4 = this.f1339v3;
        reset();
        return ((j ^ j2) ^ j3) ^ j4;
    }

    @Override // org.spongycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash-" + this.f1331c + HelpFormatter.DEFAULT_OPT_PREFIX + this.f1332d;
    }

    @Override // org.spongycastle.crypto.Mac
    public int getMacSize() {
        return 8;
    }

    @Override // org.spongycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("'params' must be a 128-bit key");
        }
        this.f1333k0 = Pack.littleEndianToLong(key, 0);
        this.f1334k1 = Pack.littleEndianToLong(key, 8);
        reset();
    }

    protected void processMessageWord() {
        this.wordCount++;
        this.f1339v3 ^= this.f1335m;
        applySipRounds(this.f1331c);
        this.f1336v0 ^= this.f1335m;
    }

    @Override // org.spongycastle.crypto.Mac
    public void reset() {
        this.f1336v0 = this.f1333k0 ^ 8317987319222330741L;
        this.f1337v1 = this.f1334k1 ^ 7237128888997146477L;
        this.f1338v2 = this.f1333k0 ^ 7816392313619706465L;
        this.f1339v3 = this.f1334k1 ^ 8387220255154660723L;
        this.f1335m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.f1335m >>>= 8;
        this.f1335m |= (b & 255) << 56;
        int i = this.wordPos + 1;
        this.wordPos = i;
        if (i == 8) {
            processMessageWord();
            this.wordPos = 0;
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws DataLengthException, IllegalStateException {
        int i3;
        int i4;
        int i5 = i2 & (-8);
        int i6 = 0;
        if (this.wordPos == 0) {
            while (true) {
                if (i6 < i5) {
                    this.f1335m = Pack.littleEndianToLong(bArr, i + i6);
                    processMessageWord();
                    i6 += 8;
                }
            }
            for (i4 = i6; i4 < i2; i4++) {
                this.f1335m >>>= 8;
                this.f1335m |= (bArr[i + i4] & 255) << 56;
            }
            this.wordPos = i2 - i5;
            return;
        }
        int i7 = this.wordPos << 3;
        int i8 = 0;
        while (true) {
            if (i8 < i5) {
                long littleEndianToLong = Pack.littleEndianToLong(bArr, i + i8);
                this.f1335m = (this.f1335m >>> (-i7)) | (littleEndianToLong << i7);
                processMessageWord();
                this.f1335m = littleEndianToLong;
                i8 += 8;
            }
        }
        for (i3 = i8; i3 < i2; i3++) {
            this.f1335m >>>= 8;
            this.f1335m |= (bArr[i + i3] & 255) << 56;
            int i9 = this.wordPos + 1;
            this.wordPos = i9;
            if (i9 == 8) {
                processMessageWord();
                this.wordPos = 0;
            }
        }
    }
}
