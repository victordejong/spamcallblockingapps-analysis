package org.spongycastle.pqc.crypto.ntru;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters.class */
public class NTRUSigningPublicKeyParameters extends AsymmetricKeyParameter {

    /* renamed from: h */
    public IntegerPolynomial f1765h;
    private NTRUSigningParameters params;

    public NTRUSigningPublicKeyParameters(InputStream inputStream, NTRUSigningParameters nTRUSigningParameters) throws IOException {
        super(false);
        this.f1765h = IntegerPolynomial.fromBinary(inputStream, nTRUSigningParameters.f1757N, nTRUSigningParameters.f1762q);
        this.params = nTRUSigningParameters;
    }

    public NTRUSigningPublicKeyParameters(IntegerPolynomial integerPolynomial, NTRUSigningParameters nTRUSigningParameters) {
        super(false);
        this.f1765h = integerPolynomial;
        this.params = nTRUSigningParameters;
    }

    public NTRUSigningPublicKeyParameters(byte[] bArr, NTRUSigningParameters nTRUSigningParameters) {
        super(false);
        this.f1765h = IntegerPolynomial.fromBinary(bArr, nTRUSigningParameters.f1757N, nTRUSigningParameters.f1762q);
        this.params = nTRUSigningParameters;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters = (NTRUSigningPublicKeyParameters) obj;
        if (this.f1765h == null) {
            if (nTRUSigningPublicKeyParameters.f1765h != null) {
                return false;
            }
        } else if (!this.f1765h.equals(nTRUSigningPublicKeyParameters.f1765h)) {
            return false;
        }
        return this.params == null ? nTRUSigningPublicKeyParameters.params == null : this.params.equals(nTRUSigningPublicKeyParameters.params);
    }

    public byte[] getEncoded() {
        return this.f1765h.toBinary(this.params.f1762q);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f1765h == null ? 0 : this.f1765h.hashCode();
        if (this.params != null) {
            i = this.params.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
