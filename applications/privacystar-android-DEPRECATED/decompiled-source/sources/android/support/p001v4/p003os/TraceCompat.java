package android.support.p001v4.p003os;

import android.os.Build;
import android.os.Trace;
/* renamed from: android.support.v4.os.TraceCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/TraceCompat.class */
public final class TraceCompat {
    private TraceCompat() {
    }

    public static void beginSection(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void endSection() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
