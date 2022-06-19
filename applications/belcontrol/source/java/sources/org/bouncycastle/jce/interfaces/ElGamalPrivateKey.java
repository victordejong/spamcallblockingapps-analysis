package org.bouncycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/ElGamalPrivateKey.class */
public interface ElGamalPrivateKey extends ElGamalKey, PrivateKey {
    BigInteger getX();
}
