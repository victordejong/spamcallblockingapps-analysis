package org.bouncycastle.asn1.p009x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.math.p012ec.ECCurve;
import org.bouncycastle.math.p012ec.ECPoint;
/* renamed from: org.bouncycastle.asn1.x9.X9ECParameters */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/X9ECParameters.class */
public class X9ECParameters extends ASN1Encodable implements X9ObjectIdentifiers {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private ECCurve curve;
    private X9FieldID fieldID;

    /* renamed from: g */
    private ECPoint f7284g;

    /* renamed from: h */
    private BigInteger f7285h;

    /* renamed from: n */
    private BigInteger f7286n;
    private byte[] seed;

    public X9ECParameters(ASN1Sequence aSN1Sequence) {
        if (!(aSN1Sequence.getObjectAt(0) instanceof DERInteger) || !((DERInteger) aSN1Sequence.getObjectAt(0)).getValue().equals(ONE)) {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        X9Curve x9Curve = new X9Curve(new X9FieldID((ASN1Sequence) aSN1Sequence.getObjectAt(1)), (ASN1Sequence) aSN1Sequence.getObjectAt(2));
        ECCurve curve = x9Curve.getCurve();
        this.curve = curve;
        this.f7284g = new X9ECPoint(curve, (ASN1OctetString) aSN1Sequence.getObjectAt(3)).getPoint();
        this.f7286n = ((DERInteger) aSN1Sequence.getObjectAt(4)).getValue();
        this.seed = x9Curve.getSeed();
        if (aSN1Sequence.size() != 6) {
            return;
        }
        this.f7285h = ((DERInteger) aSN1Sequence.getObjectAt(5)).getValue();
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this(eCCurve, eCPoint, bigInteger, ONE, null);
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, null);
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        X9FieldID x9FieldID;
        this.curve = eCCurve;
        this.f7284g = eCPoint;
        this.f7286n = bigInteger;
        this.f7285h = bigInteger2;
        this.seed = bArr;
        if (eCCurve instanceof ECCurve.C1607Fp) {
            x9FieldID = new X9FieldID(((ECCurve.C1607Fp) eCCurve).getQ());
        } else if (!(eCCurve instanceof ECCurve.F2m)) {
            return;
        } else {
            ECCurve.F2m f2m = (ECCurve.F2m) eCCurve;
            x9FieldID = new X9FieldID(f2m.getM(), f2m.getK1(), f2m.getK2(), f2m.getK3());
        }
        this.fieldID = x9FieldID;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f7284g;
    }

    public BigInteger getH() {
        BigInteger bigInteger = this.f7285h;
        BigInteger bigInteger2 = bigInteger;
        if (bigInteger == null) {
            bigInteger2 = ONE;
        }
        return bigInteger2;
    }

    public BigInteger getN() {
        return this.f7286n;
    }

    public byte[] getSeed() {
        return this.seed;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new DERInteger(1));
        aSN1EncodableVector.add(this.fieldID);
        aSN1EncodableVector.add(new X9Curve(this.curve, this.seed));
        aSN1EncodableVector.add(new X9ECPoint(this.f7284g));
        aSN1EncodableVector.add(new DERInteger(this.f7286n));
        BigInteger bigInteger = this.f7285h;
        if (bigInteger != null) {
            aSN1EncodableVector.add(new DERInteger(bigInteger));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
