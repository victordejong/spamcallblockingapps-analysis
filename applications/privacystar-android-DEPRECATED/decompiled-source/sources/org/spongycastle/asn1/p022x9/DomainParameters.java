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
/* renamed from: org.spongycastle.asn1.x9.DomainParameters */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/DomainParameters.class */
public class DomainParameters extends ASN1Object {

    /* renamed from: g */
    private final ASN1Integer f956g;

    /* renamed from: j */
    private final ASN1Integer f957j;

    /* renamed from: p */
    private final ASN1Integer f958p;

    /* renamed from: q */
    private final ASN1Integer f959q;
    private final ValidationParams validationParams;

    public DomainParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, ValidationParams validationParams) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'p' cannot be null");
        } else if (bigInteger2 == null) {
            throw new IllegalArgumentException("'g' cannot be null");
        } else if (bigInteger3 == null) {
            throw new IllegalArgumentException("'q' cannot be null");
        } else {
            this.f958p = new ASN1Integer(bigInteger);
            this.f956g = new ASN1Integer(bigInteger2);
            this.f959q = new ASN1Integer(bigInteger3);
            if (bigInteger4 != null) {
                this.f957j = new ASN1Integer(bigInteger4);
            } else {
                this.f957j = null;
            }
            this.validationParams = validationParams;
        }
    }

    private DomainParameters(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() < 3 || aSN1Sequence.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f958p = ASN1Integer.getInstance(objects.nextElement());
        this.f956g = ASN1Integer.getInstance(objects.nextElement());
        this.f959q = ASN1Integer.getInstance(objects.nextElement());
        ASN1Encodable next = getNext(objects);
        if (next == null || !(next instanceof ASN1Integer)) {
            this.f957j = null;
        } else {
            this.f957j = ASN1Integer.getInstance(next);
            next = getNext(objects);
        }
        if (next != null) {
            this.validationParams = ValidationParams.getInstance(next.toASN1Primitive());
        } else {
            this.validationParams = null;
        }
    }

    public static DomainParameters getInstance(Object obj) {
        if (obj instanceof DomainParameters) {
            return (DomainParameters) obj;
        }
        if (obj != null) {
            return new DomainParameters(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DomainParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    private static ASN1Encodable getNext(Enumeration enumeration) {
        return enumeration.hasMoreElements() ? (ASN1Encodable) enumeration.nextElement() : null;
    }

    public BigInteger getG() {
        return this.f956g.getPositiveValue();
    }

    public BigInteger getJ() {
        if (this.f957j == null) {
            return null;
        }
        return this.f957j.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f958p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f959q.getPositiveValue();
    }

    public ValidationParams getValidationParams() {
        return this.validationParams;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f958p);
        aSN1EncodableVector.add(this.f956g);
        aSN1EncodableVector.add(this.f959q);
        if (this.f957j != null) {
            aSN1EncodableVector.add(this.f957j);
        }
        if (this.validationParams != null) {
            aSN1EncodableVector.add(this.validationParams);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
