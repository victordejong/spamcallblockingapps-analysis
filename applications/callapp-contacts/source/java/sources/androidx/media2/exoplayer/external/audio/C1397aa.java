package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.audio.aa */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/aa.class */
public final class C1397aa {
    private C1397aa() {
    }

    /* renamed from: a */
    public static int m43025a(int i, int i2) {
        if (i != 1) {
            if (i == 3) {
                return i2 == 32 ? 4 : 0;
            } else if (i != 65534) {
                if (i == 6) {
                    return 536870912;
                }
                return i != 7 ? 0 : 268435456;
            }
        }
        return C1996ac.m41638b(i2);
    }
}
