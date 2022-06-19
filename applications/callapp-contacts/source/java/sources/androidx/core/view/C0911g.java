package androidx.core.view;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;
/* renamed from: androidx.core.view.g */
/* loaded from: classes-dex2jar.jar:androidx/core/view/g.class */
public final class C0911g {

    /* renamed from: a */
    private static Field f3747a;

    /* renamed from: b */
    private static boolean f3748b;

    private C0911g() {
    }

    /* renamed from: a */
    public static void m44189a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                m44188b(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                m44188b(layoutInflater, factory2);
            }
        }
    }

    /* renamed from: b */
    private static void m44188b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f3748b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f3747a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f3748b = true;
        }
        Field field = f3747a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }
}
