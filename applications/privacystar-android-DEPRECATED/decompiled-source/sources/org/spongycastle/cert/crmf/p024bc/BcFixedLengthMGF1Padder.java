package org.spongycastle.cert.crmf.p024bc;

import java.security.SecureRandom;
import org.spongycastle.cert.crmf.EncryptedValuePadder;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.generators.MGF1BytesGenerator;
import org.spongycastle.crypto.params.MGFParameters;
/* renamed from: org.spongycastle.cert.crmf.bc.BcFixedLengthMGF1Padder */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/bc/BcFixedLengthMGF1Padder.class */
public class BcFixedLengthMGF1Padder implements EncryptedValuePadder {
    private Digest dig;
    private int length;
    private SecureRandom random;

    public BcFixedLengthMGF1Padder(int i) {
        this(i, null);
    }

    public BcFixedLengthMGF1Padder(int i, SecureRandom secureRandom) {
        this.dig = new SHA1Digest();
        this.length = i;
        this.random = secureRandom;
    }

    @Override // org.spongycastle.cert.crmf.EncryptedValuePadder
    public byte[] getPaddedData(byte[] bArr) {
        byte[] bArr2 = new byte[this.length];
        byte[] bArr3 = new byte[this.dig.getDigestSize()];
        byte[] bArr4 = new byte[this.length - this.dig.getDigestSize()];
        if (this.random == null) {
            this.random = new SecureRandom();
        }
        this.random.nextBytes(bArr3);
        MGF1BytesGenerator mGF1BytesGenerator = new MGF1BytesGenerator(this.dig);
        mGF1BytesGenerator.init(new MGFParameters(bArr3));
        mGF1BytesGenerator.generateBytes(bArr4, 0, bArr4.length);
        System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
        System.arraycopy(bArr, 0, bArr2, bArr3.length, bArr.length);
        int length = bArr3.length + bArr.length;
        while (true) {
            int i = length + 1;
            if (i != bArr2.length) {
                bArr2[i] = (byte) (this.random.nextInt(255) + 1);
                length = i;
            }
        }
        for (int i2 = 0; i2 != bArr4.length; i2++) {
            int length2 = bArr3.length + i2;
            bArr2[length2] = (byte) (bArr2[length2] ^ bArr4[i2]);
        }
        return bArr2;
    }

    @Override // org.spongycastle.cert.crmf.EncryptedValuePadder
    public byte[] getUnpaddedData(byte[] bArr) {
        int length;
        byte[] bArr2 = new byte[this.dig.getDigestSize()];
        byte[] bArr3 = new byte[this.length - this.dig.getDigestSize()];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        MGF1BytesGenerator mGF1BytesGenerator = new MGF1BytesGenerator(this.dig);
        mGF1BytesGenerator.init(new MGFParameters(bArr2));
        mGF1BytesGenerator.generateBytes(bArr3, 0, bArr3.length);
        for (int i = 0; i != bArr3.length; i++) {
            bArr[bArr2.length + i] = (byte) (bArr[length] ^ bArr3[i]);
        }
        int length2 = bArr.length - 1;
        while (true) {
            if (length2 == bArr2.length) {
                length2 = 0;
                break;
            } else if (bArr[length2] == 0) {
                break;
            } else {
                length2--;
            }
        }
        if (length2 == 0) {
            throw new IllegalStateException("bad padding in encoding");
        }
        byte[] bArr4 = new byte[length2 - bArr2.length];
        System.arraycopy(bArr, bArr2.length, bArr4, 0, bArr4.length);
        return bArr4;
    }
}
