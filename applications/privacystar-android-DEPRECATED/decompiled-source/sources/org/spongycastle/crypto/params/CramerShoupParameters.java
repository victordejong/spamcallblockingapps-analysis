package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/CramerShoupParameters.class */
public class CramerShoupParameters implements CipherParameters {

    /* renamed from: H */
    private Digest f1380H;

    /* renamed from: g1 */
    private BigInteger f1381g1;

    /* renamed from: g2 */
    private BigInteger f1382g2;

    /* renamed from: p */
    private BigInteger f1383p;

    public CramerShoupParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest) {
        this.f1383p = bigInteger;
        this.f1381g1 = bigInteger2;
        this.f1382g2 = bigInteger3;
        this.f1380H = digest;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAParameters)) {
            return false;
        }
        CramerShoupParameters cramerShoupParameters = (CramerShoupParameters) obj;
        boolean z = false;
        if (cramerShoupParameters.getP().equals(this.f1383p)) {
            z = false;
            if (cramerShoupParameters.getG1().equals(this.f1381g1)) {
                z = false;
                if (cramerShoupParameters.getG2().equals(this.f1382g2)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getG1() {
        return this.f1381g1;
    }

    public BigInteger getG2() {
        return this.f1382g2;
    }

    public Digest getH() {
        this.f1380H.reset();
        return this.f1380H;
    }

    public BigInteger getP() {
        return this.f1383p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG1().hashCode()) ^ getG2().hashCode();
    }
}
