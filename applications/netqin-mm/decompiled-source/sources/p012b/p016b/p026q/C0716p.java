package p012b.p016b.p026q;

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
import java.lang.reflect.Field;
import p012b.p016b.p020m.p021a.C0615c;
import p012b.p042i.p046j.p047m.AbstractC0909c;
import p012b.p042i.p046j.p047m.C0907a;
/* renamed from: b.b.q.p */
/* loaded from: classes-dex2jar.jar:b/b/q/p.class */
public class C0716p {

    /* renamed from: a */
    public static final int[] f3505a = {16842912};

    /* renamed from: b */
    public static final int[] f3506b = new int[0];

    /* renamed from: c */
    public static final Rect f3507c = new Rect();

    /* renamed from: d */
    public static Class<?> f3508d;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f3508d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static PorterDuff.Mode m36252a(int i, PorterDuff.Mode mode) {
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

    /* renamed from: a */
    public static boolean m36251a(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!m36251a(drawable2)) {
                    return false;
                }
            }
            return true;
        } else if (drawable instanceof AbstractC0909c) {
            return m36251a(((AbstractC0909c) drawable).mo35513a());
        } else {
            if (drawable instanceof C0615c) {
                return m36251a(((C0615c) drawable).m36720a());
            }
            if (drawable instanceof ScaleDrawable) {
                return m36251a(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
    }

    /* renamed from: b */
    public static void m36250b(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            m36249c(drawable);
        }
    }

    /* renamed from: c */
    public static void m36249c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f3505a);
        } else {
            drawable.setState(f3506b);
        }
        drawable.setState(state);
    }

    /* renamed from: d */
    public static Rect m36248d(Drawable drawable) {
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
        if (f3508d != null) {
            try {
                Drawable g = C0907a.m35515g(drawable);
                Object invoke = g.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(g, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f3508d.getFields()) {
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
        return f3507c;
    }
}
