package org.spongycastle.jcajce.provider.asymmetric.util;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator.class */
public class PrimeCertaintyCalculator {
    private PrimeCertaintyCalculator() {
    }

    public static int getDefaultCertainty(int i) {
        return i <= 1024 ? 80 : (((i - 1) / 1024) * 16) + 96;
    }
}
