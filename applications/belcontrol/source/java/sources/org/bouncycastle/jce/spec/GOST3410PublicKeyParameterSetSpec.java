package org.bouncycastle.jce.spec;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec.class */
public class GOST3410PublicKeyParameterSetSpec {

    /* renamed from: a */
    private BigInteger f7647a;

    /* renamed from: p */
    private BigInteger f7648p;

    /* renamed from: q */
    private BigInteger f7649q;

    public GOST3410PublicKeyParameterSetSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f7648p = bigInteger;
        this.f7649q = bigInteger2;
        this.f7647a = bigInteger3;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof GOST3410PublicKeyParameterSetSpec) {
            GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec = (GOST3410PublicKeyParameterSetSpec) obj;
            z = false;
            if (this.f7647a.equals(gOST3410PublicKeyParameterSetSpec.f7647a)) {
                z = false;
                if (this.f7648p.equals(gOST3410PublicKeyParameterSetSpec.f7648p)) {
                    z = false;
                    if (this.f7649q.equals(gOST3410PublicKeyParameterSetSpec.f7649q)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public BigInteger getA() {
        return this.f7647a;
    }

    public BigInteger getP() {
        return this.f7648p;
    }

    public BigInteger getQ() {
        return this.f7649q;
    }

    public int hashCode() {
        return (this.f7647a.hashCode() ^ this.f7648p.hashCode()) ^ this.f7649q.hashCode();
    }
}
