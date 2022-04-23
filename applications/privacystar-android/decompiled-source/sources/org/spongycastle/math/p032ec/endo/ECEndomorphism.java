package org.spongycastle.math.p032ec.endo;

import org.spongycastle.math.p032ec.ECPointMap;
/* renamed from: org.spongycastle.math.ec.endo.ECEndomorphism */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/endo/ECEndomorphism.class */
public interface ECEndomorphism {
    ECPointMap getPointMap();

    boolean hasEfficientPointMap();
}
