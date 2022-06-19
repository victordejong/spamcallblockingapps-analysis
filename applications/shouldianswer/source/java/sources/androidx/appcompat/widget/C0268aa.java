package androidx.appcompat.widget;

import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.util.Log;
import androidx.appcompat.p008b.p009a.C0146c;
import androidx.core.graphics.drawable.AbstractC0577c;
import androidx.core.graphics.drawable.C0575a;
import java.lang.reflect.Field;
/* renamed from: androidx.appcompat.widget.aa */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aa.class */
public class C0268aa {

    /* renamed from: d */
    private static Class<?> f1124d;

    /* renamed from: b */
    private static final int[] f1122b = {16842912};

    /* renamed from: c */
    private static final int[] f1123c = new int[0];

    /* renamed from: a */
    public static final Rect f1121a = new Rect();

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f1124d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static PorterDuff.Mode m7306a(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i == 5) {
                return PorterDuff.Mode.SRC_IN;
            }
            if (i == 9) {
                return PorterDuff.Mode.SRC_ATOP;
            }
            switch (i) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    /* renamed from: a */
    public static Rect m7305a(Drawable drawable) {
        Field[] fields;
        if (Build.VERSION.SDK_INT >= 29) {
            Insets opticalInsets = drawable.getOpticalInsets();
            Rect rect = new Rect();
            rect.left = opticalInsets.left;
            rect.right = opticalInsets.right;
            rect.top = opticalInsets.top;
            rect.bottom = opticalInsets.bottom;
            return rect;
        }
        if (f1124d != null) {
            try {
                Drawable m6121h = C0575a.m6121h(drawable);
                Object invoke = m6121h.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(m6121h, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f1124d.getFields()) {
                        String name = field.getName();
                        boolean z = true;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (name.equals("left")) {
                                    z = false;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (name.equals("right")) {
                                    z = true;
                                    break;
                                }
                                break;
                        }
                        if (!z) {
                            rect2.left = field.getInt(invoke);
                        } else if (z) {
                            rect2.top = field.getInt(invoke);
                        } else if (z) {
                            rect2.right = field.getInt(invoke);
                        } else if (z) {
                            rect2.bottom = field.getInt(invoke);
                        }
                    }
                    return rect2;
                }
            } catch (Exception e) {
                Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f1121a;
    }

    /* renamed from: b */
    public static void m7304b(Drawable drawable) {
        if (Build.VERSION.SDK_INT != 21 || !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            return;
        }
        m7302d(drawable);
    }

    /* renamed from: c */
    public static boolean m7303c(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 15 || !(drawable instanceof InsetDrawable)) {
            if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
                return false;
            }
            if (!(drawable instanceof DrawableContainer)) {
                if (drawable instanceof AbstractC0577c) {
                    return m7303c(((AbstractC0577c) drawable).mo6119a());
                }
                if (drawable instanceof C0146c) {
                    return m7303c(((C0146c) drawable).getWrappedDrawable());
                }
                if (!(drawable instanceof ScaleDrawable)) {
                    return true;
                }
                return m7303c(((ScaleDrawable) drawable).getDrawable());
            }
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!m7303c(drawable2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: d */
    private static void m7302d(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1122b);
        } else {
            drawable.setState(f1123c);
        }
        drawable.setState(state);
    }
}
