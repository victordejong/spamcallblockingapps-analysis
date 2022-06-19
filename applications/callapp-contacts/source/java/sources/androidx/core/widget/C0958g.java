package androidx.core.widget;

import android.os.Build;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: androidx.core.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/g.class */
public final class C0958g {

    /* renamed from: a */
    private static Method f3864a;

    /* renamed from: b */
    private static boolean f3865b;

    /* renamed from: c */
    private static Field f3866c;

    /* renamed from: d */
    private static boolean f3867d;

    private C0958g() {
    }

    /* renamed from: a */
    public static void m43968a(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f3865b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f3864a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f3865b = true;
        }
        Method method = f3864a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(popupWindow, Integer.valueOf(i));
        } catch (Exception e2) {
        }
    }

    /* renamed from: a */
    public static void m43967a(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (Build.VERSION.SDK_INT < 21) {
        } else {
            if (!f3867d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f3866c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                }
                f3867d = true;
            }
            Field field = f3866c;
            if (field == null) {
                return;
            }
            try {
                field.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
            }
        }
    }
}
