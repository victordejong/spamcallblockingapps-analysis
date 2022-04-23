package org.spongycastle.cms.p025bc;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSException;
import org.spongycastle.cms.KeyTransRecipient;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.operator.OperatorException;
import org.spongycastle.operator.p037bc.BcRSAAsymmetricKeyUnwrapper;
/* renamed from: org.spongycastle.cms.bc.BcKeyTransRecipient */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/bc/BcKeyTransRecipient.class */
public abstract class BcKeyTransRecipient implements KeyTransRecipient {
    private AsymmetricKeyParameter recipientKey;

    public BcKeyTransRecipient(AsymmetricKeyParameter asymmetricKeyParameter) {
        this.recipientKey = asymmetricKeyParameter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CipherParameters extractSecretKey(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, byte[] bArr) throws CMSException {
        try {
            return CMSUtils.getBcKey(new BcRSAAsymmetricKeyUnwrapper(algorithmIdentifier, this.recipientKey).generateUnwrappedKey(algorithmIdentifier2, bArr));
        } catch (OperatorException e) {
            throw new CMSException("exception unwrapping key: " + e.getMessage(), e);
        }
    }
}
