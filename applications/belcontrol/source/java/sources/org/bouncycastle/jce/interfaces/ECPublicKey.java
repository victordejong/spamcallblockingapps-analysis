package org.bouncycastle.jce.interfaces;

import java.security.PublicKey;
import org.bouncycastle.math.p012ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/interfaces/ECPublicKey.class */
public interface ECPublicKey extends ECKey, PublicKey {
    ECPoint getQ();
}
