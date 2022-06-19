package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
/* renamed from: org.bouncycastle.math.ec.ECMultiplier */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECMultiplier.class */
public interface ECMultiplier {
    ECPoint multiply(ECPoint eCPoint, BigInteger bigInteger, PreCompInfo preCompInfo);
}
