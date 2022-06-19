package org.bouncycastle.jce.provider;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/DSAEncoder.class */
public interface DSAEncoder {
    BigInteger[] decode(byte[] bArr);

    byte[] encode(BigInteger bigInteger, BigInteger bigInteger2);
}
