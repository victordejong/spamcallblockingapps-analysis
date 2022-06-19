package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x500.X500Name;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ocsp/ServiceLocator.class */
public class ServiceLocator extends ASN1Encodable {
    public X500Name issuer;
    public DERObject locator;

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.issuer);
        DERObject dERObject = this.locator;
        if (dERObject != null) {
            aSN1EncodableVector.add(dERObject);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
