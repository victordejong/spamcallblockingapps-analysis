package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters.class */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g */
    private GF2Matrix f1721g;

    /* renamed from: n */
    private int f1722n;

    /* renamed from: t */
    private int f1723t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f1722n = i;
        this.f1723t = i2;
        this.f1721g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f1721g;
    }

    public int getK() {
        return this.f1721g.getNumRows();
    }

    public int getN() {
        return this.f1722n;
    }

    public int getT() {
        return this.f1723t;
    }
}
