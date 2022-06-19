package androidx.p045j;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import androidx.core.p023g.C0552u;
import java.lang.reflect.Field;
/* renamed from: androidx.j.ae */
/* loaded from: classes-dex2jar.jar:androidx/j/ae.class */
public class C0794ae {

    /* renamed from: a */
    static final Property<View, Float> f2562a;

    /* renamed from: b */
    static final Property<View, Rect> f2563b;

    /* renamed from: c */
    private static final C0800ai f2564c;

    /* renamed from: d */
    private static Field f2565d;

    /* renamed from: e */
    private static boolean f2566e;

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            f2564c = new C0799ah();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f2564c = new C0798ag();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f2564c = new C0797af();
        } else {
            f2564c = new C0800ai();
        }
        f2562a = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.j.ae.1
            /* renamed from: a */
            public Float get(View view) {
                return Float.valueOf(C0794ae.m5331c(view));
            }

            /* renamed from: a */
            public void set(View view, Float f) {
                C0794ae.m5337a(view, f.floatValue());
            }
        };
        f2563b = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.j.ae.2
            /* renamed from: a */
            public Rect get(View view) {
                return C0552u.m6293C(view);
            }

            /* renamed from: a */
            public void set(View view, Rect rect) {
                C0552u.m6273a(view, rect);
            }
        };
    }

    /* renamed from: a */
    public static AbstractC0793ad m5338a(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0792ac(view) : C0790ab.m5346d(view);
    }

    /* renamed from: a */
    private static void m5339a() {
        if (!f2566e) {
            try {
                f2565d = View.class.getDeclaredField("mViewFlags");
                f2565d.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f2566e = true;
        }
    }

    /* renamed from: a */
    public static void m5337a(View view, float f) {
        f2564c.mo5318a(view, f);
    }

    /* renamed from: a */
    public static void m5336a(View view, int i) {
        m5339a();
        Field field = f2565d;
        if (field != null) {
            try {
                f2565d.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m5335a(View view, int i, int i2, int i3, int i4) {
        f2564c.mo5317a(view, i, i2, i3, i4);
    }

    /* renamed from: a */
    public static void m5334a(View view, Matrix matrix) {
        f2564c.mo5316a(view, matrix);
    }

    /* renamed from: b */
    public static AbstractC0807am m5333b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C0806al(view) : new C0805ak(view.getWindowToken());
    }

    /* renamed from: b */
    public static void m5332b(View view, Matrix matrix) {
        f2564c.mo5314b(view, matrix);
    }

    /* renamed from: c */
    public static float m5331c(View view) {
        return f2564c.mo5319a(view);
    }

    /* renamed from: d */
    public static void m5330d(View view) {
        f2564c.mo5315b(view);
    }

    /* renamed from: e */
    public static void m5329e(View view) {
        f2564c.mo5313c(view);
    }
}
