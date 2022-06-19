package p1727n3.p1734b.p1743f;

import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.lang.reflect.Field;
import p1727n3.p1734b.p1738c.p1739a.C25445c;
import p1727n3.p1807k.p1812c.p1813l.AbstractC26504a;
/* renamed from: n3.b.f.w */
/* loaded from: classes-dex2jar.jar:n3/b/f/w.class */
public class C25553w {

    /* renamed from: a */
    public static final int[] f71522a = {16842912};

    /* renamed from: b */
    public static final int[] f71523b = new int[0];

    /* renamed from: c */
    public static final Rect f71524c = new Rect();

    /* renamed from: d */
    public static Class<?> f71525d;

    static {
        try {
            f71525d = Class.forName("android.graphics.Insets");
        } catch (ClassNotFoundException e) {
        }
    }

    /* renamed from: a */
    public static boolean m3250a(Drawable drawable) {
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof AbstractC26504a) {
                return m3250a(((AbstractC26504a) drawable).m1725b());
            }
            if (drawable instanceof C25445c) {
                return m3250a(((C25445c) drawable).f71077a);
            }
            if (!(drawable instanceof ScaleDrawable)) {
                return true;
            }
            return m3250a(((ScaleDrawable) drawable).getDrawable());
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!m3250a(drawable2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static Rect m3249b(Drawable drawable) {
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
        if (f71525d != null) {
            try {
                Drawable m43296I1 = MediaSessionCompat.m43296I1(drawable);
                Object invoke = m43296I1.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(m43296I1, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f71525d.getFields()) {
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
            }
        }
        return f71524c;
    }

    /* renamed from: c */
    public static PorterDuff.Mode m3248c(int i, PorterDuff.Mode mode) {
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
