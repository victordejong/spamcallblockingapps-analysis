package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/MaxFragmentLength.class */
public class MaxFragmentLength {
    public static final short pow2_10 = 2;
    public static final short pow2_11 = 3;
    public static final short pow2_12 = 4;
    public static final short pow2_9 = 1;

    public static boolean isValid(short s) {
        boolean z = true;
        if (s < 1 || s > 4) {
            z = false;
        }
        return z;
    }
}
