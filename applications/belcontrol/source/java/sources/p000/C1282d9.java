package p000;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: d9 */
/* loaded from: classes-dex2jar.jar:d9.class */
public final class C1282d9 {

    /* renamed from: a */
    public static Method f5794a;

    /* renamed from: b */
    public static boolean f5795b;

    /* renamed from: c */
    public static Method f5796c;

    /* renamed from: d */
    public static boolean f5797d;

    /* renamed from: a */
    public static void m2744a(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* renamed from: b */
    public static boolean m2743b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    /* renamed from: c */
    public static void m2742c(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        Drawable m1917d;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23 || i < 21) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            m1917d = ((InsetDrawable) drawable).getDrawable();
        } else if (!(drawable instanceof AbstractC1405f9)) {
            if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
                return;
            }
            int childCount = drawableContainerState.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                Drawable child = drawableContainerState.getChild(i2);
                if (child != null) {
                    m2742c(child);
                }
            }
            return;
        } else {
            m1917d = ((AbstractC1405f9) drawable).m1917d();
        }
        m2742c(m1917d);
    }

    /* renamed from: d */
    public static int m2741d(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    /* renamed from: e */
    public static ColorFilter m2740e(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    /* renamed from: f */
    public static int m2739f(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return drawable.getLayoutDirection();
        }
        if (i < 17) {
            return 0;
        }
        if (!f5797d) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f5796c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
            }
            f5797d = true;
        }
        Method method = f5796c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, new Object[0])).intValue();
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
            f5796c = null;
            return 0;
        }
    }

    /* renamed from: g */
    public static void m2738g(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    /* renamed from: h */
    public static boolean m2737h(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @Deprecated
    /* renamed from: i */
    public static void m2736i(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* renamed from: j */
    public static void m2735j(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* renamed from: k */
    public static void m2734k(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    /* renamed from: l */
    public static void m2733l(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* renamed from: m */
    public static boolean m2732m(Drawable drawable, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (i2 < 17) {
            return false;
        }
        if (!f5795b) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f5794a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            f5795b = true;
        }
        Method method = f5794a;
        if (method == null) {
            return false;
        }
        try {
            method.invoke(drawable, Integer.valueOf(i));
            return true;
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
            f5794a = null;
            return false;
        }
    }

    /* renamed from: n */
    public static void m2731n(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (!(drawable instanceof AbstractC1355e9)) {
        } else {
            ((AbstractC1355e9) drawable).setTint(i);
        }
    }

    /* renamed from: o */
    public static void m2730o(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (!(drawable instanceof AbstractC1355e9)) {
        } else {
            ((AbstractC1355e9) drawable).setTintList(colorStateList);
        }
    }

    /* renamed from: p */
    public static void m2729p(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (!(drawable instanceof AbstractC1355e9)) {
        } else {
            ((AbstractC1355e9) drawable).setTintMode(mode);
        }
    }

    /* renamed from: q */
    public static <T extends Drawable> T m2728q(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable instanceof AbstractC1405f9) {
            drawable2 = ((AbstractC1405f9) drawable).m1917d();
        }
        return (T) drawable2;
    }

    /* renamed from: r */
    public static Drawable m2727r(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        return i >= 23 ? drawable : i >= 21 ? !(drawable instanceof AbstractC1355e9) ? new h9(drawable) : drawable : !(drawable instanceof AbstractC1355e9) ? new g9(drawable) : drawable;
    }
}
