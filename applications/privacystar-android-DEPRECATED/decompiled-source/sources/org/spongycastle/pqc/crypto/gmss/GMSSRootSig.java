package org.spongycastle.pqc.crypto.gmss;

import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/GMSSRootSig.class */
public class GMSSRootSig {
    private long big8;
    private int checksum;
    private int counter;
    private GMSSRandom gmssRandom;
    private byte[] hash;
    private int height;

    /* renamed from: ii */
    private int f1679ii;

    /* renamed from: k */
    private int f1680k;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[] privateKeyOTS;

    /* renamed from: r */
    private int f1681r;
    private byte[] seed;
    private byte[] sign;
    private int steps;
    private int test;
    private long test8;

    /* renamed from: w */
    private int f1682w;

    public GMSSRootSig(Digest digest, int i, int i2) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(this.messDigestOTS);
        this.mdsize = this.messDigestOTS.getDigestSize();
        this.f1682w = i;
        this.height = i2;
        this.f1680k = (1 << i) - 1;
        this.messagesize = (int) Math.ceil((this.mdsize << 3) / i);
    }

    public GMSSRootSig(Digest digest, byte[][] bArr, int[] iArr) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(this.messDigestOTS);
        this.counter = iArr[0];
        this.test = iArr[1];
        this.f1679ii = iArr[2];
        this.f1681r = iArr[3];
        this.steps = iArr[4];
        this.keysize = iArr[5];
        this.height = iArr[6];
        this.f1682w = iArr[7];
        this.checksum = iArr[8];
        this.mdsize = this.messDigestOTS.getDigestSize();
        this.f1680k = (1 << this.f1682w) - 1;
        this.messagesize = (int) Math.ceil((this.mdsize << 3) / this.f1682w);
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.hash = bArr[2];
        this.sign = bArr[3];
        this.test8 = ((bArr[4][2] & 255) << 16) | (bArr[4][0] & 255) | ((bArr[4][1] & 255) << 8) | ((bArr[4][3] & 255) << 24) | ((bArr[4][4] & 255) << 32) | ((bArr[4][5] & 255) << 40) | ((bArr[4][6] & 255) << 48) | ((bArr[4][7] & 255) << 56);
        this.big8 = ((bArr[4][15] & 255) << 56) | (bArr[4][8] & 255) | ((bArr[4][9] & 255) << 8) | ((bArr[4][10] & 255) << 16) | ((bArr[4][11] & 255) << 24) | ((bArr[4][12] & 255) << 32) | ((bArr[4][13] & 255) << 40) | ((bArr[4][14] & 255) << 48);
    }

    private void oneStep() {
        int i;
        if (8 % this.f1682w == 0) {
            if (this.test == 0) {
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
                if (this.f1679ii < this.mdsize) {
                    this.test = this.hash[this.f1679ii] & this.f1680k;
                    this.hash[this.f1679ii] = (byte) (this.hash[this.f1679ii] >>> this.f1682w);
                } else {
                    this.test = this.checksum & this.f1680k;
                    this.checksum >>>= this.f1682w;
                }
            } else if (this.test > 0) {
                this.messDigestOTS.update(this.privateKeyOTS, 0, this.privateKeyOTS.length);
                this.privateKeyOTS = new byte[this.messDigestOTS.getDigestSize()];
                this.messDigestOTS.doFinal(this.privateKeyOTS, 0);
                this.test--;
            }
            if (this.test == 0) {
                System.arraycopy(this.privateKeyOTS, 0, this.sign, this.counter * this.mdsize, this.mdsize);
                this.counter++;
                if (this.counter % (8 / this.f1682w) == 0) {
                    this.f1679ii++;
                }
            }
        } else if (this.f1682w < 8) {
            if (this.test == 0) {
                if (this.counter % 8 == 0 && this.f1679ii < this.mdsize) {
                    this.big8 = 0L;
                    if (this.counter < ((this.mdsize / this.f1682w) << 3)) {
                        for (int i2 = 0; i2 < this.f1682w; i2++) {
                            this.big8 ^= (this.hash[this.f1679ii] & 255) << (i2 << 3);
                            this.f1679ii++;
                        }
                    } else {
                        for (int i3 = 0; i3 < this.mdsize % this.f1682w; i3++) {
                            this.big8 ^= (this.hash[this.f1679ii] & 255) << (i3 << 3);
                            this.f1679ii++;
                        }
                    }
                }
                if (this.counter == this.messagesize) {
                    this.big8 = this.checksum;
                }
                this.test = (int) (this.big8 & this.f1680k);
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (this.test > 0) {
                this.messDigestOTS.update(this.privateKeyOTS, 0, this.privateKeyOTS.length);
                this.privateKeyOTS = new byte[this.messDigestOTS.getDigestSize()];
                this.messDigestOTS.doFinal(this.privateKeyOTS, 0);
                this.test--;
            }
            if (this.test == 0) {
                System.arraycopy(this.privateKeyOTS, 0, this.sign, this.counter * this.mdsize, this.mdsize);
                this.big8 >>>= this.f1682w;
                this.counter++;
            }
        } else if (this.f1682w < 57) {
            if (this.test8 == 0) {
                this.big8 = 0L;
                this.f1679ii = 0;
                int i4 = this.f1681r;
                int i5 = this.f1681r >>> 3;
                if (i5 < this.mdsize) {
                    if (this.f1681r <= (this.mdsize << 3) - this.f1682w) {
                        this.f1681r += this.f1682w;
                        i = (this.f1681r + 7) >>> 3;
                    } else {
                        i = this.mdsize;
                        this.f1681r += this.f1682w;
                    }
                    while (i5 < i) {
                        this.big8 ^= (this.hash[i5] & 255) << (this.f1679ii << 3);
                        this.f1679ii++;
                        i5++;
                    }
                    this.big8 >>>= i4 % 8;
                    this.test8 = this.big8 & this.f1680k;
                } else {
                    this.test8 = this.checksum & this.f1680k;
                    this.checksum >>>= this.f1682w;
                }
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (this.test8 > 0) {
                this.messDigestOTS.update(this.privateKeyOTS, 0, this.privateKeyOTS.length);
                this.privateKeyOTS = new byte[this.messDigestOTS.getDigestSize()];
                this.messDigestOTS.doFinal(this.privateKeyOTS, 0);
                this.test8--;
            }
            if (this.test8 == 0) {
                System.arraycopy(this.privateKeyOTS, 0, this.sign, this.counter * this.mdsize, this.mdsize);
                this.counter++;
            }
        }
    }

    public int getLog(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    public byte[] getSig() {
        return this.sign;
    }

    public byte[][] getStatByte() {
        return new byte[][]{this.privateKeyOTS, this.seed, this.hash, this.sign, getStatLong()};
    }

    public int[] getStatInt() {
        return new int[]{this.counter, this.test, this.f1679ii, this.f1681r, this.steps, this.keysize, this.height, this.f1682w, this.checksum};
    }

    public byte[] getStatLong() {
        return new byte[]{(byte) (this.test8 & 255), (byte) ((this.test8 >> 8) & 255), (byte) ((this.test8 >> 16) & 255), (byte) ((this.test8 >> 24) & 255), (byte) ((this.test8 >> 32) & 255), (byte) ((this.test8 >> 40) & 255), (byte) ((this.test8 >> 48) & 255), (byte) ((this.test8 >> 56) & 255), (byte) (this.big8 & 255), (byte) ((this.big8 >> 8) & 255), (byte) ((this.big8 >> 16) & 255), (byte) ((this.big8 >> 24) & 255), (byte) ((this.big8 >> 32) & 255), (byte) ((this.big8 >> 40) & 255), (byte) ((this.big8 >> 48) & 255), (byte) ((this.big8 >> 56) & 255)};
    }

    public void initSign(byte[] bArr, byte[] bArr2) {
        int i;
        this.hash = new byte[this.mdsize];
        this.messDigestOTS.update(bArr2, 0, bArr2.length);
        this.hash = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(this.hash, 0);
        byte[] bArr3 = new byte[this.mdsize];
        System.arraycopy(this.hash, 0, bArr3, 0, this.mdsize);
        int log = getLog((this.messagesize << this.f1682w) + 1);
        if (8 % this.f1682w == 0) {
            int i2 = 8 / this.f1682w;
            i = 0;
            for (int i3 = 0; i3 < this.mdsize; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    i += bArr3[i3] & this.f1680k;
                    bArr3[i3] = (byte) (bArr3[i3] >>> this.f1682w);
                }
            }
            this.checksum = (this.messagesize << this.f1682w) - i;
            int i5 = this.checksum;
            int i6 = 0;
            while (i6 < log) {
                i += this.f1680k & i5;
                i5 >>>= this.f1682w;
                i6 += this.f1682w;
            }
        } else if (this.f1682w < 8) {
            int i7 = this.mdsize / this.f1682w;
            int i8 = 0;
            int i9 = 0;
            for (int i10 = 0; i10 < i7; i10++) {
                long j = 0;
                for (int i11 = 0; i11 < this.f1682w; i11++) {
                    j ^= (bArr3[i8] & 255) << (i11 << 3);
                    i8++;
                }
                for (int i12 = 0; i12 < 8; i12++) {
                    i9 += (int) (this.f1680k & j);
                    j >>>= this.f1682w;
                }
            }
            int i13 = this.mdsize % this.f1682w;
            long j2 = 0;
            for (int i14 = 0; i14 < i13; i14++) {
                j2 ^= (bArr3[i8] & 255) << (i14 << 3);
                i8++;
            }
            int i15 = 0;
            while (i15 < (i13 << 3)) {
                i9 += (int) (this.f1680k & j2);
                j2 >>>= this.f1682w;
                i15 += this.f1682w;
            }
            this.checksum = (this.messagesize << this.f1682w) - i9;
            int i16 = this.checksum;
            int i17 = 0;
            while (true) {
                i = i9;
                if (i17 >= log) {
                    break;
                }
                i9 += this.f1680k & i16;
                i16 >>>= this.f1682w;
                i17 += this.f1682w;
            }
        } else if (this.f1682w < 57) {
            int i18 = 0;
            int i19 = 0;
            while (i18 <= (this.mdsize << 3) - this.f1682w) {
                int i20 = i18 + this.f1682w;
                long j3 = 0;
                int i21 = 0;
                for (int i22 = i18 >>> 3; i22 < ((i20 + 7) >>> 3); i22++) {
                    j3 ^= (bArr3[i22] & 255) << (i21 << 3);
                    i21++;
                }
                i19 = (int) (i19 + ((j3 >>> (i18 % 8)) & this.f1680k));
                i18 = i20;
            }
            int i23 = i18 >>> 3;
            int i24 = i19;
            if (i23 < this.mdsize) {
                int i25 = 0;
                long j4 = 0;
                for (int i26 = i23; i26 < this.mdsize; i26++) {
                    j4 ^= (bArr3[i26] & 255) << (i25 << 3);
                    i25++;
                }
                i24 = (int) (i19 + ((j4 >>> (i18 % 8)) & this.f1680k));
            }
            this.checksum = (this.messagesize << this.f1682w) - i24;
            int i27 = this.checksum;
            int i28 = 0;
            while (true) {
                i = i24;
                if (i28 >= log) {
                    break;
                }
                i24 += this.f1680k & i27;
                i27 >>>= this.f1682w;
                i28 += this.f1682w;
            }
        } else {
            i = 0;
        }
        this.keysize = this.messagesize + ((int) Math.ceil(log / this.f1682w));
        this.steps = (int) Math.ceil((this.keysize + i) / (1 << this.height));
        this.sign = new byte[this.keysize * this.mdsize];
        this.counter = 0;
        this.test = 0;
        this.f1679ii = 0;
        this.test8 = 0L;
        this.f1681r = 0;
        this.privateKeyOTS = new byte[this.mdsize];
        this.seed = new byte[this.mdsize];
        System.arraycopy(bArr, 0, this.seed, 0, this.mdsize);
    }

    public String toString() {
        String str;
        String str2 = "" + this.big8 + "  ";
        int[] iArr = new int[9];
        int[] statInt = getStatInt();
        byte[][] bArr = new byte[5][this.mdsize];
        byte[][] statByte = getStatByte();
        int i = 0;
        while (true) {
            str = str2;
            if (i < 9) {
                str2 = str2 + statInt[i] + " ";
                i++;
            }
        }
        for (int i2 = 0; i2 < 5; i2++) {
            str = str + new String(Hex.encode(statByte[i2])) + " ";
        }
        return str;
    }

    public boolean updateSign() {
        for (int i = 0; i < this.steps; i++) {
            if (this.counter < this.keysize) {
                oneStep();
            }
            if (this.counter == this.keysize) {
                return true;
            }
        }
        return false;
    }
}
