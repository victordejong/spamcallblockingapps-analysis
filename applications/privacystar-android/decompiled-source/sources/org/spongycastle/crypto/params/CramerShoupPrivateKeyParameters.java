package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/CramerShoupPrivateKeyParameters.class */
public class CramerShoupPrivateKeyParameters extends CramerShoupKeyParameters {

    /* renamed from: pk */
    private CramerShoupPublicKeyParameters f1384pk;

    /* renamed from: x1 */
    private BigInteger f1385x1;

    /* renamed from: x2 */
    private BigInteger f1386x2;

    /* renamed from: y1 */
    private BigInteger f1387y1;

    /* renamed from: y2 */
    private BigInteger f1388y2;

    /* renamed from: z */
    private BigInteger f1389z;

    public CramerShoupPrivateKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        super(true, cramerShoupParameters);
        this.f1385x1 = bigInteger;
        this.f1386x2 = bigInteger2;
        this.f1387y1 = bigInteger3;
        this.f1388y2 = bigInteger4;
        this.f1389z = bigInteger5;
    }

    @Override // org.spongycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPrivateKeyParameters)) {
            return false;
        }
        CramerShoupPrivateKeyParameters cramerShoupPrivateKeyParameters = (CramerShoupPrivateKeyParameters) obj;
        boolean z = false;
        if (cramerShoupPrivateKeyParameters.getX1().equals(this.f1385x1)) {
            z = false;
            if (cramerShoupPrivateKeyParameters.getX2().equals(this.f1386x2)) {
                z = false;
                if (cramerShoupPrivateKeyParameters.getY1().equals(this.f1387y1)) {
                    z = false;
                    if (cramerShoupPrivateKeyParameters.getY2().equals(this.f1388y2)) {
                        z = false;
                        if (cramerShoupPrivateKeyParameters.getZ().equals(this.f1389z)) {
                            z = false;
                            if (super.equals(obj)) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public CramerShoupPublicKeyParameters getPk() {
        return this.f1384pk;
    }

    public BigInteger getX1() {
        return this.f1385x1;
    }

    public BigInteger getX2() {
        return this.f1386x2;
    }

    public BigInteger getY1() {
        return this.f1387y1;
    }

    public BigInteger getY2() {
        return this.f1388y2;
    }

    public BigInteger getZ() {
        return this.f1389z;
    }

    @Override // org.spongycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((((this.f1385x1.hashCode() ^ this.f1386x2.hashCode()) ^ this.f1387y1.hashCode()) ^ this.f1388y2.hashCode()) ^ this.f1389z.hashCode()) ^ super.hashCode();
    }

    public void setPk(CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters) {
        this.f1384pk = cramerShoupPublicKeyParameters;
    }
}
