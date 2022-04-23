package org.spongycastle.operator;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/AlgorithmNameFinder.class */
public interface AlgorithmNameFinder {
    String getAlgorithmName(ASN1ObjectIdentifier aSN1ObjectIdentifier);

    String getAlgorithmName(AlgorithmIdentifier algorithmIdentifier);

    boolean hasAlgorithmName(ASN1ObjectIdentifier aSN1ObjectIdentifier);
}
