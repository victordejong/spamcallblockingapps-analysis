package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/GOST3410PrivateKeySpec.class */
public class GOST3410PrivateKeySpec implements KeySpec {

    /* renamed from: a */
    private BigInteger f7643a;

    /* renamed from: p */
    private BigInteger f7644p;

    /* renamed from: q */
    private BigInteger f7645q;

    /* renamed from: x */
    private BigInteger f7646x;

    public GOST3410PrivateKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f7646x = bigInteger;
        this.f7644p = bigInteger2;
        this.f7645q = bigInteger3;
        this.f7643a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f7643a;
    }

    public BigInteger getP() {
        return this.f7644p;
    }

    public BigInteger getQ() {
        return this.f7645q;
    }

    public BigInteger getX() {
        return this.f7646x;
    }
}
