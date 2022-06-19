package org.bouncycastle.jce;

import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import org.bouncycastle.math.p012ec.ECCurve;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/ECPointUtil.class */
public class ECPointUtil {
    public static ECPoint decodePoint(EllipticCurve ellipticCurve, byte[] bArr) {
        ECCurve.C1607Fp c1607Fp;
        if (ellipticCurve.getField() instanceof ECFieldFp) {
            c1607Fp = new ECCurve.C1607Fp(((ECFieldFp) ellipticCurve.getField()).getP(), ellipticCurve.getA(), ellipticCurve.getB());
        } else {
            int[] midTermsOfReductionPolynomial = ((ECFieldF2m) ellipticCurve.getField()).getMidTermsOfReductionPolynomial();
            c1607Fp = midTermsOfReductionPolynomial.length == 3 ? new ECCurve.F2m(((ECFieldF2m) ellipticCurve.getField()).getM(), midTermsOfReductionPolynomial[2], midTermsOfReductionPolynomial[1], midTermsOfReductionPolynomial[0], ellipticCurve.getA(), ellipticCurve.getB()) : new ECCurve.F2m(((ECFieldF2m) ellipticCurve.getField()).getM(), midTermsOfReductionPolynomial[0], ellipticCurve.getA(), ellipticCurve.getB());
        }
        org.bouncycastle.math.p012ec.ECPoint decodePoint = c1607Fp.decodePoint(bArr);
        return new ECPoint(decodePoint.getX().toBigInteger(), decodePoint.getY().toBigInteger());
    }
}
