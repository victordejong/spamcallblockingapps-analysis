package org.bouncycastle.jce.interfaces;

import java.util.Enumeration;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObjectIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier.class */
public interface PKCS12BagAttributeCarrier {
    DEREncodable getBagAttribute(DERObjectIdentifier dERObjectIdentifier);

    Enumeration getBagAttributeKeys();

    void setBagAttribute(DERObjectIdentifier dERObjectIdentifier, DEREncodable dEREncodable);
}
