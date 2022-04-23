package com.google.android.exoplayer2.util;

import android.os.Trace;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ae.class */
public final class ae {
    private ae() {
    }

    public static void a() {
        if (af.f22275a >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (af.f22275a >= 18) {
            Trace.beginSection(str);
        }
    }
}
