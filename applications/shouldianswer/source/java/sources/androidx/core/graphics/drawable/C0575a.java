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
public final class C0575a {

    /* renamed from: a */
    private static Method f1938a;

    /* renamed from: b */
    private static boolean f1939b;

    /* renamed from: c */
    private static Method f1940c;

    /* renamed from: d */
    private static boolean f1941d;

    @Deprecated
    /* renamed from: a */
    public static void m6137a(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* renamed from: a */
    public static void m6136a(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    /* renamed from: a */
    public static void m6135a(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (!(drawable instanceof AbstractC0576b)) {
        } else {
            ((AbstractC0576b) drawable).setTint(i);
        }
    }

    /* renamed from: a */
    public static void m6134a(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m6133a(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (!(drawable instanceof AbstractC0576b)) {
        } else {
            ((AbstractC0576b) drawable).setTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m6132a(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* renamed from: a */
    public static void m6131a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    /* renamed from: a */
    public static void m6130a(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (!(drawable instanceof AbstractC0576b)) {
        } else {
            ((AbstractC0576b) drawable).setTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m6129a(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* renamed from: b */
    public static boolean m6128b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m6127b(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!f1939b) {
            try {
                f1938a = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f1938a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            f1939b = true;
        }
        Method method = f1938a;
        if (method == null) {
            return false;
        }
        try {
            method.invoke(drawable, Integer.valueOf(i));
            return true;
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
            f1938a = null;
            return false;
        }
    }

    /* renamed from: c */
    public static int m6126c(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    /* renamed from: d */
    public static boolean m6125d(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    /* renamed from: e */
    public static ColorFilter m6124e(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    /* renamed from: f */
    public static void m6123f(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
        } else if (Build.VERSION.SDK_INT < 21) {
            drawable.clearColorFilter();
        } else {
            drawable.clearColorFilter();
            if (drawable instanceof InsetDrawable) {
                m6123f(((InsetDrawable) drawable).getDrawable());
            } else if (drawable instanceof AbstractC0577c) {
                m6123f(((AbstractC0577c) drawable).mo6119a());
            } else if ((drawable instanceof DrawableContainer) && (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) != null) {
                int childCount = drawableContainerState.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    Drawable child = drawableContainerState.getChild(i);
                    if (child != null) {
                        m6123f(child);
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public static Drawable m6122g(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 23 ? drawable : Build.VERSION.SDK_INT >= 21 ? !(drawable instanceof AbstractC0576b) ? new C0579e(drawable) : drawable : !(drawable instanceof AbstractC0576b) ? new C0578d(drawable) : drawable;
    }

    /* renamed from: h */
    public static <T extends Drawable> T m6121h(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable instanceof AbstractC0577c) {
            drawable2 = ((AbstractC0577c) drawable).mo6119a();
        }
        return (T) drawable2;
    }

    /* renamed from: i */
    public static int m6120i(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.getLayoutDirection();
        }
        if (Build.VERSION.SDK_INT < 17) {
            return 0;
        }
        if (!f1941d) {
            try {
                f1940c = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f1940c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
            }
            f1941d = true;
        }
        Method method = f1940c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, new Object[0])).intValue();
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
            f1940c = null;
            return 0;
        }
    }
}
