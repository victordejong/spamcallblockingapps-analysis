package org.bouncycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/ECPrivateKey.class */
public interface ECPrivateKey extends ECKey, PrivateKey {
    BigInteger getD();
}
