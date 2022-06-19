package org.bouncycastle.asn1.p009x9;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
/* renamed from: org.bouncycastle.asn1.x9.DHDomainParameters */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/DHDomainParameters.class */
public class DHDomainParameters extends ASN1Encodable {

    /* renamed from: g */
    private DERInteger f7279g;

    /* renamed from: j */
    private DERInteger f7280j;

    /* renamed from: p */
    private DERInteger f7281p;

    /* renamed from: q */
    private DERInteger f7282q;
    private DHValidationParms validationParms;

    private DHDomainParameters(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() < 3 || aSN1Sequence.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f7281p = DERInteger.getInstance(objects.nextElement());
        this.f7279g = DERInteger.getInstance(objects.nextElement());
        this.f7282q = DERInteger.getInstance(objects.nextElement());
        DEREncodable next = getNext(objects);
        DEREncodable dEREncodable = next;
        if (next != null) {
            dEREncodable = next;
            if (next instanceof DERInteger) {
                this.f7280j = DERInteger.getInstance(next);
                dEREncodable = getNext(objects);
            }
        }
        if (dEREncodable == null) {
            return;
        }
        this.validationParms = DHValidationParms.getInstance(dEREncodable.getDERObject());
    }

    public DHDomainParameters(DERInteger dERInteger, DERInteger dERInteger2, DERInteger dERInteger3, DERInteger dERInteger4, DHValidationParms dHValidationParms) {
        if (dERInteger != null) {
            if (dERInteger2 == null) {
                throw new IllegalArgumentException("'g' cannot be null");
            }
            if (dERInteger3 == null) {
                throw new IllegalArgumentException("'q' cannot be null");
            }
            this.f7281p = dERInteger;
            this.f7279g = dERInteger2;
            this.f7282q = dERInteger3;
            this.f7280j = dERInteger4;
            this.validationParms = dHValidationParms;
            return;
        }
        throw new IllegalArgumentException("'p' cannot be null");
    }

    public static DHDomainParameters getInstance(Object obj) {
        if (obj == null || (obj instanceof DHDomainParameters)) {
            return (DHDomainParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new DHDomainParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid DHDomainParameters: " + obj.getClass().getName());
    }

    public static DHDomainParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    private static DEREncodable getNext(Enumeration enumeration) {
        return enumeration.hasMoreElements() ? (DEREncodable) enumeration.nextElement() : null;
    }

    public DERInteger getG() {
        return this.f7279g;
    }

    public DERInteger getJ() {
        return this.f7280j;
    }

    public DERInteger getP() {
        return this.f7281p;
    }

    public DERInteger getQ() {
        return this.f7282q;
    }

    public DHValidationParms getValidationParms() {
        return this.validationParms;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7281p);
        aSN1EncodableVector.add(this.f7279g);
        aSN1EncodableVector.add(this.f7282q);
        DERInteger dERInteger = this.f7280j;
        if (dERInteger != null) {
            aSN1EncodableVector.add(dERInteger);
        }
        DHValidationParms dHValidationParms = this.validationParms;
        if (dHValidationParms != null) {
            aSN1EncodableVector.add(dHValidationParms);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
