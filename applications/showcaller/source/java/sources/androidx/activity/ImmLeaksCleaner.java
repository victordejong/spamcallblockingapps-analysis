package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements AbstractC0795f {

    /* renamed from: d */
    private static int f160d;

    /* renamed from: e */
    private static Field f161e;

    /* renamed from: f */
    private static Field f162f;

    /* renamed from: g */
    private static Field f163g;

    /* renamed from: h */
    private Activity f164h;

    public ImmLeaksCleaner(Activity activity) {
        this.f164h = activity;
    }

    /* renamed from: h */
    private static void m35760h() {
        try {
            f160d = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f162f = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f163g = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f161e = declaredField3;
            declaredField3.setAccessible(true);
            f160d = 1;
        } catch (NoSuchFieldException e) {
        }
    }

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        if (f160d == 0) {
            m35760h();
        }
        if (f160d != 1) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) this.f164h.getSystemService("input_method");
        try {
            Object obj = f161e.get(inputMethodManager);
            if (obj == null) {
                return;
            }
            synchronized (obj) {
                try {
                    try {
                        View view = (View) f162f.get(inputMethodManager);
                        if (view == null) {
                            return;
                        }
                        if (view.isAttachedToWindow()) {
                            return;
                        }
                        try {
                            f163g.set(inputMethodManager, null);
                            inputMethodManager.isActive();
                        } catch (IllegalAccessException e) {
                        }
                    } catch (ClassCastException e2) {
                    }
                } catch (IllegalAccessException e3) {
                }
            }
        } catch (IllegalAccessException e4) {
        }
    }
}
