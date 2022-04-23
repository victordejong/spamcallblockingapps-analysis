package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.ECMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECMultiplier.class */
public interface ECMultiplier {
    ECPoint multiply(ECPoint eCPoint, BigInteger bigInteger);
}
