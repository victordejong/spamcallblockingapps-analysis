package org.bouncycastle.asn1.p009x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.math.p012ec.ECFieldElement;
/* renamed from: org.bouncycastle.asn1.x9.X9FieldElement */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/X9FieldElement.class */
public class X9FieldElement extends ASN1Encodable {
    private static X9IntegerConverter converter = new X9IntegerConverter();

    /* renamed from: f */
    public ECFieldElement f7288f;

    public X9FieldElement(int i, int i2, int i3, int i4, ASN1OctetString aSN1OctetString) {
        this(new ECFieldElement.F2m(i, i2, i3, i4, new BigInteger(1, aSN1OctetString.getOctets())));
    }

    public X9FieldElement(BigInteger bigInteger, ASN1OctetString aSN1OctetString) {
        this(new ECFieldElement.C1608Fp(bigInteger, new BigInteger(1, aSN1OctetString.getOctets())));
    }

    public X9FieldElement(ECFieldElement eCFieldElement) {
        this.f7288f = eCFieldElement;
    }

    public ECFieldElement getValue() {
        return this.f7288f;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return new DEROctetString(converter.integerToBytes(this.f7288f.toBigInteger(), converter.getByteLength(this.f7288f)));
    }
}
