package org.spongycastle.asn1.p021ua;

import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.p032ec.ECConstants;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
/* renamed from: org.spongycastle.asn1.ua.DSTU4145PointEncoder */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/ua/DSTU4145PointEncoder.class */
public abstract class DSTU4145PointEncoder {
    public static ECPoint decodePoint(ECCurve eCCurve, byte[] bArr) {
        ECFieldElement fromBigInteger = eCCurve.fromBigInteger(BigInteger.valueOf(bArr[bArr.length - 1] & 1));
        ECFieldElement fromBigInteger2 = eCCurve.fromBigInteger(new BigInteger(1, bArr));
        ECFieldElement eCFieldElement = fromBigInteger2;
        if (!trace(fromBigInteger2).equals(eCCurve.getA())) {
            eCFieldElement = fromBigInteger2.addOne();
        }
        ECFieldElement eCFieldElement2 = null;
        if (eCFieldElement.isZero()) {
            eCFieldElement2 = eCCurve.getB().sqrt();
        } else {
            ECFieldElement solveQuadraticEquation = solveQuadraticEquation(eCCurve, eCFieldElement.square().invert().multiply(eCCurve.getB()).add(eCCurve.getA()).add(eCFieldElement));
            if (solveQuadraticEquation != null) {
                ECFieldElement eCFieldElement3 = solveQuadraticEquation;
                if (!trace(solveQuadraticEquation).equals(fromBigInteger)) {
                    eCFieldElement3 = solveQuadraticEquation.addOne();
                }
                eCFieldElement2 = eCFieldElement.multiply(eCFieldElement3);
            }
        }
        if (eCFieldElement2 != null) {
            return eCCurve.validatePoint(eCFieldElement.toBigInteger(), eCFieldElement2.toBigInteger());
        }
        throw new IllegalArgumentException("Invalid point compression");
    }

    public static byte[] encodePoint(ECPoint eCPoint) {
        ECPoint normalize = eCPoint.normalize();
        ECFieldElement affineXCoord = normalize.getAffineXCoord();
        byte[] encoded = affineXCoord.getEncoded();
        if (!affineXCoord.isZero()) {
            if (trace(normalize.getAffineYCoord().divide(affineXCoord)).isOne()) {
                int length = encoded.length - 1;
                encoded[length] = (byte) (encoded[length] | 1);
            } else {
                int length2 = encoded.length - 1;
                encoded[length2] = (byte) (encoded[length2] & 254);
            }
        }
        return encoded;
    }

    private static ECFieldElement solveQuadraticEquation(ECCurve eCCurve, ECFieldElement eCFieldElement) {
        if (eCFieldElement.isZero()) {
            return eCFieldElement;
        }
        ECFieldElement fromBigInteger = eCCurve.fromBigInteger(ECConstants.ZERO);
        Random random = new Random();
        int fieldSize = eCFieldElement.getFieldSize();
        do {
            ECFieldElement fromBigInteger2 = eCCurve.fromBigInteger(new BigInteger(fieldSize, random));
            ECFieldElement eCFieldElement2 = eCFieldElement;
            for (int i = 1; i <= fieldSize - 1; i++) {
                ECFieldElement square = eCFieldElement2.square();
                fromBigInteger = fromBigInteger.square().add(square.multiply(fromBigInteger2));
                eCFieldElement2 = square.add(eCFieldElement);
            }
            if (!eCFieldElement2.isZero()) {
                return null;
            }
        } while (fromBigInteger.square().add(fromBigInteger).isZero());
        return fromBigInteger;
    }

    private static ECFieldElement trace(ECFieldElement eCFieldElement) {
        ECFieldElement eCFieldElement2 = eCFieldElement;
        for (int i = 1; i < eCFieldElement.getFieldSize(); i++) {
            eCFieldElement2 = eCFieldElement2.square().add(eCFieldElement);
        }
        return eCFieldElement2;
    }
}
