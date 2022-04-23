package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/aa.class */
public final class aa {
    private aa() {
    }

    public static int a(int i, int i2) {
        if (i != 1) {
            if (i == 3) {
                return i2 == 32 ? 4 : 0;
            }
            if (i != 65534) {
                if (i != 6) {
                    return i != 7 ? 0 : 268435456;
                }
                return 536870912;
            }
        }
        return ac.b(i2);
    }
}
