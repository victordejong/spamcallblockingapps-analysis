package org.spongycastle.operator.p037bc;

import java.io.IOException;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSAEngine;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.util.PublicKeyFactory;
/* renamed from: org.spongycastle.operator.bc.BcRSAAsymmetricKeyWrapper */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/BcRSAAsymmetricKeyWrapper.class */
public class BcRSAAsymmetricKeyWrapper extends BcAsymmetricKeyWrapper {
    public BcRSAAsymmetricKeyWrapper(AlgorithmIdentifier algorithmIdentifier, SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        super(algorithmIdentifier, PublicKeyFactory.createKey(subjectPublicKeyInfo));
    }

    public BcRSAAsymmetricKeyWrapper(AlgorithmIdentifier algorithmIdentifier, AsymmetricKeyParameter asymmetricKeyParameter) {
        super(algorithmIdentifier, asymmetricKeyParameter);
    }

    @Override // org.spongycastle.operator.p037bc.BcAsymmetricKeyWrapper
    protected AsymmetricBlockCipher createAsymmetricWrapper(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return new PKCS1Encoding(new RSAEngine());
    }
}
