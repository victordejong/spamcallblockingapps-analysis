package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.p;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements n {

    /* renamed from: a  reason: collision with root package name */
    private static int f521a;

    /* renamed from: b  reason: collision with root package name */
    private static Field f522b;

    /* renamed from: c  reason: collision with root package name */
    private static Field f523c;

    /* renamed from: d  reason: collision with root package name */
    private static Field f524d;
    private Activity e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmLeaksCleaner(Activity activity) {
        this.e = activity;
    }

    @Override // androidx.lifecycle.n
    public final void a(p pVar, j.a aVar) {
        if (aVar == j.a.ON_DESTROY) {
            if (f521a == 0) {
                try {
                    f521a = 2;
                    Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                    f523c = declaredField;
                    declaredField.setAccessible(true);
                    Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                    f524d = declaredField2;
                    declaredField2.setAccessible(true);
                    Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                    f522b = declaredField3;
                    declaredField3.setAccessible(true);
                    f521a = 1;
                } catch (NoSuchFieldException e) {
                }
            }
            if (f521a == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.e.getSystemService("input_method");
                try {
                    Object obj = f522b.get(inputMethodManager);
                    if (obj != null) {
                        synchronized (obj) {
                            try {
                                try {
                                    View view = (View) f523c.get(inputMethodManager);
                                    if (view != null) {
                                        if (!view.isAttachedToWindow()) {
                                            try {
                                                f524d.set(inputMethodManager, null);
                                                inputMethodManager.isActive();
                                            } catch (IllegalAccessException e2) {
                                            }
                                        }
                                    }
                                } catch (ClassCastException e3) {
                                }
                            } catch (IllegalAccessException e4) {
                            }
                        }
                    }
                } catch (IllegalAccessException e5) {
                }
            }
        }
    }
}
