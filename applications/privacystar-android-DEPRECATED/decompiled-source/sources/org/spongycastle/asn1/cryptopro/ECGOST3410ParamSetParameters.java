package org.spongycastle.asn1.cryptopro;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters.class */
public class ECGOST3410ParamSetParameters extends ASN1Object {

    /* renamed from: a */
    ASN1Integer f876a;

    /* renamed from: b */
    ASN1Integer f877b;

    /* renamed from: p */
    ASN1Integer f878p;

    /* renamed from: q */
    ASN1Integer f879q;

    /* renamed from: x */
    ASN1Integer f880x;

    /* renamed from: y */
    ASN1Integer f881y;

    public ECGOST3410ParamSetParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i, BigInteger bigInteger5) {
        this.f876a = new ASN1Integer(bigInteger);
        this.f877b = new ASN1Integer(bigInteger2);
        this.f878p = new ASN1Integer(bigInteger3);
        this.f879q = new ASN1Integer(bigInteger4);
        this.f880x = new ASN1Integer(i);
        this.f881y = new ASN1Integer(bigInteger5);
    }

    public ECGOST3410ParamSetParameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f876a = (ASN1Integer) objects.nextElement();
        this.f877b = (ASN1Integer) objects.nextElement();
        this.f878p = (ASN1Integer) objects.nextElement();
        this.f879q = (ASN1Integer) objects.nextElement();
        this.f880x = (ASN1Integer) objects.nextElement();
        this.f881y = (ASN1Integer) objects.nextElement();
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
        return this.f876a.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f878p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f879q.getPositiveValue();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f876a);
        aSN1EncodableVector.add(this.f877b);
        aSN1EncodableVector.add(this.f878p);
        aSN1EncodableVector.add(this.f879q);
        aSN1EncodableVector.add(this.f880x);
        aSN1EncodableVector.add(this.f881y);
        return new DERSequence(aSN1EncodableVector);
    }
}
