package p012b.p042i.p046j.p047m;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: b.i.j.m.a */
/* loaded from: classes-dex2jar.jar:b/i/j/m/a.class */
public final class C0907a {

    /* renamed from: a */
    public static Method f4112a;

    /* renamed from: b */
    public static boolean f4113b;

    /* renamed from: c */
    public static Method f4114c;

    /* renamed from: d */
    public static boolean f4115d;

    /* renamed from: a */
    public static void m35529a(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    /* renamed from: a */
    public static void m35527a(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m35526a(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof AbstractC0908b) {
            ((AbstractC0908b) drawable).setTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m35525a(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* renamed from: a */
    public static void m35524a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    /* renamed from: a */
    public static void m35523a(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof AbstractC0908b) {
            ((AbstractC0908b) drawable).setTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m35522a(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* renamed from: a */
    public static boolean m35530a(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m35528a(Drawable drawable, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (i2 < 17) {
            return false;
        }
        if (!f4113b) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f4112a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            f4113b = true;
        }
        Method method = f4112a;
        if (method == null) {
            return false;
        }
        try {
            method.invoke(drawable, Integer.valueOf(i));
            return true;
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
            f4112a = null;
            return false;
        }
    }

    /* renamed from: b */
    public static int m35521b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    /* renamed from: b */
    public static void m35520b(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (drawable instanceof AbstractC0908b) {
            ((AbstractC0908b) drawable).setTint(i);
        }
    }

    /* renamed from: c */
    public static ColorFilter m35519c(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    /* renamed from: d */
    public static int m35518d(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return drawable.getLayoutDirection();
        }
        if (i < 17) {
            return 0;
        }
        if (!f4115d) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f4114c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
            }
            f4115d = true;
        }
        Method method = f4114c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, new Object[0])).intValue();
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
            f4114c = null;
            return 0;
        }
    }

    /* renamed from: e */
    public static boolean m35517e(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @Deprecated
    /* renamed from: f */
    public static void m35516f(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* renamed from: g */
    public static <T extends Drawable> T m35515g(Drawable drawable) {
        T t = (T) drawable;
        if (drawable instanceof AbstractC0909c) {
            t = (T) ((AbstractC0909c) drawable).mo35513a();
        }
        return t;
    }

    /* renamed from: h */
    public static Drawable m35514h(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        return i >= 23 ? drawable : i >= 21 ? !(drawable instanceof AbstractC0908b) ? new C0911e(drawable) : drawable : !(drawable instanceof AbstractC0908b) ? new C0910d(drawable) : drawable;
    }
}
