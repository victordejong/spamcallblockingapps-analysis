package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.view.C0926v;
/* renamed from: androidx.transition.ai */
/* loaded from: classes-dex2jar.jar:androidx/transition/ai.class */
public final class C2867ai {

    /* renamed from: a */
    static final Property<View, Float> f10832a;

    /* renamed from: b */
    static final Property<View, Rect> f10833b;

    /* renamed from: c */
    private static final C2875ao f10834c;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f10834c = new C2874an();
        } else if (Build.VERSION.SDK_INT >= 23) {
            f10834c = new C2873am();
        } else if (Build.VERSION.SDK_INT >= 22) {
            f10834c = new C2872al();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f10834c = new C2871ak();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f10834c = new C2870aj();
        } else {
            f10834c = new C2875ao();
        }
        f10832a = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.transition.ai.1
            @Override // android.util.Property
            public final /* synthetic */ Float get(View view) {
                return Float.valueOf(C2867ai.m39737c(view));
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(View view, Float f) {
                C2867ai.m39743a(view, f.floatValue());
            }
        };
        f10833b = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.transition.ai.2
            @Override // android.util.Property
            public final /* synthetic */ Rect get(View view) {
                return C0926v.m44155D(view);
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(View view, Rect rect) {
                C0926v.m44129a(view, rect);
            }
        };
    }

    private C2867ai() {
    }

    /* renamed from: a */
    public static AbstractC2866ah m39744a(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C2865ag(view) : C2863af.m39751c(view);
    }

    /* renamed from: a */
    public static void m39743a(View view, float f) {
        f10834c.mo39732a(view, f);
    }

    /* renamed from: a */
    public static void m39742a(View view, int i) {
        f10834c.mo39731a(view, i);
    }

    /* renamed from: a */
    public static void m39741a(View view, int i, int i2, int i3, int i4) {
        f10834c.mo39730a(view, i, i2, i3, i4);
    }

    /* renamed from: a */
    public static void m39740a(View view, Matrix matrix) {
        f10834c.mo39729a(view, matrix);
    }

    /* renamed from: b */
    public static AbstractC2879as m39739b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C2878ar(view) : new C2877aq(view.getWindowToken());
    }

    /* renamed from: b */
    public static void m39738b(View view, Matrix matrix) {
        f10834c.mo39727b(view, matrix);
    }

    /* renamed from: c */
    public static float m39737c(View view) {
        return f10834c.mo39733a(view);
    }

    /* renamed from: c */
    public static void m39736c(View view, Matrix matrix) {
        f10834c.mo39725c(view, matrix);
    }

    /* renamed from: d */
    public static void m39735d(View view) {
        f10834c.mo39728b(view);
    }

    /* renamed from: e */
    public static void m39734e(View view) {
        f10834c.mo39726c(view);
    }
}
