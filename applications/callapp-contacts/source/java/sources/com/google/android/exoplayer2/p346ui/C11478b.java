package com.google.android.exoplayer2.p346ui;

import android.graphics.Color;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.ui.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/b.class */
final class C11478b {
    private C11478b() {
    }

    /* renamed from: a */
    public static String m20268a(int i) {
        return C11599af.m19968a("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Double.valueOf(Color.alpha(i) / 255.0d));
    }

    /* renamed from: a */
    public static String m20267a(String str) {
        return "." + str + ",." + str + " *";
    }
}
