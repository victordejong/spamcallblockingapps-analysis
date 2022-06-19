package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1TaggedObjectParser.class */
public interface ASN1TaggedObjectParser extends DEREncodable, InMemoryRepresentable {
    DEREncodable getObjectParser(int i, boolean z);

    int getTagNo();
}
