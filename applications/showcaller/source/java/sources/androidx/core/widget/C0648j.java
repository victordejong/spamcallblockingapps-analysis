package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.core.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/j.class */
public final class C0648j {

    /* renamed from: a */
    private static Method f3101a;

    /* renamed from: b */
    private static boolean f3102b;

    /* renamed from: c */
    private static Field f3103c;

    /* renamed from: d */
    private static boolean f3104d;

    /* renamed from: a */
    public static void m33093a(PopupWindow popupWindow, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (i < 21) {
        } else {
            if (!f3104d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f3103c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
                }
                f3104d = true;
            }
            Field field = f3103c;
            if (field == null) {
                return;
            }
            try {
                field.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e2);
            }
        }
    }

    /* renamed from: b */
    public static void m33092b(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f3102b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f3101a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f3102b = true;
        }
        Method method = f3101a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(popupWindow, Integer.valueOf(i));
        } catch (Exception e2) {
        }
    }

    /* renamed from: c */
    public static void m33091c(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i, i2, i3);
            return;
        }
        int i4 = i;
        if ((C1614e.m29600b(i3, C1679w.m29346C(view)) & 7) == 5) {
            i4 = i - (popupWindow.getWidth() - view.getWidth());
        }
        popupWindow.showAsDropDown(view, i4, i2);
    }
}
