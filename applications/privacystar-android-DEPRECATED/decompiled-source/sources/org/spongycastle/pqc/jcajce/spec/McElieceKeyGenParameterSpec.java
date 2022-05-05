package org.spongycastle.pqc.jcajce.spec;

import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec.class */
public class McElieceKeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private int fieldPoly;

    /* renamed from: m */
    private int f1790m;

    /* renamed from: n */
    private int f1791n;

    /* renamed from: t */
    private int f1792t;

    public McElieceKeyGenParameterSpec() {
        this(11, 50);
    }

    public McElieceKeyGenParameterSpec(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f1790m = 0;
        this.f1791n = 1;
        while (this.f1791n < i) {
            this.f1791n <<= 1;
            this.f1790m++;
        }
        this.f1792t = this.f1791n >>> 1;
        this.f1792t /= this.f1790m;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(this.f1790m);
    }

    public McElieceKeyGenParameterSpec(int i, int i2) throws InvalidParameterException {
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        } else if (i > 32) {
            throw new IllegalArgumentException("m is too large");
        } else {
            this.f1790m = i;
            this.f1791n = 1 << i;
            if (i2 < 0) {
                throw new IllegalArgumentException("t must be positive");
            } else if (i2 > this.f1791n) {
                throw new IllegalArgumentException("t must be less than n = 2^m");
            } else {
                this.f1792t = i2;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i);
            }
        }
    }

    public McElieceKeyGenParameterSpec(int i, int i2, int i3) {
        this.f1790m = i;
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        } else if (i > 32) {
            throw new IllegalArgumentException(" m is too large");
        } else {
            this.f1791n = 1 << i;
            this.f1792t = i2;
            if (i2 < 0) {
                throw new IllegalArgumentException("t must be positive");
            } else if (i2 > this.f1791n) {
                throw new IllegalArgumentException("t must be less than n = 2^m");
            } else if (PolynomialRingGF2.degree(i3) != i || !PolynomialRingGF2.isIrreducible(i3)) {
                throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
            } else {
                this.fieldPoly = i3;
            }
        }
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f1790m;
    }

    public int getN() {
        return this.f1791n;
    }

    public int getT() {
        return this.f1792t;
    }
}
