package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0552u;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: androidx.core.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public final class C0604h {

    /* renamed from: a */
    private static Method f2031a;

    /* renamed from: b */
    private static boolean f2032b;

    /* renamed from: c */
    private static Field f2033c;

    /* renamed from: d */
    private static boolean f2034d;

    /* renamed from: a */
    public static void m5984a(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f2032b) {
            try {
                f2031a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f2031a.setAccessible(true);
            } catch (Exception e) {
            }
            f2032b = true;
        }
        Method method = f2031a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(popupWindow, Integer.valueOf(i));
        } catch (Exception e2) {
        }
    }

    /* renamed from: a */
    public static void m5983a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i, i2, i3);
            return;
        }
        int i4 = i;
        if ((C0533c.m6344a(i3, C0552u.m6245f(view)) & 7) == 5) {
            i4 = i - (popupWindow.getWidth() - view.getWidth());
        }
        popupWindow.showAsDropDown(view, i4, i2);
    }

    /* renamed from: a */
    public static void m5982a(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (Build.VERSION.SDK_INT < 21) {
        } else {
            if (!f2034d) {
                try {
                    f2033c = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f2033c.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
                }
                f2034d = true;
            }
            Field field = f2033c;
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
}
