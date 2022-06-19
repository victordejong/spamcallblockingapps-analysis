package androidx.core.p026h;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
/* renamed from: androidx.core.h.v */
/* loaded from: classes-dex2jar.jar:androidx/core/h/v.class */
public final class C0604v {

    /* renamed from: a */
    private static Method f2112a;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f2112a = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
            } catch (Exception e) {
                Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
    }

    /* renamed from: a */
    public static float m20269a(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : m20266d(viewConfiguration, context);
    }

    /* renamed from: a */
    public static int m20270a(ViewConfiguration viewConfiguration) {
        return Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
    }

    /* renamed from: b */
    public static float m20268b(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : m20266d(viewConfiguration, context);
    }

    /* renamed from: c */
    public static boolean m20267c(ViewConfiguration viewConfiguration, Context context) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 28) {
            z = viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
        } else {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
            z = identifier != 0 && resources.getBoolean(identifier);
        }
        return z;
    }

    /* renamed from: d */
    private static float m20266d(ViewConfiguration viewConfiguration, Context context) {
        float dimension;
        if (Build.VERSION.SDK_INT >= 25 && f2112a != null) {
            try {
                dimension = ((Integer) f2112a.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception e) {
                Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
            return dimension;
        }
        TypedValue typedValue = new TypedValue();
        dimension = context.getTheme().resolveAttribute(16842829, typedValue, true) ? typedValue.getDimension(context.getResources().getDisplayMetrics()) : 0.0f;
        return dimension;
    }
}
