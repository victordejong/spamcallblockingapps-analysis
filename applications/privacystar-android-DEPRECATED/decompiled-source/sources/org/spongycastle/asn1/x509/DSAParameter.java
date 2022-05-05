package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/DSAParameter.class */
public class DSAParameter extends ASN1Object {

    /* renamed from: g */
    ASN1Integer f936g;

    /* renamed from: p */
    ASN1Integer f937p;

    /* renamed from: q */
    ASN1Integer f938q;

    public DSAParameter(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f937p = new ASN1Integer(bigInteger);
        this.f938q = new ASN1Integer(bigInteger2);
        this.f936g = new ASN1Integer(bigInteger3);
    }

    private DSAParameter(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f937p = ASN1Integer.getInstance(objects.nextElement());
        this.f938q = ASN1Integer.getInstance(objects.nextElement());
        this.f936g = ASN1Integer.getInstance(objects.nextElement());
    }

    public static DSAParameter getInstance(Object obj) {
        if (obj instanceof DSAParameter) {
            return (DSAParameter) obj;
        }
        if (obj != null) {
            return new DSAParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DSAParameter getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getG() {
        return this.f936g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f937p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f938q.getPositiveValue();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f937p);
        aSN1EncodableVector.add(this.f938q);
        aSN1EncodableVector.add(this.f936g);
        return new DERSequence(aSN1EncodableVector);
    }
}
