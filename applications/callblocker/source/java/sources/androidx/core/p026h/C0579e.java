package androidx.core.p026h;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;
/* renamed from: androidx.core.h.e */
/* loaded from: classes-dex2jar.jar:androidx/core/h/e.class */
public final class C0579e {

    /* renamed from: a */
    private static Field f2077a;

    /* renamed from: b */
    private static boolean f2078b;

    /* renamed from: a */
    public static void m20412a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                m20411b(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                m20411b(layoutInflater, factory2);
            }
        }
    }

    /* renamed from: b */
    private static void m20411b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f2078b) {
            try {
                f2077a = LayoutInflater.class.getDeclaredField("mFactory2");
                f2077a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f2078b = true;
        }
        if (f2077a != null) {
            try {
                f2077a.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }
}
