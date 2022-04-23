package org.spongycastle.eac.jcajce;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/jcajce/DefaultEACHelper.class */
class DefaultEACHelper implements EACHelper {
    @Override // org.spongycastle.eac.jcajce.EACHelper
    public KeyFactory createKeyFactory(String str) throws NoSuchAlgorithmException {
        return KeyFactory.getInstance(str);
    }
}
