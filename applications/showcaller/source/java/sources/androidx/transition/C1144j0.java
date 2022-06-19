package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.transition.j0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/j0.class */
public class C1144j0 {

    /* renamed from: a */
    private static final C1159p0 f4939a;

    /* renamed from: b */
    static final Property<View, Float> f4940b;

    /* renamed from: c */
    static final Property<View, Rect> f4941c;

    /* renamed from: androidx.transition.j0$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/j0$a.class */
    static final class C1145a extends Property<View, Float> {
        C1145a(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(C1144j0.m30872c(view));
        }

        /* renamed from: b */
        public void set(View view, Float f) {
            C1144j0.m30867h(view, f.floatValue());
        }
    }

    /* renamed from: androidx.transition.j0$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/j0$b.class */
    static final class C1146b extends Property<View, Rect> {
        C1146b(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Rect get(View view) {
            return C1679w.m29268u(view);
        }

        /* renamed from: b */
        public void set(View view, Rect rect) {
            C1679w.m29261x0(view, rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f4939a = new C1157o0();
        } else if (i >= 23) {
            f4939a = new C1155n0();
        } else if (i >= 22) {
            f4939a = new C1153m0();
        } else if (i >= 21) {
            f4939a = new C1151l0();
        } else if (i >= 19) {
            f4939a = new C1148k0();
        } else {
            f4939a = new C1159p0();
        }
        f4940b = new C1145a(Float.class, "translationAlpha");
        f4941c = new C1146b(Rect.class, "clipBounds");
    }

    /* renamed from: a */
    public static void m30874a(View view) {
        f4939a.mo30851a(view);
    }

    /* renamed from: b */
    public static AbstractC1142i0 m30873b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C1139h0(view) : C1136g0.m30900e(view);
    }

    /* renamed from: c */
    public static float m30872c(View view) {
        return f4939a.mo30849c(view);
    }

    /* renamed from: d */
    public static AbstractC1167t0 m30871d(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C1165s0(view) : new C1163r0(view.getWindowToken());
    }

    /* renamed from: e */
    public static void m30870e(View view) {
        f4939a.mo30848d(view);
    }

    /* renamed from: f */
    public static void m30869f(View view, Matrix matrix) {
        f4939a.mo30847e(view, matrix);
    }

    /* renamed from: g */
    public static void m30868g(View view, int i, int i2, int i3, int i4) {
        f4939a.mo30846f(view, i, i2, i3, i4);
    }

    /* renamed from: h */
    public static void m30867h(View view, float f) {
        f4939a.mo30845g(view, f);
    }

    /* renamed from: i */
    public static void m30866i(View view, int i) {
        f4939a.mo30844h(view, i);
    }

    /* renamed from: j */
    public static void m30865j(View view, Matrix matrix) {
        f4939a.mo30843i(view, matrix);
    }

    /* renamed from: k */
    public static void m30864k(View view, Matrix matrix) {
        f4939a.mo30842j(view, matrix);
    }
}
