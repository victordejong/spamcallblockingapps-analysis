package org.spongycastle.pqc.jcajce.interfaces;

import java.security.PrivateKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/interfaces/NHPrivateKey.class */
public interface NHPrivateKey extends NHKey, PrivateKey {
    short[] getSecretData();
}
