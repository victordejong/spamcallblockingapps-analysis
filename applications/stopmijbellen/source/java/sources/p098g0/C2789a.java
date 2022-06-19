package p098g0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: g0.a */
/* loaded from: classes-dex2jar.jar:g0/a.class */
public final class C2789a {

    /* renamed from: a */
    public static Method f9506a;

    /* renamed from: b */
    public static boolean f9507b;

    /* renamed from: c */
    public static Method f9508c;

    /* renamed from: d */
    public static boolean f9509d;

    /* renamed from: a */
    public static void m3014a(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            m3014a(((InsetDrawable) drawable).getDrawable());
        } else if (drawable instanceof AbstractC2791c) {
            m3014a(((AbstractC2791c) drawable).mo3005b());
        } else if ((drawable instanceof DrawableContainer) && (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) != null) {
            int childCount = drawableContainerState.getChildCount();
            for (int i = 0; i < childCount; i++) {
                Drawable child = drawableContainerState.getChild(i);
                if (child != null) {
                    m3014a(child);
                }
            }
        }
    }

    /* renamed from: b */
    public static int m3013b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.getLayoutDirection();
        }
        if (!f9509d) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                f9508c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
            }
            f9509d = true;
        }
        Method method = f9508c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, new Object[0])).intValue();
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
            f9508c = null;
            return 0;
        }
    }

    /* renamed from: c */
    public static boolean m3012c(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (!f9507b) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f9506a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            f9507b = true;
        }
        Method method = f9506a;
        if (method == null) {
            return false;
        }
        try {
            method.invoke(drawable, Integer.valueOf(i));
            return true;
        } catch (Exception e2) {
            Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
            f9506a = null;
            return false;
        }
    }

    /* renamed from: d */
    public static void m3011d(Drawable drawable, int i) {
        drawable.setTint(i);
    }

    /* renamed from: e */
    public static void m3010e(Drawable drawable, ColorStateList colorStateList) {
        drawable.setTintList(colorStateList);
    }

    /* renamed from: f */
    public static void m3009f(Drawable drawable, PorterDuff.Mode mode) {
        drawable.setTintMode(mode);
    }

    /* renamed from: g */
    public static <T extends Drawable> T m3008g(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable instanceof AbstractC2791c) {
            drawable2 = ((AbstractC2791c) drawable).mo3005b();
        }
        return (T) drawable2;
    }

    /* renamed from: h */
    public static Drawable m3007h(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 23 && !(drawable instanceof AbstractC2790b)) {
            return new C2793e(drawable);
        }
        return drawable;
    }
}
