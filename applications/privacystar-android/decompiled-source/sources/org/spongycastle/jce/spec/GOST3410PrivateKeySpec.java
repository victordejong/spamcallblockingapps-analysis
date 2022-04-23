package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/GOST3410PrivateKeySpec.class */
public class GOST3410PrivateKeySpec implements KeySpec {

    /* renamed from: a */
    private BigInteger f1525a;

    /* renamed from: p */
    private BigInteger f1526p;

    /* renamed from: q */
    private BigInteger f1527q;

    /* renamed from: x */
    private BigInteger f1528x;

    public GOST3410PrivateKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f1528x = bigInteger;
        this.f1526p = bigInteger2;
        this.f1527q = bigInteger3;
        this.f1525a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f1525a;
    }

    public BigInteger getP() {
        return this.f1526p;
    }

    public BigInteger getQ() {
        return this.f1527q;
    }

    public BigInteger getX() {
        return this.f1528x;
    }
}
