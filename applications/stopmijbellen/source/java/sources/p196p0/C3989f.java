package p196p0;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: p0.f */
/* loaded from: classes-dex2jar.jar:p0/f.class */
public final class C3989f {

    /* renamed from: a */
    public static Method f12538a;

    /* renamed from: b */
    public static boolean f12539b;

    /* renamed from: c */
    public static Field f12540c;

    /* renamed from: d */
    public static boolean f12541d;

    /* renamed from: p0.f$a */
    /* loaded from: classes-dex2jar.jar:p0/f$a.class */
    public static class C3990a {
        /* renamed from: a */
        public static void m1566a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2, i3);
        }
    }

    /* renamed from: p0.f$b */
    /* loaded from: classes-dex2jar.jar:p0/f$b.class */
    public static class C3991b {
        /* renamed from: a */
        public static boolean m1565a(PopupWindow popupWindow) {
            return popupWindow.getOverlapAnchor();
        }

        /* renamed from: b */
        public static int m1564b(PopupWindow popupWindow) {
            return popupWindow.getWindowLayoutType();
        }

        /* renamed from: c */
        public static void m1563c(PopupWindow popupWindow, boolean z) {
            popupWindow.setOverlapAnchor(z);
        }

        /* renamed from: d */
        public static void m1562d(PopupWindow popupWindow, int i) {
            popupWindow.setWindowLayoutType(i);
        }
    }

    /* renamed from: a */
    public static void m1568a(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            C3991b.m1563c(popupWindow, z);
            return;
        }
        if (!f12541d) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                f12540c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
            }
            f12541d = true;
        }
        Field field = f12540c;
        if (field == null) {
            return;
        }
        try {
            field.set(popupWindow, Boolean.valueOf(z));
        } catch (IllegalAccessException e2) {
            Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e2);
        }
    }

    /* renamed from: b */
    public static void m1567b(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            C3991b.m1562d(popupWindow, i);
            return;
        }
        if (!f12539b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f12538a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f12539b = true;
        }
        Method method = f12538a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(popupWindow, Integer.valueOf(i));
        } catch (Exception e2) {
        }
    }
}
