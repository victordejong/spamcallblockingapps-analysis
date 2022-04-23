package androidx.core.widget;

import android.os.Build;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static Method f2062a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2063b;

    /* renamed from: c  reason: collision with root package name */
    private static Field f2064c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f2065d;

    private g() {
    }

    public static void a(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f2063b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f2062a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f2063b = true;
        }
        Method method = f2062a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception e2) {
            }
        }
    }

    public static void a(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (Build.VERSION.SDK_INT >= 21) {
            if (!f2065d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f2064c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                }
                f2065d = true;
            }
            Field field = f2064c;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e2) {
                }
            }
        }
    }
}
