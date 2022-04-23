package org.spongycastle.operator.p037bc;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSAEngine;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* renamed from: org.spongycastle.operator.bc.BcRSAAsymmetricKeyUnwrapper */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/BcRSAAsymmetricKeyUnwrapper.class */
public class BcRSAAsymmetricKeyUnwrapper extends BcAsymmetricKeyUnwrapper {
    public BcRSAAsymmetricKeyUnwrapper(AlgorithmIdentifier algorithmIdentifier, AsymmetricKeyParameter asymmetricKeyParameter) {
        super(algorithmIdentifier, asymmetricKeyParameter);
    }

    @Override // org.spongycastle.operator.p037bc.BcAsymmetricKeyUnwrapper
    protected AsymmetricBlockCipher createAsymmetricUnwrapper(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return new PKCS1Encoding(new RSAEngine());
    }
}
