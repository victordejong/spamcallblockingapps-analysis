package org.spongycastle.jce.spec;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec.class */
public class GOST3410PublicKeyParameterSetSpec {

    /* renamed from: a */
    private BigInteger f1529a;

    /* renamed from: p */
    private BigInteger f1530p;

    /* renamed from: q */
    private BigInteger f1531q;

    public GOST3410PublicKeyParameterSetSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f1530p = bigInteger;
        this.f1531q = bigInteger2;
        this.f1529a = bigInteger3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410PublicKeyParameterSetSpec)) {
            return false;
        }
        GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec = (GOST3410PublicKeyParameterSetSpec) obj;
        boolean z = false;
        if (this.f1529a.equals(gOST3410PublicKeyParameterSetSpec.f1529a)) {
            z = false;
            if (this.f1530p.equals(gOST3410PublicKeyParameterSetSpec.f1530p)) {
                z = false;
                if (this.f1531q.equals(gOST3410PublicKeyParameterSetSpec.f1531q)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getA() {
        return this.f1529a;
    }

    public BigInteger getP() {
        return this.f1530p;
    }

    public BigInteger getQ() {
        return this.f1531q;
    }

    public int hashCode() {
        return (this.f1529a.hashCode() ^ this.f1530p.hashCode()) ^ this.f1531q.hashCode();
    }
}
