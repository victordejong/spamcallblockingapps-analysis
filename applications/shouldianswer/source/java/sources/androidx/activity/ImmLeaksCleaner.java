package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0901i;
import androidx.lifecycle.AbstractC0903k;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements AbstractC0901i {

    /* renamed from: a */
    private static int f88a;

    /* renamed from: b */
    private static Field f89b;

    /* renamed from: c */
    private static Field f90c;

    /* renamed from: d */
    private static Field f91d;

    /* renamed from: e */
    private Activity f92e;

    public ImmLeaksCleaner(Activity activity) {
        this.f92e = activity;
    }

    /* renamed from: a */
    private static void m7998a() {
        try {
            f88a = 2;
            f90c = InputMethodManager.class.getDeclaredField("mServedView");
            f90c.setAccessible(true);
            f91d = InputMethodManager.class.getDeclaredField("mNextServedView");
            f91d.setAccessible(true);
            f89b = InputMethodManager.class.getDeclaredField("mH");
            f89b.setAccessible(true);
            f88a = 1;
        } catch (NoSuchFieldException e) {
        }
    }

    @Override // androidx.lifecycle.AbstractC0901i
    /* renamed from: a */
    public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
        if (enumC0897a != AbstractC0896g.EnumC0897a.ON_DESTROY) {
            return;
        }
        if (f88a == 0) {
            m7998a();
        }
        if (f88a != 1) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) this.f92e.getSystemService("input_method");
        try {
            Object obj = f89b.get(inputMethodManager);
            if (obj == null) {
                return;
            }
            synchronized (obj) {
                try {
                    try {
                        View view = (View) f90c.get(inputMethodManager);
                        if (view == null) {
                            return;
                        }
                        if (view.isAttachedToWindow()) {
                            return;
                        }
                        try {
                            f91d.set(inputMethodManager, null);
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
