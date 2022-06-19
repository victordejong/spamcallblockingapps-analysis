package p020b.p041h.p050l;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;
/* renamed from: b.h.l.g */
/* loaded from: classes-dex2jar.jar:b/h/l/g.class */
public final class C1653g {

    /* renamed from: a */
    private static Field f6318a;

    /* renamed from: b */
    private static boolean f6319b;

    /* renamed from: a */
    private static void m29427a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f6319b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f6318a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f6319b = true;
        }
        Field field = f6318a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    /* renamed from: b */
    public static void m29426b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                m29427a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                m29427a(layoutInflater, factory2);
            }
        }
    }
}
