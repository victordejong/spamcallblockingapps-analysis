package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/GOST3410PublicKeySpec.class */
public class GOST3410PublicKeySpec implements KeySpec {

    /* renamed from: a */
    private BigInteger f7650a;

    /* renamed from: p */
    private BigInteger f7651p;

    /* renamed from: q */
    private BigInteger f7652q;

    /* renamed from: y */
    private BigInteger f7653y;

    public GOST3410PublicKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f7653y = bigInteger;
        this.f7651p = bigInteger2;
        this.f7652q = bigInteger3;
        this.f7650a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f7650a;
    }

    public BigInteger getP() {
        return this.f7651p;
    }

    public BigInteger getQ() {
        return this.f7652q;
    }

    public BigInteger getY() {
        return this.f7653y;
    }
}
