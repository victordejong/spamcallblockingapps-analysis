package com.google.android.material.p364a;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.p046g.p047a.p048a.C1156a;
import androidx.p046g.p047a.p048a.C1157b;
import androidx.p046g.p047a.p048a.C1158c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.material.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/a.class */
public final class C14389a {

    /* renamed from: a */
    public static final TimeInterpolator f52368a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f52369b = new C1157b();

    /* renamed from: c */
    public static final TimeInterpolator f52370c = new C1156a();

    /* renamed from: d */
    public static final TimeInterpolator f52371d = new C1158c();

    /* renamed from: e */
    public static final TimeInterpolator f52372e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m11340a(float f) {
        if (f < 0.19f) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (f <= 1.0f) {
            return (((f - 0.19f) / 0.81f) * 1.0f) + BitmapDescriptorFactory.HUE_RED;
        }
        return 1.0f;
    }

    /* renamed from: a */
    public static float m11339a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: a */
    public static int m11338a(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
