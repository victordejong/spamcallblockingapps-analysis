package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/GOST3410PublicKeySpec.class */
public class GOST3410PublicKeySpec implements KeySpec {

    /* renamed from: a */
    private BigInteger f1532a;

    /* renamed from: p */
    private BigInteger f1533p;

    /* renamed from: q */
    private BigInteger f1534q;

    /* renamed from: y */
    private BigInteger f1535y;

    public GOST3410PublicKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f1535y = bigInteger;
        this.f1533p = bigInteger2;
        this.f1534q = bigInteger3;
        this.f1532a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f1532a;
    }

    public BigInteger getP() {
        return this.f1533p;
    }

    public BigInteger getQ() {
        return this.f1534q;
    }

    public BigInteger getY() {
        return this.f1535y;
    }
}
