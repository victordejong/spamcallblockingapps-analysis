package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0867f;
import androidx.lifecycle.AbstractC0869h;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements AbstractC0867f {

    /* renamed from: a */
    private static int f178a = 0;

    /* renamed from: b */
    private static Field f179b;

    /* renamed from: c */
    private static Field f180c;

    /* renamed from: d */
    private static Field f181d;

    /* renamed from: e */
    private Activity f182e;

    public ImmLeaksCleaner(Activity activity) {
        this.f182e = activity;
    }

    /* renamed from: a */
    private static void m22290a() {
        try {
            f178a = 2;
            f180c = InputMethodManager.class.getDeclaredField("mServedView");
            f180c.setAccessible(true);
            f181d = InputMethodManager.class.getDeclaredField("mNextServedView");
            f181d.setAccessible(true);
            f179b = InputMethodManager.class.getDeclaredField("mH");
            f179b.setAccessible(true);
            f178a = 1;
        } catch (NoSuchFieldException e) {
        }
    }

    @Override // androidx.lifecycle.AbstractC0867f
    /* renamed from: a */
    public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
        if (enumC0865a != AbstractC0864e.EnumC0865a.ON_DESTROY) {
            return;
        }
        if (f178a == 0) {
            m22290a();
        }
        if (f178a != 1) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) this.f182e.getSystemService("input_method");
        try {
            Object obj = f179b.get(inputMethodManager);
            if (obj == null) {
                return;
            }
            synchronized (obj) {
                try {
                    View view = (View) f180c.get(inputMethodManager);
                    if (view != null) {
                        if (!view.isAttachedToWindow()) {
                            try {
                                f181d.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException e) {
                            }
                        }
                    }
                } catch (ClassCastException e2) {
                } catch (IllegalAccessException e3) {
                }
            }
        } catch (IllegalAccessException e4) {
        }
    }
}
