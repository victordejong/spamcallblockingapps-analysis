package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.view.v;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/ai.class */
public final class ai {

    /* renamed from: a  reason: collision with root package name */
    static final Property<View, Float> f5772a;

    /* renamed from: b  reason: collision with root package name */
    static final Property<View, Rect> f5773b;

    /* renamed from: c  reason: collision with root package name */
    private static final ao f5774c;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f5774c = new an();
        } else if (Build.VERSION.SDK_INT >= 23) {
            f5774c = new am();
        } else if (Build.VERSION.SDK_INT >= 22) {
            f5774c = new al();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f5774c = new ak();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f5774c = new aj();
        } else {
            f5774c = new ao();
        }
        f5772a = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.transition.ai.1
            @Override // android.util.Property
            public final /* synthetic */ Float get(View view) {
                return Float.valueOf(ai.c(view));
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(View view, Float f) {
                ai.a(view, f.floatValue());
            }
        };
        f5773b = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.transition.ai.2
            @Override // android.util.Property
            public final /* synthetic */ Rect get(View view) {
                return v.D(view);
            }

            @Override // android.util.Property
            public final /* synthetic */ void set(View view, Rect rect) {
                v.a(view, rect);
            }
        };
    }

    private ai() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ah a(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new ag(view) : af.c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, float f) {
        f5774c.a(view, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i) {
        f5774c.a(view, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i, int i2, int i3, int i4) {
        f5774c.a(view, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, Matrix matrix) {
        f5774c.a(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static as b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new ar(view) : new aq(view.getWindowToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(View view, Matrix matrix) {
        f5774c.b(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float c(View view) {
        return f5774c.a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(View view, Matrix matrix) {
        f5774c.c(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(View view) {
        f5774c.b(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(View view) {
        f5774c.c(view);
    }
}
