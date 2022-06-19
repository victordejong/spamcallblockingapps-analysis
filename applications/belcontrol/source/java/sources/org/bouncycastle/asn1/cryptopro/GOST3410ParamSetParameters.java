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
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters.class */
public class GOST3410ParamSetParameters extends ASN1Encodable {

    /* renamed from: a */
    public DERInteger f7232a;
    public int keySize;

    /* renamed from: p */
    public DERInteger f7233p;

    /* renamed from: q */
    public DERInteger f7234q;

    public GOST3410ParamSetParameters(int i, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.keySize = i;
        this.f7233p = new DERInteger(bigInteger);
        this.f7234q = new DERInteger(bigInteger2);
        this.f7232a = new DERInteger(bigInteger3);
    }

    public GOST3410ParamSetParameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.keySize = ((DERInteger) objects.nextElement()).getValue().intValue();
        this.f7233p = (DERInteger) objects.nextElement();
        this.f7234q = (DERInteger) objects.nextElement();
        this.f7232a = (DERInteger) objects.nextElement();
    }

    public static GOST3410ParamSetParameters getInstance(Object obj) {
        if (obj == null || (obj instanceof GOST3410ParamSetParameters)) {
            return (GOST3410ParamSetParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new GOST3410ParamSetParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    public static GOST3410ParamSetParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getA() {
        return this.f7232a.getPositiveValue();
    }

    public int getKeySize() {
        return this.keySize;
    }

    public int getLKeySize() {
        return this.keySize;
    }

    public BigInteger getP() {
        return this.f7233p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f7234q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new DERInteger(this.keySize));
        aSN1EncodableVector.add(this.f7233p);
        aSN1EncodableVector.add(this.f7234q);
        aSN1EncodableVector.add(this.f7232a);
        return new DERSequence(aSN1EncodableVector);
    }
}
