package org.bouncycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PublicKey;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/GOST3410PublicKey.class */
public interface GOST3410PublicKey extends GOST3410Key, PublicKey {
    BigInteger getY();
}
