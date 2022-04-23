package com.google.android.material.a;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.g.a.a.b;
import androidx.g.a.a.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final TimeInterpolator f30173a = new LinearInterpolator();

    /* renamed from: b  reason: collision with root package name */
    public static final TimeInterpolator f30174b = new b();

    /* renamed from: c  reason: collision with root package name */
    public static final TimeInterpolator f30175c = new androidx.g.a.a.a();

    /* renamed from: d  reason: collision with root package name */
    public static final TimeInterpolator f30176d = new c();
    public static final TimeInterpolator e = new DecelerateInterpolator();

    public static float a(float f) {
        if (f < 0.19f) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (f > 1.0f) {
            return 1.0f;
        }
        return (((f - 0.19f) / 0.81f) * 1.0f) + BitmapDescriptorFactory.HUE_RED;
    }

    public static float a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static int a(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
