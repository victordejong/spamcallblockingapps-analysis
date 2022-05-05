package org.spongycastle.pqc.crypto.ntru;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.SparseTernaryPolynomial;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters.class */
public class NTRUEncryptionPrivateKeyParameters extends NTRUEncryptionKeyParameters {

    /* renamed from: fp */
    public IntegerPolynomial f1743fp;

    /* renamed from: h */
    public IntegerPolynomial f1744h;

    /* renamed from: t */
    public Polynomial f1745t;

    public NTRUEncryptionPrivateKeyParameters(InputStream inputStream, NTRUEncryptionParameters nTRUEncryptionParameters) throws IOException {
        super(true, nTRUEncryptionParameters);
        if (nTRUEncryptionParameters.polyType == 1) {
            int i = nTRUEncryptionParameters.f1736N;
            int i2 = nTRUEncryptionParameters.df1;
            int i3 = nTRUEncryptionParameters.df2;
            int i4 = nTRUEncryptionParameters.df3;
            int i5 = nTRUEncryptionParameters.fastFp ? nTRUEncryptionParameters.df3 : nTRUEncryptionParameters.df3 - 1;
            this.f1744h = IntegerPolynomial.fromBinary(inputStream, nTRUEncryptionParameters.f1736N, nTRUEncryptionParameters.f1742q);
            this.f1745t = ProductFormPolynomial.fromBinary(inputStream, i, i2, i3, i4, i5);
        } else {
            this.f1744h = IntegerPolynomial.fromBinary(inputStream, nTRUEncryptionParameters.f1736N, nTRUEncryptionParameters.f1742q);
            IntegerPolynomial fromBinary3Tight = IntegerPolynomial.fromBinary3Tight(inputStream, nTRUEncryptionParameters.f1736N);
            this.f1745t = nTRUEncryptionParameters.sparse ? new SparseTernaryPolynomial(fromBinary3Tight) : new DenseTernaryPolynomial(fromBinary3Tight);
        }
        init();
    }

    public NTRUEncryptionPrivateKeyParameters(IntegerPolynomial integerPolynomial, Polynomial polynomial, IntegerPolynomial integerPolynomial2, NTRUEncryptionParameters nTRUEncryptionParameters) {
        super(true, nTRUEncryptionParameters);
        this.f1744h = integerPolynomial;
        this.f1745t = polynomial;
        this.f1743fp = integerPolynomial2;
    }

    public NTRUEncryptionPrivateKeyParameters(byte[] bArr, NTRUEncryptionParameters nTRUEncryptionParameters) throws IOException {
        this(new ByteArrayInputStream(bArr), nTRUEncryptionParameters);
    }

    private void init() {
        if (this.params.fastFp) {
            this.f1743fp = new IntegerPolynomial(this.params.f1736N);
            this.f1743fp.coeffs[0] = 1;
            return;
        }
        this.f1743fp = this.f1745t.toIntegerPolynomial().invertF3();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NTRUEncryptionPrivateKeyParameters)) {
            return false;
        }
        NTRUEncryptionPrivateKeyParameters nTRUEncryptionPrivateKeyParameters = (NTRUEncryptionPrivateKeyParameters) obj;
        if (this.params == null) {
            if (nTRUEncryptionPrivateKeyParameters.params != null) {
                return false;
            }
        } else if (!this.params.equals(nTRUEncryptionPrivateKeyParameters.params)) {
            return false;
        }
        if (this.f1745t == null) {
            if (nTRUEncryptionPrivateKeyParameters.f1745t != null) {
                return false;
            }
        } else if (!this.f1745t.equals(nTRUEncryptionPrivateKeyParameters.f1745t)) {
            return false;
        }
        return this.f1744h.equals(nTRUEncryptionPrivateKeyParameters.f1744h);
    }

    public byte[] getEncoded() {
        byte[] binary = this.f1744h.toBinary(this.params.f1742q);
        byte[] binary2 = this.f1745t instanceof ProductFormPolynomial ? ((ProductFormPolynomial) this.f1745t).toBinary() : this.f1745t.toIntegerPolynomial().toBinary3Tight();
        byte[] bArr = new byte[binary.length + binary2.length];
        System.arraycopy(binary, 0, bArr, 0, binary.length);
        System.arraycopy(binary2, 0, bArr, binary.length, binary2.length);
        return bArr;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.params == null ? 0 : this.params.hashCode();
        int hashCode2 = this.f1745t == null ? 0 : this.f1745t.hashCode();
        if (this.f1744h != null) {
            i = this.f1744h.hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
