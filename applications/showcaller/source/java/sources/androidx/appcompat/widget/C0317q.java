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
import androidx.core.graphics.drawable.AbstractC0617c;
import androidx.core.graphics.drawable.C0615a;
import java.lang.reflect.Field;
import p020b.p021a.p024l.p025a.C1448c;
@SuppressLint({"RestrictedAPI"})
/* renamed from: androidx.appcompat.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q.class */
public class C0317q {

    /* renamed from: a */
    private static final int[] f1361a = {16842912};

    /* renamed from: b */
    private static final int[] f1362b = new int[0];

    /* renamed from: c */
    public static final Rect f1363c = new Rect();

    /* renamed from: d */
    private static Class<?> f1364d;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f1364d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m34777a(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 15 || !(drawable instanceof InsetDrawable)) {
            if (i < 15 && (drawable instanceof GradientDrawable)) {
                return false;
            }
            if (i < 17 && (drawable instanceof LayerDrawable)) {
                return false;
            }
            if (!(drawable instanceof DrawableContainer)) {
                if (drawable instanceof AbstractC0617c) {
                    return m34777a(((AbstractC0617c) drawable).mo33210b());
                }
                if (drawable instanceof C1448c) {
                    return m34777a(((C1448c) drawable).m30064a());
                }
                if (!(drawable instanceof ScaleDrawable)) {
                    return true;
                }
                return m34777a(((ScaleDrawable) drawable).getDrawable());
            }
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!m34777a(drawable2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public static void m34776b(Drawable drawable) {
        if (Build.VERSION.SDK_INT != 21 || !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            return;
        }
        m34775c(drawable);
    }

    /* renamed from: c */
    private static void m34775c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1361a);
        } else {
            drawable.setState(f1362b);
        }
        drawable.setState(state);
    }

    /* renamed from: d */
    public static Rect m34774d(Drawable drawable) {
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
        if (f1364d != null) {
            try {
                Drawable m33213q = C0615a.m33213q(drawable);
                Object invoke = m33213q.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(m33213q, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f1364d.getFields()) {
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
        return f1363c;
    }

    /* renamed from: e */
    public static PorterDuff.Mode m34773e(int i, PorterDuff.Mode mode) {
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
}
