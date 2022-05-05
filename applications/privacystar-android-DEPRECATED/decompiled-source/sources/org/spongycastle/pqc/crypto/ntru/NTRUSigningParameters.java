package org.spongycastle.pqc.crypto.ntru;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUSigningParameters.class */
public class NTRUSigningParameters implements Cloneable {

    /* renamed from: B */
    public int f1756B;

    /* renamed from: N */
    public int f1757N;
    double beta;
    public double betaSq;
    int bitsF;

    /* renamed from: d */
    public int f1758d;

    /* renamed from: d1 */
    public int f1759d1;

    /* renamed from: d2 */
    public int f1760d2;

    /* renamed from: d3 */
    public int f1761d3;
    public Digest hashAlg;
    double normBound;
    public double normBoundSq;

    /* renamed from: q */
    public int f1762q;
    public int signFailTolerance;

    public NTRUSigningParameters(int i, int i2, int i3, int i4, double d, double d2, Digest digest) {
        this.signFailTolerance = 100;
        this.bitsF = 6;
        this.f1757N = i;
        this.f1762q = i2;
        this.f1758d = i3;
        this.f1756B = i4;
        this.beta = d;
        this.normBound = d2;
        this.hashAlg = digest;
        init();
    }

    public NTRUSigningParameters(int i, int i2, int i3, int i4, int i5, int i6, double d, double d2, double d3, Digest digest) {
        this.signFailTolerance = 100;
        this.bitsF = 6;
        this.f1757N = i;
        this.f1762q = i2;
        this.f1759d1 = i3;
        this.f1760d2 = i4;
        this.f1761d3 = i5;
        this.f1756B = i6;
        this.beta = d;
        this.normBound = d2;
        this.hashAlg = digest;
        init();
    }

    public NTRUSigningParameters(InputStream inputStream) throws IOException {
        this.signFailTolerance = 100;
        this.bitsF = 6;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f1757N = dataInputStream.readInt();
        this.f1762q = dataInputStream.readInt();
        this.f1758d = dataInputStream.readInt();
        this.f1759d1 = dataInputStream.readInt();
        this.f1760d2 = dataInputStream.readInt();
        this.f1761d3 = dataInputStream.readInt();
        this.f1756B = dataInputStream.readInt();
        this.beta = dataInputStream.readDouble();
        this.normBound = dataInputStream.readDouble();
        this.signFailTolerance = dataInputStream.readInt();
        this.bitsF = dataInputStream.readInt();
        String readUTF = dataInputStream.readUTF();
        if (McElieceCCA2KeyGenParameterSpec.SHA512.equals(readUTF)) {
            this.hashAlg = new SHA512Digest();
        } else if ("SHA-256".equals(readUTF)) {
            this.hashAlg = new SHA256Digest();
        }
        init();
    }

    private void init() {
        this.betaSq = this.beta * this.beta;
        this.normBoundSq = this.normBound * this.normBound;
    }

    public NTRUSigningParameters clone() {
        return new NTRUSigningParameters(this.f1757N, this.f1762q, this.f1758d, this.f1756B, this.beta, this.normBound, this.hashAlg);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NTRUSigningParameters)) {
            return false;
        }
        NTRUSigningParameters nTRUSigningParameters = (NTRUSigningParameters) obj;
        if (this.f1756B != nTRUSigningParameters.f1756B || this.f1757N != nTRUSigningParameters.f1757N || Double.doubleToLongBits(this.beta) != Double.doubleToLongBits(nTRUSigningParameters.beta) || Double.doubleToLongBits(this.betaSq) != Double.doubleToLongBits(nTRUSigningParameters.betaSq) || this.bitsF != nTRUSigningParameters.bitsF || this.f1758d != nTRUSigningParameters.f1758d || this.f1759d1 != nTRUSigningParameters.f1759d1 || this.f1760d2 != nTRUSigningParameters.f1760d2 || this.f1761d3 != nTRUSigningParameters.f1761d3) {
            return false;
        }
        if (this.hashAlg == null) {
            if (nTRUSigningParameters.hashAlg != null) {
                return false;
            }
        } else if (!this.hashAlg.getAlgorithmName().equals(nTRUSigningParameters.hashAlg.getAlgorithmName())) {
            return false;
        }
        return Double.doubleToLongBits(this.normBound) == Double.doubleToLongBits(nTRUSigningParameters.normBound) && Double.doubleToLongBits(this.normBoundSq) == Double.doubleToLongBits(nTRUSigningParameters.normBoundSq) && this.f1762q == nTRUSigningParameters.f1762q && this.signFailTolerance == nTRUSigningParameters.signFailTolerance;
    }

    public int hashCode() {
        int i = this.f1756B;
        int i2 = this.f1757N;
        long doubleToLongBits = Double.doubleToLongBits(this.beta);
        int i3 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.betaSq);
        int i4 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        int i5 = this.bitsF;
        int i6 = this.f1758d;
        int i7 = this.f1759d1;
        int i8 = this.f1760d2;
        int i9 = this.f1761d3;
        int hashCode = this.hashAlg == null ? 0 : this.hashAlg.getAlgorithmName().hashCode();
        long doubleToLongBits3 = Double.doubleToLongBits(this.normBound);
        int i10 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.normBoundSq);
        return ((((((((((((((((((((((((((i + 31) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + hashCode) * 31) + i10) * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + this.f1762q) * 31) + this.signFailTolerance;
    }

    public String toString() {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        StringBuilder sb = new StringBuilder("SignatureParameters(N=" + this.f1757N + " q=" + this.f1762q);
        sb.append(" B=" + this.f1756B + " beta=" + decimalFormat.format(this.beta) + " normBound=" + decimalFormat.format(this.normBound) + " hashAlg=" + this.hashAlg + ")");
        return sb.toString();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(this.f1757N);
        dataOutputStream.writeInt(this.f1762q);
        dataOutputStream.writeInt(this.f1758d);
        dataOutputStream.writeInt(this.f1759d1);
        dataOutputStream.writeInt(this.f1760d2);
        dataOutputStream.writeInt(this.f1761d3);
        dataOutputStream.writeInt(this.f1756B);
        dataOutputStream.writeDouble(this.beta);
        dataOutputStream.writeDouble(this.normBound);
        dataOutputStream.writeInt(this.signFailTolerance);
        dataOutputStream.writeInt(this.bitsF);
        dataOutputStream.writeUTF(this.hashAlg.getAlgorithmName());
    }
}
