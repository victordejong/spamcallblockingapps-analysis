package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Field;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
final class ImmLeaksCleaner implements LifecycleEventObserver {

    /* renamed from: g */
    private static int f5g;

    /* renamed from: h */
    private static Field f6h;

    /* renamed from: i */
    private static Field f7i;

    /* renamed from: j */
    private static Field f8j;

    /* renamed from: f */
    private Activity f9f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmLeaksCleaner(Activity activity) {
        this.f9f = activity;
    }

    @MainThread
    /* renamed from: h */
    private static void m22332h() {
        try {
            f5g = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f7i = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f8j = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f6h = declaredField3;
            declaredField3.setAccessible(true);
            f5g = 1;
        } catch (NoSuchFieldException e) {
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            if (f5g == 0) {
                m22332h();
            }
            if (f5g == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.f9f.getSystemService("input_method");
                try {
                    Object obj = f6h.get(inputMethodManager);
                    if (obj != null) {
                        synchronized (obj) {
                            try {
                                try {
                                    View view = (View) f7i.get(inputMethodManager);
                                    if (view != null) {
                                        if (!view.isAttachedToWindow()) {
                                            try {
                                                f8j.set(inputMethodManager, null);
                                                inputMethodManager.isActive();
                                            } catch (IllegalAccessException e) {
                                            }
                                        }
                                    }
                                } catch (ClassCastException e2) {
                                }
                            } catch (IllegalAccessException e3) {
                            }
                        }
                    }
                } catch (IllegalAccessException e4) {
                }
            }
        }
    }
}
