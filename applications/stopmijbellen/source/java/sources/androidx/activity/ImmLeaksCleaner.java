package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0522h;
import androidx.lifecycle.AbstractC0524j;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements AbstractC0522h {

    /* renamed from: b */
    public static int f225b;

    /* renamed from: c */
    public static Field f226c;

    /* renamed from: d */
    public static Field f227d;

    /* renamed from: e */
    public static Field f228e;

    /* renamed from: a */
    public Activity f229a;

    public ImmLeaksCleaner(Activity activity) {
        this.f229a = activity;
    }

    @Override // androidx.lifecycle.AbstractC0522h
    /* renamed from: d */
    public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
        if (enumC0518b != AbstractC0516f.EnumC0518b.ON_DESTROY) {
            return;
        }
        if (f225b == 0) {
            try {
                f225b = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f227d = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f228e = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f226c = declaredField3;
                declaredField3.setAccessible(true);
                f225b = 1;
            } catch (NoSuchFieldException e) {
            }
        }
        if (f225b != 1) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) this.f229a.getSystemService("input_method");
        try {
            Object obj = f226c.get(inputMethodManager);
            if (obj == null) {
                return;
            }
            synchronized (obj) {
                try {
                    try {
                        View view = (View) f227d.get(inputMethodManager);
                        if (view == null) {
                            return;
                        }
                        if (view.isAttachedToWindow()) {
                            return;
                        }
                        try {
                            f228e.set(inputMethodManager, null);
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
