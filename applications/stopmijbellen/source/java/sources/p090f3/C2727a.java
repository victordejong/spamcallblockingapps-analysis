package p090f3;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.C0608b;
import p301z0.C5019a;
import p301z0.C5020b;
import p301z0.C5021c;
/* renamed from: f3.a */
/* loaded from: classes-dex2jar.jar:f3/a.class */
public class C2727a {

    /* renamed from: a */
    public static final TimeInterpolator f9372a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f9373b = new C5020b();

    /* renamed from: c */
    public static final TimeInterpolator f9374c = new C5019a();

    /* renamed from: d */
    public static final TimeInterpolator f9375d = new C5021c();

    /* renamed from: e */
    public static final TimeInterpolator f9376e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m3196a(float f, float f2, float f3) {
        return C0608b.m7621n(f2, f, f3, f);
    }

    /* renamed from: b */
    public static float m3195b(float f, float f2, float f3, float f4, float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : m3196a(f, f2, (f5 - f3) / (f4 - f3));
    }
}
