package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/pkcs/KeyDerivationFunc.class */
public class KeyDerivationFunc extends AlgorithmIdentifier {
    public KeyDerivationFunc(ASN1Sequence aSN1Sequence) {
        super(aSN1Sequence);
    }

    public KeyDerivationFunc(DERObjectIdentifier dERObjectIdentifier, ASN1Encodable aSN1Encodable) {
        super(dERObjectIdentifier, aSN1Encodable);
    }
}
