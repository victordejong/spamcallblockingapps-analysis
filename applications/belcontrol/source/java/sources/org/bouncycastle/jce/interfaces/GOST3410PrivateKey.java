package org.bouncycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/GOST3410PrivateKey.class */
public interface GOST3410PrivateKey extends GOST3410Key, PrivateKey {
    BigInteger getX();
}
