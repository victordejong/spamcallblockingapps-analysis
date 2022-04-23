package org.spongycastle.cms;

import org.spongycastle.operator.OperatorCreationException;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/SignerInformationVerifierProvider.class */
public interface SignerInformationVerifierProvider {
    SignerInformationVerifier get(SignerId signerId) throws OperatorCreationException;
}
