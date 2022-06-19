package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERObject.class */
public abstract class DERObject extends ASN1Encodable implements DERTags {
    public abstract void encode(DEROutputStream dEROutputStream);

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public abstract boolean equals(Object obj);

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public abstract int hashCode();

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this;
    }
}
