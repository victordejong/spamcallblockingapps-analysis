package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/DSAParameter.class */
public class DSAParameter extends ASN1Encodable {

    /* renamed from: g */
    public DERInteger f7264g;

    /* renamed from: p */
    public DERInteger f7265p;

    /* renamed from: q */
    public DERInteger f7266q;

    public DSAParameter(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f7265p = new DERInteger(bigInteger);
        this.f7266q = new DERInteger(bigInteger2);
        this.f7264g = new DERInteger(bigInteger3);
    }

    public DSAParameter(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f7265p = DERInteger.getInstance(objects.nextElement());
        this.f7266q = DERInteger.getInstance(objects.nextElement());
        this.f7264g = DERInteger.getInstance(objects.nextElement());
    }

    public static DSAParameter getInstance(Object obj) {
        if (obj == null || (obj instanceof DSAParameter)) {
            return (DSAParameter) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new DSAParameter((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid DSAParameter: " + obj.getClass().getName());
    }

    public static DSAParameter getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getG() {
        return this.f7264g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f7265p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f7266q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7265p);
        aSN1EncodableVector.add(this.f7266q);
        aSN1EncodableVector.add(this.f7264g);
        return new DERSequence(aSN1EncodableVector);
    }
}
