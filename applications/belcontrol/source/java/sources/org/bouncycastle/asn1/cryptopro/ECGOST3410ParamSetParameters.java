package org.bouncycastle.asn1.cryptopro;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters.class */
public class ECGOST3410ParamSetParameters extends ASN1Encodable {

    /* renamed from: a */
    public DERInteger f7225a;

    /* renamed from: b */
    public DERInteger f7226b;

    /* renamed from: p */
    public DERInteger f7227p;

    /* renamed from: q */
    public DERInteger f7228q;

    /* renamed from: x */
    public DERInteger f7229x;

    /* renamed from: y */
    public DERInteger f7230y;

    public ECGOST3410ParamSetParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i, BigInteger bigInteger5) {
        this.f7225a = new DERInteger(bigInteger);
        this.f7226b = new DERInteger(bigInteger2);
        this.f7227p = new DERInteger(bigInteger3);
        this.f7228q = new DERInteger(bigInteger4);
        this.f7229x = new DERInteger(i);
        this.f7230y = new DERInteger(bigInteger5);
    }

    public ECGOST3410ParamSetParameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f7225a = (DERInteger) objects.nextElement();
        this.f7226b = (DERInteger) objects.nextElement();
        this.f7227p = (DERInteger) objects.nextElement();
        this.f7228q = (DERInteger) objects.nextElement();
        this.f7229x = (DERInteger) objects.nextElement();
        this.f7230y = (DERInteger) objects.nextElement();
    }

    public static ECGOST3410ParamSetParameters getInstance(Object obj) {
        if (obj == null || (obj instanceof ECGOST3410ParamSetParameters)) {
            return (ECGOST3410ParamSetParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new ECGOST3410ParamSetParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    public static ECGOST3410ParamSetParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getA() {
        return this.f7225a.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f7227p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f7228q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7225a);
        aSN1EncodableVector.add(this.f7226b);
        aSN1EncodableVector.add(this.f7227p);
        aSN1EncodableVector.add(this.f7228q);
        aSN1EncodableVector.add(this.f7229x);
        aSN1EncodableVector.add(this.f7230y);
        return new DERSequence(aSN1EncodableVector);
    }
}
