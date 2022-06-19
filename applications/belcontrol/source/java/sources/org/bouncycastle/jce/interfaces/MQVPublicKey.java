package org.bouncycastle.jce.interfaces;

import java.security.PublicKey;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/MQVPublicKey.class */
public interface MQVPublicKey extends PublicKey {
    PublicKey getEphemeralKey();

    PublicKey getStaticKey();
}
