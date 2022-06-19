package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/agreement/kdf/DHKEKGenerator.class */
public class DHKEKGenerator implements DerivationFunction {
    private DERObjectIdentifier algorithm;
    private final Digest digest;
    private int keySize;
    private byte[] partyAInfo;

    /* renamed from: z */
    private byte[] f7291z;

    public DHKEKGenerator(Digest digest) {
        this.digest = digest;
    }

    private byte[] integerToBytes(int i) {
        return new byte[]{(byte) (i >> 24), (byte) (i >> 16), (byte) (i >> 8), (byte) i};
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) {
        if (bArr.length - i2 >= i) {
            long j = i2;
            int digestSize = this.digest.getDigestSize();
            if (j > 8589934591L) {
                throw new IllegalArgumentException("Output length too large");
            }
            long j2 = digestSize;
            int i3 = (int) (((j + j2) - 1) / j2);
            byte[] bArr2 = new byte[this.digest.getDigestSize()];
            int i4 = i2;
            int i5 = i;
            int i6 = 1;
            for (int i7 = 0; i7 < i3; i7++) {
                Digest digest = this.digest;
                byte[] bArr3 = this.f7291z;
                digest.update(bArr3, 0, bArr3.length);
                ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                aSN1EncodableVector2.add(this.algorithm);
                aSN1EncodableVector2.add(new DEROctetString(integerToBytes(i6)));
                aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
                if (this.partyAInfo != null) {
                    aSN1EncodableVector.add(new DERTaggedObject(true, 0, new DEROctetString(this.partyAInfo)));
                }
                aSN1EncodableVector.add(new DERTaggedObject(true, 2, new DEROctetString(integerToBytes(this.keySize))));
                byte[] dEREncoded = new DERSequence(aSN1EncodableVector).getDEREncoded();
                this.digest.update(dEREncoded, 0, dEREncoded.length);
                this.digest.doFinal(bArr2, 0);
                if (i4 > digestSize) {
                    System.arraycopy(bArr2, 0, bArr, i5, digestSize);
                    i5 += digestSize;
                    i4 -= digestSize;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i5, i4);
                }
                i6++;
            }
            this.digest.reset();
            return i4;
        }
        throw new DataLengthException("output buffer too small");
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        DHKDFParameters dHKDFParameters = (DHKDFParameters) derivationParameters;
        this.algorithm = dHKDFParameters.getAlgorithm();
        this.keySize = dHKDFParameters.getKeySize();
        this.f7291z = dHKDFParameters.getZ();
        this.partyAInfo = dHKDFParameters.getExtraInfo();
    }
}
