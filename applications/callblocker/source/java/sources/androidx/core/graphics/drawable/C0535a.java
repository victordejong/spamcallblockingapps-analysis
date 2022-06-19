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
public final class C0535a {

    /* renamed from: a */
    private static Method f1983a;

    /* renamed from: b */
    private static boolean f1984b;

    /* renamed from: c */
    private static Method f1985c;

    /* renamed from: d */
    private static boolean f1986d;

    @Deprecated
    /* renamed from: a */
    public static void m20599a(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* renamed from: a */
    public static void m20598a(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    /* renamed from: a */
    public static void m20597a(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (!(drawable instanceof AbstractC0536b)) {
        } else {
            ((AbstractC0536b) drawable).setTint(i);
        }
    }

    /* renamed from: a */
    public static void m20596a(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m20595a(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (!(drawable instanceof AbstractC0536b)) {
        } else {
            ((AbstractC0536b) drawable).setTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m20594a(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* renamed from: a */
    public static void m20593a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    /* renamed from: a */
    public static void m20592a(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (!(drawable instanceof AbstractC0536b)) {
        } else {
            ((AbstractC0536b) drawable).setTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m20591a(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* renamed from: b */
    public static boolean m20590b(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 19 ? drawable.isAutoMirrored() : false;
    }

    /* renamed from: b */
    public static boolean m20589b(Drawable drawable, int i) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 23) {
            z = drawable.setLayoutDirection(i);
        } else if (Build.VERSION.SDK_INT >= 17) {
            if (!f1984b) {
                try {
                    f1983a = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                    f1983a.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
                }
                f1984b = true;
            }
            if (f1983a != null) {
                try {
                    f1983a.invoke(drawable, Integer.valueOf(i));
                } catch (Exception e2) {
                    Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
                    f1983a = null;
                }
            }
            z = false;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static int m20588c(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 19 ? drawable.getAlpha() : 0;
    }

    /* renamed from: d */
    public static boolean m20587d(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 21 ? drawable.canApplyTheme() : false;
    }

    /* renamed from: e */
    public static ColorFilter m20586e(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 21 ? drawable.getColorFilter() : null;
    }

    /* renamed from: f */
    public static void m20585f(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
        } else if (Build.VERSION.SDK_INT < 21) {
            drawable.clearColorFilter();
        } else {
            drawable.clearColorFilter();
            if (drawable instanceof InsetDrawable) {
                m20585f(((InsetDrawable) drawable).getDrawable());
            } else if (drawable instanceof AbstractC0537c) {
                m20585f(((AbstractC0537c) drawable).mo20581a());
            } else if ((drawable instanceof DrawableContainer) && (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) != null) {
                int childCount = drawableContainerState.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    Drawable child = drawableContainerState.getChild(i);
                    if (child != null) {
                        m20585f(child);
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public static Drawable m20584g(Drawable drawable) {
        C0539e c0539e;
        if (Build.VERSION.SDK_INT >= 23) {
            c0539e = drawable;
        } else if (Build.VERSION.SDK_INT >= 21) {
            c0539e = drawable;
            if (!(drawable instanceof AbstractC0536b)) {
                c0539e = new C0539e(drawable);
            }
        } else {
            c0539e = drawable;
            if (!(drawable instanceof AbstractC0536b)) {
                c0539e = new C0538d(drawable);
            }
        }
        return c0539e;
    }

    /* renamed from: h */
    public static <T extends Drawable> T m20583h(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable instanceof AbstractC0537c) {
            drawable2 = ((AbstractC0537c) drawable).mo20581a();
        }
        return (T) drawable2;
    }

    /* renamed from: i */
    public static int m20582i(Drawable drawable) {
        int i;
        if (Build.VERSION.SDK_INT >= 23) {
            i = drawable.getLayoutDirection();
        } else if (Build.VERSION.SDK_INT >= 17) {
            if (!f1986d) {
                try {
                    f1985c = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                    f1985c.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
                }
                f1986d = true;
            }
            if (f1985c != null) {
                try {
                    i = ((Integer) f1985c.invoke(drawable, new Object[0])).intValue();
                } catch (Exception e2) {
                    Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
                    f1985c = null;
                }
            }
            i = 0;
        } else {
            i = 0;
        }
        return i;
    }
}
