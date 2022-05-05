package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewUtils.class */
public class ViewUtils {

    /* renamed from: a */
    private static final ViewUtilsBase f5303a;

    /* renamed from: b */
    static final Property<View, Float> f5304b;

    /* renamed from: c */
    static final Property<View, Rect> f5305c;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f5303a = new ViewUtilsApi29();
        } else if (i >= 23) {
            f5303a = new ViewUtilsApi23();
        } else if (i >= 22) {
            f5303a = new ViewUtilsApi22();
        } else if (i >= 21) {
            f5303a = new ViewUtilsApi21();
        } else if (i >= 19) {
            f5303a = new ViewUtilsApi19();
        } else {
            f5303a = new ViewUtilsBase();
        }
        f5304b = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.transition.ViewUtils.1
            /* renamed from: a */
            public Float get(View view) {
                return Float.valueOf(ViewUtils.m16689c(view));
            }

            /* renamed from: b */
            public void set(View view, Float f) {
                ViewUtils.m16684h(view, f.floatValue());
            }
        };
        f5305c = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.transition.ViewUtils.2
            /* renamed from: a */
            public Rect get(View view) {
                return ViewCompat.m19172t(view);
            }

            /* renamed from: b */
            public void set(View view, Rect rect) {
                ViewCompat.m19171t0(view, rect);
            }
        };
    }

    private ViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m16691a(@NonNull View view) {
        f5303a.mo16676a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ViewOverlayImpl m16690b(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 18 ? new ViewOverlayApi18(view) : ViewOverlayApi14.m16702e(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static float m16689c(@NonNull View view) {
        return f5303a.mo16674c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static WindowIdImpl m16688d(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 18 ? new WindowIdApi18(view) : new WindowIdApi14(view.getWindowToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m16687e(@NonNull View view) {
        f5303a.mo16673d(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m16686f(@NonNull View view, @Nullable Matrix matrix) {
        f5303a.mo16672e(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m16685g(@NonNull View view, int i, int i2, int i3, int i4) {
        f5303a.mo16671f(view, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static void m16684h(@NonNull View view, float f) {
        f5303a.mo16670g(view, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static void m16683i(@NonNull View view, int i) {
        f5303a.mo16669h(view, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static void m16682j(@NonNull View view, @NonNull Matrix matrix) {
        f5303a.mo16668i(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static void m16681k(@NonNull View view, @NonNull Matrix matrix) {
        f5303a.mo16667j(view, matrix);
    }
}
