package org.bouncycastle.asn1.oiw;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/oiw/ElGamalParameter.class */
public class ElGamalParameter extends ASN1Encodable {

    /* renamed from: g */
    public DERInteger f7238g;

    /* renamed from: p */
    public DERInteger f7239p;

    public ElGamalParameter(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f7239p = new DERInteger(bigInteger);
        this.f7238g = new DERInteger(bigInteger2);
    }

    public ElGamalParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f7239p = (DERInteger) objects.nextElement();
        this.f7238g = (DERInteger) objects.nextElement();
    }

    public BigInteger getG() {
        return this.f7238g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f7239p.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7239p);
        aSN1EncodableVector.add(this.f7238g);
        return new DERSequence(aSN1EncodableVector);
    }
}
