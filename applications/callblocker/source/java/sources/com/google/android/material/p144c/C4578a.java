package com.google.android.material.p144c;

import android.graphics.Canvas;
import android.os.Build;
/* renamed from: com.google.android.material.c.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/c/a.class */
public class C4578a {
    /* renamed from: a */
    public static int m3471a(Canvas canvas, float f, float f2, float f3, float f4, int i) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
    }
}
