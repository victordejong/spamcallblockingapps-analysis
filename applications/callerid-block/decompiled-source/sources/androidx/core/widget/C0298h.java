package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import d.h.m.d;
import d.h.m.t;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: androidx.core.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public final class C0298h {

    /* renamed from: a */
    private static Method f1738a;

    /* renamed from: b */
    private static boolean f1739b;

    /* renamed from: c */
    private static Field f1740c;

    /* renamed from: d */
    private static boolean f1741d;

    /* renamed from: a */
    public static void m13407a(PopupWindow popupWindow, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (i >= 21) {
            if (!f1741d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f1740c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
                }
                f1741d = true;
            }
            Field field = f1740c;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e2) {
                    Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e2);
                }
            }
        }
    }

    /* renamed from: b */
    public static void m13406b(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f1739b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f1738a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f1739b = true;
        }
        Method method = f1738a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: c */
    public static void m13405c(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i, i2, i3);
            return;
        }
        int i4 = i;
        if ((d.b(i3, t.B(view)) & 7) == 5) {
            i4 = i - (popupWindow.getWidth() - view.getWidth());
        }
        popupWindow.showAsDropDown(view, i4, i2);
    }
}
