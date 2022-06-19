package org.bouncycastle.jce.interfaces;

import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/IESKey.class */
public interface IESKey extends Key {
    PrivateKey getPrivate();

    PublicKey getPublic();
}
