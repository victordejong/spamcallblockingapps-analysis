package org.spongycastle.pqc.crypto.ntru;

import java.nio.ByteBuffer;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigner.class */
public class NTRUSigner {
    private Digest hashAlg;
    private NTRUSigningParameters params;
    private NTRUSigningPrivateKeyParameters signingKeyPair;
    private NTRUSigningPublicKeyParameters verificationKey;

    public NTRUSigner(NTRUSigningParameters nTRUSigningParameters) {
        this.params = nTRUSigningParameters;
    }

    private IntegerPolynomial sign(IntegerPolynomial integerPolynomial, NTRUSigningPrivateKeyParameters nTRUSigningPrivateKeyParameters) {
        int i = this.params.f1757N;
        int i2 = this.params.f1762q;
        NTRUSigningPublicKeyParameters publicKey = nTRUSigningPrivateKeyParameters.getPublicKey();
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(i);
        for (int i3 = this.params.f1756B; i3 >= 1; i3--) {
            Polynomial polynomial = nTRUSigningPrivateKeyParameters.getBasis(i3).f1763f;
            Polynomial polynomial2 = nTRUSigningPrivateKeyParameters.getBasis(i3).fPrime;
            IntegerPolynomial mult = polynomial.mult(integerPolynomial);
            mult.div(i2);
            IntegerPolynomial mult2 = polynomial2.mult(mult);
            IntegerPolynomial mult3 = polynomial2.mult(integerPolynomial);
            mult3.div(i2);
            mult2.sub(polynomial.mult(mult3));
            integerPolynomial2.add(mult2);
            IntegerPolynomial integerPolynomial3 = (IntegerPolynomial) nTRUSigningPrivateKeyParameters.getBasis(i3).f1764h.clone();
            if (i3 > 1) {
                integerPolynomial3.sub(nTRUSigningPrivateKeyParameters.getBasis(i3 - 1).f1764h);
            } else {
                integerPolynomial3.sub(publicKey.f1765h);
            }
            integerPolynomial = mult2.mult(integerPolynomial3, i2);
        }
        Polynomial polynomial3 = nTRUSigningPrivateKeyParameters.getBasis(0).f1763f;
        Polynomial polynomial4 = nTRUSigningPrivateKeyParameters.getBasis(0).fPrime;
        IntegerPolynomial mult4 = polynomial3.mult(integerPolynomial);
        mult4.div(i2);
        IntegerPolynomial mult5 = polynomial4.mult(mult4);
        IntegerPolynomial mult6 = polynomial4.mult(integerPolynomial);
        mult6.div(i2);
        mult5.sub(polynomial3.mult(mult6));
        integerPolynomial2.add(mult5);
        integerPolynomial2.modPositive(i2);
        return integerPolynomial2;
    }

    private byte[] signHash(byte[] bArr, NTRUSigningPrivateKeyParameters nTRUSigningPrivateKeyParameters) {
        int i;
        IntegerPolynomial createMsgRep;
        IntegerPolynomial sign;
        NTRUSigningPublicKeyParameters publicKey = nTRUSigningPrivateKeyParameters.getPublicKey();
        int i2 = 0;
        do {
            i = i2 + 1;
            if (i > this.params.signFailTolerance) {
                throw new IllegalStateException("Signing failed: too many retries (max=" + this.params.signFailTolerance + ")");
            }
            createMsgRep = createMsgRep(bArr, i);
            sign = sign(createMsgRep, nTRUSigningPrivateKeyParameters);
            i2 = i;
        } while (!verify(createMsgRep, sign, publicKey.f1765h));
        byte[] binary = sign.toBinary(this.params.f1762q);
        ByteBuffer allocate = ByteBuffer.allocate(binary.length + 4);
        allocate.put(binary);
        allocate.putInt(i);
        return allocate.array();
    }

    private boolean verify(IntegerPolynomial integerPolynomial, IntegerPolynomial integerPolynomial2, IntegerPolynomial integerPolynomial3) {
        int i = this.params.f1762q;
        double d = this.params.normBoundSq;
        double d2 = this.params.betaSq;
        IntegerPolynomial mult = integerPolynomial3.mult(integerPolynomial2, i);
        mult.sub(integerPolynomial);
        return ((double) ((long) (((double) integerPolynomial2.centeredNormSq(i)) + (d2 * ((double) mult.centeredNormSq(i)))))) <= d;
    }

    private boolean verifyHash(byte[] bArr, byte[] bArr2, NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr2);
        byte[] bArr3 = new byte[bArr2.length - 4];
        wrap.get(bArr3);
        return verify(createMsgRep(bArr, wrap.getInt()), IntegerPolynomial.fromBinary(bArr3, this.params.f1757N, this.params.f1762q), nTRUSigningPublicKeyParameters.f1765h);
    }

    protected IntegerPolynomial createMsgRep(byte[] bArr, int i) {
        int i2 = this.params.f1757N;
        int numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(this.params.f1762q);
        int i3 = (numberOfLeadingZeros + 7) / 8;
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(i2);
        ByteBuffer allocate = ByteBuffer.allocate(bArr.length + 4);
        allocate.put(bArr);
        allocate.putInt(i);
        NTRUSignerPrng nTRUSignerPrng = new NTRUSignerPrng(allocate.array(), this.params.hashAlg);
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] nextBytes = nTRUSignerPrng.nextBytes(i3);
            byte b = nextBytes[nextBytes.length - 1];
            int i5 = (i3 * 8) - numberOfLeadingZeros;
            nextBytes[nextBytes.length - 1] = (byte) ((b >> i5) << i5);
            ByteBuffer allocate2 = ByteBuffer.allocate(4);
            allocate2.put(nextBytes);
            allocate2.rewind();
            integerPolynomial.coeffs[i4] = Integer.reverseBytes(allocate2.getInt());
        }
        return integerPolynomial;
    }

    public byte[] generateSignature() {
        if (this.hashAlg == null || this.signingKeyPair == null) {
            throw new IllegalStateException("Call initSign first!");
        }
        byte[] bArr = new byte[this.hashAlg.getDigestSize()];
        this.hashAlg.doFinal(bArr, 0);
        return signHash(bArr, this.signingKeyPair);
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (z) {
            this.signingKeyPair = (NTRUSigningPrivateKeyParameters) cipherParameters;
        } else {
            this.verificationKey = (NTRUSigningPublicKeyParameters) cipherParameters;
        }
        this.hashAlg = this.params.hashAlg;
        this.hashAlg.reset();
    }

    public void update(byte b) {
        if (this.hashAlg == null) {
            throw new IllegalStateException("Call initSign or initVerify first!");
        }
        this.hashAlg.update(b);
    }

    public void update(byte[] bArr, int i, int i2) {
        if (this.hashAlg == null) {
            throw new IllegalStateException("Call initSign or initVerify first!");
        }
        this.hashAlg.update(bArr, i, i2);
    }

    public boolean verifySignature(byte[] bArr) {
        if (this.hashAlg == null || this.verificationKey == null) {
            throw new IllegalStateException("Call initVerify first!");
        }
        byte[] bArr2 = new byte[this.hashAlg.getDigestSize()];
        this.hashAlg.doFinal(bArr2, 0);
        return verifyHash(bArr2, bArr, this.verificationKey);
    }
}
