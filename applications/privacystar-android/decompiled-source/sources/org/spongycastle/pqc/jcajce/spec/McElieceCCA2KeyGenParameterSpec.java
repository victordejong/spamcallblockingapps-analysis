package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec.class */
public class McElieceCCA2KeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    public static final String SHA1 = "SHA-1";
    public static final String SHA224 = "SHA-224";
    public static final String SHA256 = "SHA-256";
    public static final String SHA384 = "SHA-384";
    public static final String SHA512 = "SHA-512";
    private final String digest;
    private int fieldPoly;

    /* renamed from: m */
    private final int f1787m;

    /* renamed from: n */
    private final int f1788n;

    /* renamed from: t */
    private final int f1789t;

    public McElieceCCA2KeyGenParameterSpec() {
        this(11, 50, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i) {
        this(i, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i, int i2) {
        this(i, i2, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i, int i2, int i3) {
        this(i, i2, i3, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i, int i2, int i3, String str) {
        this.f1787m = i;
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        } else if (i > 32) {
            throw new IllegalArgumentException(" m is too large");
        } else {
            this.f1788n = 1 << i;
            this.f1789t = i2;
            if (i2 < 0) {
                throw new IllegalArgumentException("t must be positive");
            } else if (i2 > this.f1788n) {
                throw new IllegalArgumentException("t must be less than n = 2^m");
            } else if (PolynomialRingGF2.degree(i3) != i || !PolynomialRingGF2.isIrreducible(i3)) {
                throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
            } else {
                this.fieldPoly = i3;
                this.digest = str;
            }
        }
    }

    public McElieceCCA2KeyGenParameterSpec(int i, int i2, String str) {
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        } else if (i > 32) {
            throw new IllegalArgumentException("m is too large");
        } else {
            this.f1787m = i;
            this.f1788n = 1 << i;
            if (i2 < 0) {
                throw new IllegalArgumentException("t must be positive");
            } else if (i2 > this.f1788n) {
                throw new IllegalArgumentException("t must be less than n = 2^m");
            } else {
                this.f1789t = i2;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i);
                this.digest = str;
            }
        }
    }

    public McElieceCCA2KeyGenParameterSpec(int i, String str) {
        int i2 = 1;
        if (i < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        int i3 = 0;
        while (i2 < i) {
            i2 <<= 1;
            i3++;
        }
        this.f1789t = (i2 >>> 1) / i3;
        this.f1787m = i3;
        this.f1788n = i2;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i3);
        this.digest = str;
    }

    public String getDigest() {
        return this.digest;
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f1787m;
    }

    public int getN() {
        return this.f1788n;
    }

    public int getT() {
        return this.f1789t;
    }
}
