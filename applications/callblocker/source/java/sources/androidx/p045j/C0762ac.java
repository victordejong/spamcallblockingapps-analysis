package androidx.p045j;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.p026h.C0595u;
/* renamed from: androidx.j.ac */
/* loaded from: classes-dex2jar.jar:androidx/j/ac.class */
public class C0762ac {

    /* renamed from: a */
    static final Property<View, Float> f2663a;

    /* renamed from: b */
    static final Property<View, Rect> f2664b;

    /* renamed from: c */
    private static final C0770ai f2665c;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f2665c = new C0769ah();
        } else if (Build.VERSION.SDK_INT >= 23) {
            f2665c = new C0768ag();
        } else if (Build.VERSION.SDK_INT >= 22) {
            f2665c = new C0767af();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f2665c = new C0766ae();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f2665c = new C0765ad();
        } else {
            f2665c = new C0770ai();
        }
        f2663a = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.j.ac.1
            /* renamed from: a */
            public Float get(View view) {
                return Float.valueOf(C0762ac.m19493c(view));
            }

            /* renamed from: a */
            public void set(View view, Float f) {
                C0762ac.m19499a(view, f.floatValue());
            }
        };
        f2664b = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.j.ac.2
            /* renamed from: a */
            public Rect get(View view) {
                return C0595u.m20371A(view);
            }

            /* renamed from: a */
            public void set(View view, Rect rect) {
                C0595u.m20351a(view, rect);
            }
        };
    }

    /* renamed from: a */
    public static AbstractC0761ab m19500a(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0760aa(view) : C0831z.m19331d(view);
    }

    /* renamed from: a */
    public static void m19499a(View view, float f) {
        f2665c.mo19484a(view, f);
    }

    /* renamed from: a */
    public static void m19498a(View view, int i) {
        f2665c.mo19483a(view, i);
    }

    /* renamed from: a */
    public static void m19497a(View view, int i, int i2, int i3, int i4) {
        f2665c.mo19482a(view, i, i2, i3, i4);
    }

    /* renamed from: a */
    public static void m19496a(View view, Matrix matrix) {
        f2665c.mo19481a(view, matrix);
    }

    /* renamed from: b */
    public static AbstractC0777am m19495b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0776al(view) : new C0775ak(view.getWindowToken());
    }

    /* renamed from: b */
    public static void m19494b(View view, Matrix matrix) {
        f2665c.mo19479b(view, matrix);
    }

    /* renamed from: c */
    public static float m19493c(View view) {
        return f2665c.mo19485a(view);
    }

    /* renamed from: d */
    public static void m19492d(View view) {
        f2665c.mo19480b(view);
    }

    /* renamed from: e */
    public static void m19491e(View view) {
        f2665c.mo19478c(view);
    }
}
