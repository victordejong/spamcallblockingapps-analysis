package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1261n;
import androidx.lifecycle.AbstractC1263p;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements AbstractC1261n {

    /* renamed from: a */
    private static int f229a;

    /* renamed from: b */
    private static Field f230b;

    /* renamed from: c */
    private static Field f231c;

    /* renamed from: d */
    private static Field f232d;

    /* renamed from: e */
    private Activity f233e;

    public ImmLeaksCleaner(Activity activity) {
        this.f233e = activity;
    }

    @Override // androidx.lifecycle.AbstractC1261n
    /* renamed from: a */
    public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
        if (enumC1255a != AbstractC1253j.EnumC1255a.ON_DESTROY) {
            return;
        }
        if (f229a == 0) {
            try {
                f229a = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f231c = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f232d = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f230b = declaredField3;
                declaredField3.setAccessible(true);
                f229a = 1;
            } catch (NoSuchFieldException e) {
            }
        }
        if (f229a != 1) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) this.f233e.getSystemService("input_method");
        try {
            Object obj = f230b.get(inputMethodManager);
            if (obj == null) {
                return;
            }
            synchronized (obj) {
                try {
                    try {
                        View view = (View) f231c.get(inputMethodManager);
                        if (view == null) {
                            return;
                        }
                        if (view.isAttachedToWindow()) {
                            return;
                        }
                        try {
                            f232d.set(inputMethodManager, null);
                            inputMethodManager.isActive();
                        } catch (IllegalAccessException e2) {
                        }
                    } catch (ClassCastException e3) {
                    }
                } catch (IllegalAccessException e4) {
                }
            }
        } catch (IllegalAccessException e5) {
        }
    }
}
