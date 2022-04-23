package org.spongycastle.eac.jcajce;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/jcajce/EACHelper.class */
interface EACHelper {
    KeyFactory createKeyFactory(String str) throws NoSuchProviderException, NoSuchAlgorithmException;
}
