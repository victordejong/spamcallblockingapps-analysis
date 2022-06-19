package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/pkcs/DHParameter.class */
public class DHParameter extends ASN1Encodable {

    /* renamed from: g */
    public DERInteger f7240g;

    /* renamed from: l */
    public DERInteger f7241l;

    /* renamed from: p */
    public DERInteger f7242p;

    public DHParameter(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.f7242p = new DERInteger(bigInteger);
        this.f7240g = new DERInteger(bigInteger2);
        this.f7241l = i != 0 ? new DERInteger(i) : null;
    }

    public DHParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f7242p = (DERInteger) objects.nextElement();
        this.f7240g = (DERInteger) objects.nextElement();
        this.f7241l = objects.hasMoreElements() ? (DERInteger) objects.nextElement() : null;
    }

    public BigInteger getG() {
        return this.f7240g.getPositiveValue();
    }

    public BigInteger getL() {
        DERInteger dERInteger = this.f7241l;
        if (dERInteger == null) {
            return null;
        }
        return dERInteger.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f7242p.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7242p);
        aSN1EncodableVector.add(this.f7240g);
        if (getL() != null) {
            aSN1EncodableVector.add(this.f7241l);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
