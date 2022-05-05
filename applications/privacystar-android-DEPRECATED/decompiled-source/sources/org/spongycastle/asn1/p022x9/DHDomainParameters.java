package org.spongycastle.asn1.p022x9;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
/* renamed from: org.spongycastle.asn1.x9.DHDomainParameters */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/DHDomainParameters.class */
public class DHDomainParameters extends ASN1Object {

    /* renamed from: g */
    private ASN1Integer f951g;

    /* renamed from: j */
    private ASN1Integer f952j;

    /* renamed from: p */
    private ASN1Integer f953p;

    /* renamed from: q */
    private ASN1Integer f954q;
    private DHValidationParms validationParms;

    public DHDomainParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, DHValidationParms dHValidationParms) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        } else if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        } else if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        } else {
            this.f953p = new ASN1Integer(bigInteger);
            this.f951g = new ASN1Integer(bigInteger2);
            this.f954q = new ASN1Integer(bigInteger3);
            this.f952j = new ASN1Integer(bigInteger4);
            this.validationParms = dHValidationParms;
        }
    }

    public DHDomainParameters(ASN1Integer aSN1Integer, ASN1Integer aSN1Integer2, ASN1Integer aSN1Integer3, ASN1Integer aSN1Integer4, DHValidationParms dHValidationParms) {
        if (aSN1Integer == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        } else if (aSN1Integer2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        } else if (aSN1Integer3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        } else {
            this.f953p = aSN1Integer;
            this.f951g = aSN1Integer2;
            this.f954q = aSN1Integer3;
            this.f952j = aSN1Integer4;
            this.validationParms = dHValidationParms;
        }
    }

    private DHDomainParameters(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() < 3 || aSN1Sequence.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f953p = ASN1Integer.getInstance(objects.nextElement());
        this.f951g = ASN1Integer.getInstance(objects.nextElement());
        this.f954q = ASN1Integer.getInstance(objects.nextElement());
        ASN1Encodable next = getNext(objects);
        ASN1Encodable aSN1Encodable = next;
        if (next != null) {
            aSN1Encodable = next;
            if (next instanceof ASN1Integer) {
                this.f952j = ASN1Integer.getInstance(next);
                aSN1Encodable = getNext(objects);
            }
        }
        if (aSN1Encodable != null) {
            this.validationParms = DHValidationParms.getInstance(aSN1Encodable.toASN1Primitive());
        }
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

    private static ASN1Encodable getNext(Enumeration enumeration) {
        return enumeration.hasMoreElements() ? (ASN1Encodable) enumeration.nextElement() : null;
    }

    public ASN1Integer getG() {
        return this.f951g;
    }

    public ASN1Integer getJ() {
        return this.f952j;
    }

    public ASN1Integer getP() {
        return this.f953p;
    }

    public ASN1Integer getQ() {
        return this.f954q;
    }

    public DHValidationParms getValidationParms() {
        return this.validationParms;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f953p);
        aSN1EncodableVector.add(this.f951g);
        aSN1EncodableVector.add(this.f954q);
        if (this.f952j != null) {
            aSN1EncodableVector.add(this.f952j);
        }
        if (this.validationParms != null) {
            aSN1EncodableVector.add(this.validationParms);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
