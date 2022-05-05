package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/mceliece/McElieceParameters.class */
public class McElieceParameters implements CipherParameters {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private Digest digest;
    private int fieldPoly;

    /* renamed from: m */
    private int f1709m;

    /* renamed from: n */
    private int f1710n;

    /* renamed from: t */
    private int f1711t;

    public McElieceParameters() {
        this(11, 50);
    }

    public McElieceParameters(int i) {
        this(i, (Digest) null);
    }

    public McElieceParameters(int i, int i2) {
        this(i, i2, (Digest) null);
    }

    public McElieceParameters(int i, int i2, int i3) {
        this(i, i2, i3, null);
    }

    public McElieceParameters(int i, int i2, int i3, Digest digest) {
        this.f1709m = i;
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        } else if (i > 32) {
            throw new IllegalArgumentException(" m is too large");
        } else {
            this.f1710n = 1 << i;
            this.f1711t = i2;
            if (i2 < 0) {
                throw new IllegalArgumentException("t must be positive");
            } else if (i2 > this.f1710n) {
                throw new IllegalArgumentException("t must be less than n = 2^m");
            } else if (PolynomialRingGF2.degree(i3) != i || !PolynomialRingGF2.isIrreducible(i3)) {
                throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
            } else {
                this.fieldPoly = i3;
                this.digest = digest;
            }
        }
    }

    public McElieceParameters(int i, int i2, Digest digest) {
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        } else if (i > 32) {
            throw new IllegalArgumentException("m is too large");
        } else {
            this.f1709m = i;
            this.f1710n = 1 << i;
            if (i2 < 0) {
                throw new IllegalArgumentException("t must be positive");
            } else if (i2 > this.f1710n) {
                throw new IllegalArgumentException("t must be less than n = 2^m");
            } else {
                this.f1711t = i2;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i);
                this.digest = digest;
            }
        }
    }

    public McElieceParameters(int i, Digest digest) {
        if (i < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f1709m = 0;
        this.f1710n = 1;
        while (this.f1710n < i) {
            this.f1710n <<= 1;
            this.f1709m++;
        }
        this.f1711t = this.f1710n >>> 1;
        this.f1711t /= this.f1709m;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(this.f1709m);
        this.digest = digest;
    }

    public McElieceParameters(Digest digest) {
        this(11, 50, digest);
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f1709m;
    }

    public int getN() {
        return this.f1710n;
    }

    public int getT() {
        return this.f1711t;
    }
}
