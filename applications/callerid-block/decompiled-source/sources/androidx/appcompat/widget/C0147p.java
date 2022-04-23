package androidx.appcompat.widget;

import android.annotation.SuppressLint;
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
import androidx.core.graphics.drawable.AbstractC0285c;
import androidx.core.graphics.drawable.C0283a;
import d.a.l.a.c;
import java.lang.reflect.Field;
@SuppressLint({"RestrictedAPI"})
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
public class C0147p {

    /* renamed from: a */
    private static final int[] f666a = {16842912};

    /* renamed from: b */
    private static final int[] f667b = new int[0];

    /* renamed from: c */
    public static final Rect f668c = new Rect();

    /* renamed from: d */
    private static Class<?> f669d;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f669d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m14474a(Drawable drawable) {
        Drawable drawable2;
        int i = Build.VERSION.SDK_INT;
        if (i < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (i < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (i < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable3 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!m14474a(drawable3)) {
                    return false;
                }
            }
            return true;
        }
        if (drawable instanceof AbstractC0285c) {
            drawable2 = ((AbstractC0285c) drawable).m13459b();
        } else if (drawable instanceof c) {
            drawable2 = ((c) drawable).a();
        } else if (!(drawable instanceof ScaleDrawable)) {
            return true;
        } else {
            drawable2 = ((ScaleDrawable) drawable).getDrawable();
        }
        return m14474a(drawable2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m14473b(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            m14472c(drawable);
        }
    }

    /* renamed from: c */
    private static void m14472c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f666a);
        } else {
            drawable.setState(f667b);
        }
        drawable.setState(state);
    }

    /* renamed from: d */
    public static Rect m14471d(Drawable drawable) {
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
        if (f669d != null) {
            try {
                Drawable q = C0283a.m13462q(drawable);
                Object invoke = q.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(q, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f669d.getFields()) {
                        String name = field.getName();
                        char c = 65535;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (name.equals("left")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (name.equals("right")) {
                                    c = 2;
                                    break;
                                }
                                break;
                        }
                        if (c == 0) {
                            rect2.left = field.getInt(invoke);
                        } else if (c == 1) {
                            rect2.top = field.getInt(invoke);
                        } else if (c == 2) {
                            rect2.right = field.getInt(invoke);
                        } else if (c == 3) {
                            rect2.bottom = field.getInt(invoke);
                        }
                    }
                    return rect2;
                }
            } catch (Exception e) {
                Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f668c;
    }

    /* renamed from: e */
    public static PorterDuff.Mode m14470e(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
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
}
