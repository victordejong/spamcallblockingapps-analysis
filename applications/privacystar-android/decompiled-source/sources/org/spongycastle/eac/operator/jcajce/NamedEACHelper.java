package org.spongycastle.eac.operator.jcajce;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/operator/jcajce/NamedEACHelper.class */
class NamedEACHelper extends EACHelper {
    private final String providerName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NamedEACHelper(String str) {
        this.providerName = str;
    }

    @Override // org.spongycastle.eac.operator.jcajce.EACHelper
    protected Signature createSignature(String str) throws NoSuchProviderException, NoSuchAlgorithmException {
        return Signature.getInstance(str, this.providerName);
    }
}
