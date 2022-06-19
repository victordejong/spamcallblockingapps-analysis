package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: androidx.core.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public final class C0627h {

    /* renamed from: a */
    private static Method f2188a;

    /* renamed from: b */
    private static boolean f2189b;

    /* renamed from: c */
    private static Field f2190c;

    /* renamed from: d */
    private static boolean f2191d;

    /* renamed from: a */
    public static void m20149a(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f2189b) {
            try {
                f2188a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f2188a.setAccessible(true);
            } catch (Exception e) {
            }
            f2189b = true;
        }
        if (f2188a == null) {
            return;
        }
        try {
            f2188a.invoke(popupWindow, Integer.valueOf(i));
        } catch (Exception e2) {
        }
    }

    /* renamed from: a */
    public static void m20148a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i, i2, i3);
            return;
        }
        int i4 = i;
        if ((C0576c.m20421a(i3, C0595u.m20320g(view)) & 7) == 5) {
            i4 = i - (popupWindow.getWidth() - view.getWidth());
        }
        popupWindow.showAsDropDown(view, i4, i2);
    }

    /* renamed from: a */
    public static void m20147a(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (Build.VERSION.SDK_INT < 21) {
        } else {
            if (!f2191d) {
                try {
                    f2190c = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f2190c.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
                }
                f2191d = true;
            }
            if (f2190c == null) {
                return;
            }
            try {
                f2190c.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e2);
            }
        }
    }
}
