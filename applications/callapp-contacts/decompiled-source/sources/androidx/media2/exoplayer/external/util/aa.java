package androidx.media2.exoplayer.external.util;

import android.os.Trace;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/aa.class */
public final class aa {
    private aa() {
    }

    public static void a() {
        if (ac.f4119a >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (ac.f4119a >= 18) {
            Trace.beginSection(str);
        }
    }
}
