package com.google.android.material.p142a;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.p032e.p033a.p034a.C0648a;
import androidx.p032e.p033a.p034a.C0649b;
import androidx.p032e.p033a.p034a.C0650c;
/* renamed from: com.google.android.material.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/a.class */
public class C4505a {

    /* renamed from: a */
    public static final TimeInterpolator f19569a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f19570b = new C0649b();

    /* renamed from: c */
    public static final TimeInterpolator f19571c = new C0648a();

    /* renamed from: d */
    public static final TimeInterpolator f19572d = new C0650c();

    /* renamed from: e */
    public static final TimeInterpolator f19573e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m3856a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    /* renamed from: a */
    public static int m3855a(int i, int i2, float f) {
        return Math.round((i2 - i) * f) + i;
    }
}
