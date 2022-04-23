package androidx.core.graphics.drawable;

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
/* renamed from: androidx.core.graphics.drawable.a */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/a.class */
public final class C0283a {

    /* renamed from: a */
    private static Method f1688a;

    /* renamed from: b */
    private static boolean f1689b;

    /* renamed from: c */
    private static Method f1690c;

    /* renamed from: d */
    private static boolean f1691d;

    /* renamed from: a */
    public static void m13478a(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* renamed from: b */
    public static boolean m13477b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    /* renamed from: c */
    public static void m13476c(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        Drawable b;
        int i = Build.VERSION.SDK_INT;
        if (i < 23 && i >= 21) {
            drawable.clearColorFilter();
            if (drawable instanceof InsetDrawable) {
                b = ((InsetDrawable) drawable).getDrawable();
            } else if (drawable instanceof AbstractC0285c) {
                b = ((AbstractC0285c) drawable).m13459b();
            } else if ((drawable instanceof DrawableContainer) && (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) != null) {
                int childCount = drawableContainerState.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    Drawable child = drawableContainerState.getChild(i2);
                    if (child != null) {
                        m13476c(child);
                    }
                }
                return;
            } else {
                return;
            }
            m13476c(b);
            return;
        }
        drawable.clearColorFilter();
    }

    /* renamed from: d */
    public static int m13475d(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    /* renamed from: e */
    public static ColorFilter m13474e(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    /* renamed from: f */
    public static int m13473f(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return drawable.getLayoutDirection();
        }
        if (i < 17) {
            return 0;
        }
        if (!f1691d) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f1690c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
            }
            f1691d = true;
        }
        Method method = f1690c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, new Object[0])).intValue();
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
            f1690c = null;
            return 0;
        }
    }

    /* renamed from: g */
    public static void m13472g(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    /* renamed from: h */
    public static boolean m13471h(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @Deprecated
    /* renamed from: i */
    public static void m13470i(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* renamed from: j */
    public static void m13469j(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* renamed from: k */
    public static void m13468k(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    /* renamed from: l */
    public static void m13467l(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* renamed from: m */
    public static boolean m13466m(Drawable drawable, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (i2 < 17) {
            return false;
        }
        if (!f1689b) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f1688a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            f1689b = true;
        }
        Method method = f1688a;
        if (method == null) {
            return false;
        }
        try {
            method.invoke(drawable, Integer.valueOf(i));
            return true;
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
            f1688a = null;
            return false;
        }
    }

    /* renamed from: n */
    public static void m13465n(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (drawable instanceof AbstractC0284b) {
            ((AbstractC0284b) drawable).setTint(i);
        }
    }

    /* renamed from: o */
    public static void m13464o(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof AbstractC0284b) {
            ((AbstractC0284b) drawable).setTintList(colorStateList);
        }
    }

    /* renamed from: p */
    public static void m13463p(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof AbstractC0284b) {
            ((AbstractC0284b) drawable).setTintMode(mode);
        }
    }

    /* renamed from: q */
    public static <T extends Drawable> T m13462q(Drawable drawable) {
        T t = (T) drawable;
        if (drawable instanceof AbstractC0285c) {
            t = (T) ((AbstractC0285c) drawable).m13459b();
        }
        return t;
    }

    /* renamed from: r */
    public static Drawable m13461r(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        return i >= 23 ? drawable : i >= 21 ? !(drawable instanceof AbstractC0284b) ? new e(drawable) : drawable : !(drawable instanceof AbstractC0284b) ? new d(drawable) : drawable;
    }
}
