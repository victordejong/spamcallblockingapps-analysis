package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import d.h.m.t;
/* renamed from: androidx.transition.j0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/j0.class */
public class C0497j0 {

    /* renamed from: a */
    private static final C0507p0 f2736a;

    /* renamed from: b */
    static final Property<View, Float> f2737b;

    /* renamed from: c */
    static final Property<View, Rect> f2738c;

    /* renamed from: androidx.transition.j0$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/j0$a.class */
    static final class C0498a extends Property<View, Float> {
        C0498a(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(C0497j0.m12021c(view));
        }

        /* renamed from: b */
        public void set(View view, Float f) {
            C0497j0.m12016h(view, f.floatValue());
        }
    }

    /* renamed from: androidx.transition.j0$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/j0$b.class */
    static final class C0499b extends Property<View, Rect> {
        C0499b(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Rect get(View view) {
            return t.u(view);
        }

        /* renamed from: b */
        public void set(View view, Rect rect) {
            t.t0(view, rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f2736a = i >= 29 ? new o0() : i >= 23 ? new n0() : i >= 22 ? new m0() : i >= 21 ? new l0() : i >= 19 ? new k0() : new C0507p0();
        f2737b = new C0498a(Float.class, "translationAlpha");
        f2738c = new C0499b(Rect.class, "clipBounds");
    }

    /* renamed from: a */
    static void m12023a(View view) {
        f2736a.m12000a(view);
    }

    /* renamed from: b */
    public static AbstractC0495i0 m12022b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new h0(view) : g0.e(view);
    }

    /* renamed from: c */
    static float m12021c(View view) {
        return f2736a.m11998c(view);
    }

    /* renamed from: d */
    public static AbstractC0511t0 m12020d(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new s0(view) : new r0(view.getWindowToken());
    }

    /* renamed from: e */
    static void m12019e(View view) {
        f2736a.m11997d(view);
    }

    /* renamed from: f */
    public static void m12018f(View view, Matrix matrix) {
        f2736a.m11996e(view, matrix);
    }

    /* renamed from: g */
    public static void m12017g(View view, int i, int i2, int i3, int i4) {
        f2736a.m11995f(view, i, i2, i3, i4);
    }

    /* renamed from: h */
    public static void m12016h(View view, float f) {
        f2736a.m11994g(view, f);
    }

    /* renamed from: i */
    static void m12015i(View view, int i) {
        f2736a.m11993h(view, i);
    }

    /* renamed from: j */
    public static void m12014j(View view, Matrix matrix) {
        f2736a.m11992i(view, matrix);
    }

    /* renamed from: k */
    public static void m12013k(View view, Matrix matrix) {
        f2736a.m11991j(view, matrix);
    }
}
