package org.spongycastle.operator.p037bc;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.signers.DSADigestSigner;
import org.spongycastle.crypto.signers.DSASigner;
import org.spongycastle.operator.OperatorCreationException;
/* renamed from: org.spongycastle.operator.bc.BcDSAContentSignerBuilder */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/BcDSAContentSignerBuilder.class */
public class BcDSAContentSignerBuilder extends BcContentSignerBuilder {
    public BcDSAContentSignerBuilder(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) {
        super(algorithmIdentifier, algorithmIdentifier2);
    }

    @Override // org.spongycastle.operator.p037bc.BcContentSignerBuilder
    protected Signer createSigner(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) throws OperatorCreationException {
        return new DSADigestSigner(new DSASigner(), this.digestProvider.get(algorithmIdentifier2));
    }
}
