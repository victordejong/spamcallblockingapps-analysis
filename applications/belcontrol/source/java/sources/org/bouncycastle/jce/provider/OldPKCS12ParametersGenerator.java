package org.bouncycastle.jce.provider;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/OldPKCS12ParametersGenerator.class */
public class OldPKCS12ParametersGenerator extends PBEParametersGenerator {
    public static final int IV_MATERIAL = 2;
    public static final int KEY_MATERIAL = 1;
    public static final int MAC_MATERIAL = 3;
    private Digest digest;

    /* renamed from: u */
    private int f7626u;

    /* renamed from: v */
    private int f7627v;

    public OldPKCS12ParametersGenerator(Digest digest) {
        this.digest = digest;
        if (digest instanceof MD5Digest) {
            this.f7626u = 16;
        } else if (!(digest instanceof SHA1Digest) && !(digest instanceof RIPEMD160Digest)) {
            throw new IllegalArgumentException("Digest " + digest.getAlgorithmName() + " unsupported");
        } else {
            this.f7626u = 20;
        }
        this.f7627v = 64;
    }

    private void adjust(byte[] bArr, int i, byte[] bArr2) {
        int i2 = (bArr2[bArr2.length - 1] & 255) + (bArr[(bArr2.length + i) - 1] & 255) + 1;
        bArr[(bArr2.length + i) - 1] = (byte) i2;
        int i3 = i2 >>> 8;
        for (int length = bArr2.length - 2; length >= 0; length--) {
            int i4 = i + length;
            int i5 = i3 + (bArr2[length] & 255) + (bArr[i4] & 255);
            bArr[i4] = (byte) i5;
            i3 = i5 >>> 8;
        }
    }

    private byte[] generateDerivedKey(int i, int i2) {
        byte[] bArr;
        byte[] bArr2;
        int i3 = this.f7627v;
        byte[] bArr3 = new byte[i3];
        byte[] bArr4 = new byte[i2];
        for (int i4 = 0; i4 != i3; i4++) {
            bArr3[i4] = (byte) i;
        }
        byte[] bArr5 = this.salt;
        if (bArr5 == null || bArr5.length == 0) {
            bArr = new byte[0];
        } else {
            int i5 = this.f7627v;
            int length = i5 * (((bArr5.length + i5) - 1) / i5);
            byte[] bArr6 = new byte[length];
            int i6 = 0;
            while (true) {
                bArr = bArr6;
                if (i6 == length) {
                    break;
                }
                byte[] bArr7 = this.salt;
                bArr6[i6] = bArr7[i6 % bArr7.length];
                i6++;
            }
        }
        byte[] bArr8 = this.password;
        if (bArr8 == null || bArr8.length == 0) {
            bArr2 = new byte[0];
        } else {
            int i7 = this.f7627v;
            int length2 = i7 * (((bArr8.length + i7) - 1) / i7);
            byte[] bArr9 = new byte[length2];
            int i8 = 0;
            while (true) {
                bArr2 = bArr9;
                if (i8 == length2) {
                    break;
                }
                byte[] bArr10 = this.password;
                bArr9[i8] = bArr10[i8 % bArr10.length];
                i8++;
            }
        }
        int length3 = bArr.length + bArr2.length;
        byte[] bArr11 = new byte[length3];
        System.arraycopy(bArr, 0, bArr11, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr11, bArr.length, bArr2.length);
        int i9 = this.f7627v;
        byte[] bArr12 = new byte[i9];
        int i10 = this.f7626u;
        int i11 = ((i2 + i10) - 1) / i10;
        for (int i12 = 1; i12 <= i11; i12++) {
            int i13 = this.f7626u;
            byte[] bArr13 = new byte[i13];
            this.digest.update(bArr3, 0, i3);
            this.digest.update(bArr11, 0, length3);
            this.digest.doFinal(bArr13, 0);
            for (int i14 = 1; i14 != this.iterationCount; i14++) {
                this.digest.update(bArr13, 0, i13);
                this.digest.doFinal(bArr13, 0);
            }
            for (int i15 = 0; i15 != i9; i15++) {
                bArr12[i12] = bArr13[i15 % i13];
            }
            int i16 = 0;
            while (true) {
                int i17 = this.f7627v;
                if (i16 == length3 / i17) {
                    break;
                }
                adjust(bArr11, i17 * i16, bArr12);
                i16++;
            }
            if (i12 == i11) {
                int i18 = i12 - 1;
                int i19 = this.f7626u;
                System.arraycopy(bArr13, 0, bArr4, i18 * i19, i2 - (i18 * i19));
            } else {
                System.arraycopy(bArr13, 0, bArr4, (i12 - 1) * this.f7626u, i13);
            }
        }
        return bArr4;
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int i) {
        int i2 = i / 8;
        return new KeyParameter(generateDerivedKey(3, i2), 0, i2);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i) {
        int i2 = i / 8;
        return new KeyParameter(generateDerivedKey(1, i2), 0, i2);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i, int i2) {
        int i3 = i / 8;
        int i4 = i2 / 8;
        byte[] generateDerivedKey = generateDerivedKey(1, i3);
        return new ParametersWithIV(new KeyParameter(generateDerivedKey, 0, i3), generateDerivedKey(2, i4), 0, i4);
    }
}
