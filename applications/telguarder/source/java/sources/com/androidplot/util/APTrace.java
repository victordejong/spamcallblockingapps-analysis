package com.androidplot.util;

import android.os.Build;
import android.os.Trace;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/APTrace.class */
public abstract class APTrace {
    public static void begin(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void end() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
