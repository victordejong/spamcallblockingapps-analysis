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
import androidx.appcompat.p019b.p020a.C0232c;
import androidx.core.graphics.drawable.AbstractC0842c;
import androidx.core.graphics.drawable.C0840a;
import java.lang.reflect.Field;
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
public final class C0407p {

    /* renamed from: d */
    private static Class<?> f1633d;

    /* renamed from: b */
    private static final int[] f1631b = {16842912};

    /* renamed from: c */
    private static final int[] f1632c = new int[0];

    /* renamed from: a */
    public static final Rect f1630a = new Rect();

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f1633d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    private C0407p() {
    }

    /* renamed from: a */
    public static PorterDuff.Mode m45622a(int i, PorterDuff.Mode mode) {
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
    public static Rect m45621a(Drawable drawable) {
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
        if (f1633d != null) {
            try {
                Drawable m44344g = C0840a.m44344g(drawable);
                Object invoke = m44344g.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(m44344g, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f1633d.getFields()) {
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
        return f1630a;
    }

    /* renamed from: b */
    public static void m45620b(Drawable drawable) {
        if (Build.VERSION.SDK_INT != 21 || !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            return;
        }
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1631b);
        } else {
            drawable.setState(f1632c);
        }
        drawable.setState(state);
    }

    /* renamed from: c */
    public static boolean m45619c(Drawable drawable) {
        while (true) {
            if (Build.VERSION.SDK_INT >= 15 || !(drawable instanceof InsetDrawable)) {
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
                        if (!m45619c(drawable2)) {
                            return false;
                        }
                    }
                    return true;
                } else if (drawable instanceof AbstractC0842c) {
                    drawable = ((AbstractC0842c) drawable).mo44342a();
                } else if (drawable instanceof C0232c) {
                    drawable = ((C0232c) drawable).f672a;
                } else if (!(drawable instanceof ScaleDrawable)) {
                    return true;
                } else {
                    drawable = ((ScaleDrawable) drawable).getDrawable();
                }
            } else {
                return false;
            }
        }
    }
}
