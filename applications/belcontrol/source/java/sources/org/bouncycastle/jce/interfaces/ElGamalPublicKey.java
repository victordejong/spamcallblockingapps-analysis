package org.bouncycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PublicKey;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/ElGamalPublicKey.class */
public interface ElGamalPublicKey extends ElGamalKey, PublicKey {
    BigInteger getY();
}
