package org.spongycastle.pqc.crypto.gmss.util;

import org.spongycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify.class */
public class WinternitzOTSVerify {
    private Digest messDigestOTS;

    /* renamed from: w */
    private int f1683w;

    public WinternitzOTSVerify(Digest digest, int i) {
        this.f1683w = i;
        this.messDigestOTS = digest;
    }

    public byte[] Verify(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        int digestSize = this.messDigestOTS.getDigestSize();
        byte[] bArr4 = new byte[digestSize];
        this.messDigestOTS.update(bArr, 0, bArr.length);
        byte[] bArr5 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr5, 0);
        int i = digestSize << 3;
        int i2 = ((this.f1683w - 1) + i) / this.f1683w;
        int log = getLog((i2 << this.f1683w) + 1);
        int i3 = ((((this.f1683w + log) - 1) / this.f1683w) + i2) * digestSize;
        if (i3 != bArr2.length) {
            return null;
        }
        byte[] bArr6 = new byte[i3];
        if (8 % this.f1683w == 0) {
            int i4 = 8 / this.f1683w;
            int i5 = (1 << this.f1683w) - 1;
            byte[] bArr7 = new byte[digestSize];
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < bArr5.length; i8++) {
                for (int i9 = 0; i9 < i4; i9++) {
                    int i10 = bArr5[i8] & i5;
                    i6 += i10;
                    int i11 = i7 * digestSize;
                    System.arraycopy(bArr2, i11, bArr7, 0, digestSize);
                    while (i10 < i5) {
                        this.messDigestOTS.update(bArr7, 0, bArr7.length);
                        bArr7 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr7, 0);
                        i10++;
                    }
                    System.arraycopy(bArr7, 0, bArr6, i11, digestSize);
                    bArr5[i8] = (byte) (bArr5[i8] >>> this.f1683w);
                    i7++;
                }
            }
            int i12 = (i2 << this.f1683w) - i6;
            int i13 = 0;
            while (true) {
                bArr3 = bArr6;
                if (i13 >= log) {
                    break;
                }
                int i14 = i7 * digestSize;
                System.arraycopy(bArr2, i14, bArr7, 0, digestSize);
                for (int i15 = i12 & i5; i15 < i5; i15++) {
                    this.messDigestOTS.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr7, 0);
                }
                System.arraycopy(bArr7, 0, bArr6, i14, digestSize);
                i12 >>>= this.f1683w;
                i7++;
                i13 += this.f1683w;
            }
        } else if (this.f1683w < 8) {
            int i16 = digestSize / this.f1683w;
            int i17 = (1 << this.f1683w) - 1;
            byte[] bArr8 = new byte[digestSize];
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            while (i18 < i16) {
                long j = 0;
                for (int i22 = 0; i22 < this.f1683w; i22++) {
                    j ^= (bArr5[i19] & 255) << (i22 << 3);
                    i19++;
                }
                int i23 = i20;
                for (int i24 = 0; i24 < 8; i24++) {
                    int i25 = (int) (j & i17);
                    i23 += i25;
                    int i26 = i21 * digestSize;
                    System.arraycopy(bArr2, i26, bArr8, 0, digestSize);
                    for (int i27 = i25; i27 < i17; i27++) {
                        this.messDigestOTS.update(bArr8, 0, bArr8.length);
                        bArr8 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr8, 0);
                    }
                    System.arraycopy(bArr8, 0, bArr6, i26, digestSize);
                    j >>>= this.f1683w;
                    i21++;
                }
                i18++;
                i20 = i23;
            }
            int i28 = digestSize % this.f1683w;
            long j2 = 0;
            for (int i29 = 0; i29 < i28; i29++) {
                j2 ^= (bArr5[i19] & 255) << (i29 << 3);
                i19++;
            }
            int i30 = 0;
            while (i30 < (i28 << 3)) {
                int i31 = (int) (j2 & i17);
                i20 += i31;
                int i32 = i21 * digestSize;
                System.arraycopy(bArr2, i32, bArr8, 0, digestSize);
                for (int i33 = i31; i33 < i17; i33++) {
                    this.messDigestOTS.update(bArr8, 0, bArr8.length);
                    bArr8 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr8, 0);
                }
                System.arraycopy(bArr8, 0, bArr6, i32, digestSize);
                j2 >>>= this.f1683w;
                i21++;
                i30 += this.f1683w;
            }
            int i34 = (i2 << this.f1683w) - i20;
            int i35 = 0;
            while (true) {
                bArr3 = bArr6;
                if (i35 >= log) {
                    break;
                }
                int i36 = i21 * digestSize;
                System.arraycopy(bArr2, i36, bArr8, 0, digestSize);
                for (int i37 = i34 & i17; i37 < i17; i37++) {
                    this.messDigestOTS.update(bArr8, 0, bArr8.length);
                    bArr8 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr8, 0);
                }
                System.arraycopy(bArr8, 0, bArr6, i36, digestSize);
                i34 >>>= this.f1683w;
                i21++;
                i35 += this.f1683w;
            }
        } else {
            bArr3 = bArr6;
            if (this.f1683w < 57) {
                int i38 = i - this.f1683w;
                int i39 = (1 << this.f1683w) - 1;
                byte[] bArr9 = new byte[digestSize];
                int i40 = 0;
                int i41 = 0;
                int i42 = 0;
                int i43 = i2;
                while (i40 <= i38) {
                    int i44 = i40 + this.f1683w;
                    int i45 = 0;
                    long j3 = 0;
                    for (int i46 = i40 >>> 3; i46 < ((i44 + 7) >>> 3); i46++) {
                        j3 ^= (bArr5[i46] & 255) << (i45 << 3);
                        i45++;
                    }
                    long j4 = i39;
                    long j5 = (j3 >>> (i40 % 8)) & j4;
                    i41 = (int) (i41 + j5);
                    int i47 = i42 * digestSize;
                    System.arraycopy(bArr2, i47, bArr9, 0, digestSize);
                    i40 = i44;
                    while (j5 < j4) {
                        this.messDigestOTS.update(bArr9, 0, bArr9.length);
                        bArr9 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr9, 0);
                        j5++;
                    }
                    System.arraycopy(bArr9, 0, bArr6, i47, digestSize);
                    i42++;
                    i38 = i38;
                    i43 = i43;
                }
                int i48 = i40 >>> 3;
                if (i48 < digestSize) {
                    int i49 = 0;
                    long j6 = 0;
                    while (i48 < digestSize) {
                        j6 ^= (bArr5[i48] & 255) << (i49 << 3);
                        i49++;
                        i48++;
                    }
                    long j7 = i39;
                    long j8 = (j6 >>> (i40 % 8)) & j7;
                    i41 = (int) (i41 + j8);
                    int i50 = i42 * digestSize;
                    System.arraycopy(bArr2, i50, bArr9, 0, digestSize);
                    while (j8 < j7) {
                        this.messDigestOTS.update(bArr9, 0, bArr9.length);
                        bArr9 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr9, 0);
                        j8++;
                    }
                    System.arraycopy(bArr9, 0, bArr6, i50, digestSize);
                    i42++;
                }
                int i51 = (i43 << this.f1683w) - i41;
                int i52 = 0;
                while (true) {
                    bArr3 = bArr6;
                    if (i52 >= log) {
                        break;
                    }
                    int i53 = i42 * digestSize;
                    System.arraycopy(bArr2, i53, bArr9, 0, digestSize);
                    for (long j9 = i51 & i39; j9 < i39; j9++) {
                        this.messDigestOTS.update(bArr9, 0, bArr9.length);
                        bArr9 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr9, 0);
                    }
                    System.arraycopy(bArr9, 0, bArr6, i53, digestSize);
                    i51 >>>= this.f1683w;
                    i42++;
                    i52 += this.f1683w;
                }
            }
        }
        byte[] bArr10 = new byte[digestSize];
        this.messDigestOTS.update(bArr3, 0, bArr3.length);
        byte[] bArr11 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr11, 0);
        return bArr11;
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

    public int getSignatureLength() {
        int digestSize = this.messDigestOTS.getDigestSize();
        int i = ((digestSize << 3) + (this.f1683w - 1)) / this.f1683w;
        return digestSize * (i + (((getLog((i << this.f1683w) + 1) + this.f1683w) - 1) / this.f1683w));
    }
}
