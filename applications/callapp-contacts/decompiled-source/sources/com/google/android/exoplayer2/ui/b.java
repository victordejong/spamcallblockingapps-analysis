package com.google.android.exoplayer2.ui;

import android.graphics.Color;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/b.class */
final class b {
    private b() {
    }

    public static String a(int i) {
        return af.a("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Double.valueOf(Color.alpha(i) / 255.0d));
    }

    public static String a(String str) {
        return "." + str + ",." + str + " *";
    }
}
