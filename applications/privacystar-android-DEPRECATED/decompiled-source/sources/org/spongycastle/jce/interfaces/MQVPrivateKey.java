package org.spongycastle.jce.interfaces;

import java.security.PrivateKey;
import java.security.PublicKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/interfaces/MQVPrivateKey.class */
public interface MQVPrivateKey extends PrivateKey {
    PrivateKey getEphemeralPrivateKey();

    PublicKey getEphemeralPublicKey();

    PrivateKey getStaticPrivateKey();
}
