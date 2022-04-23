package org.spongycastle.pqc.jcajce.interfaces;

import java.security.PublicKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/interfaces/NHPublicKey.class */
public interface NHPublicKey extends NHKey, PublicKey {
    byte[] getPublicData();
}
