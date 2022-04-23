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
@RequiresApi(19)
/* loaded from: classes-dex2jar.jar:androidx/activity/ImmLeaksCleaner.class */
public final class ImmLeaksCleaner implements LifecycleEventObserver {
    public static final int INIT_FAILED = 2;
    public static final int INIT_SUCCESS = 1;
    public static final int NOT_INITIALIAZED = 0;
    public static Field sHField;
    public static Field sNextServedViewField;
    public static int sReflectedFieldsInitialized;
    public static Field sServedViewField;
    public Activity mActivity;

    public ImmLeaksCleaner(Activity activity) {
        this.mActivity = activity;
    }

    @MainThread
    public static void initializeReflectiveFields() {
        try {
            sReflectedFieldsInitialized = 2;
            sServedViewField = InputMethodManager.class.getDeclaredField("mServedView");
            sServedViewField.setAccessible(true);
            sNextServedViewField = InputMethodManager.class.getDeclaredField("mNextServedView");
            sNextServedViewField.setAccessible(true);
            sHField = InputMethodManager.class.getDeclaredField("mH");
            sHField.setAccessible(true);
            sReflectedFieldsInitialized = 1;
        } catch (NoSuchFieldException e) {
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            if (sReflectedFieldsInitialized == 0) {
                initializeReflectiveFields();
            }
            if (sReflectedFieldsInitialized == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.mActivity.getSystemService("input_method");
                try {
                    Object obj = sHField.get(inputMethodManager);
                    if (obj != null) {
                        synchronized (obj) {
                            try {
                                try {
                                    View view = (View) sServedViewField.get(inputMethodManager);
                                    if (view != null) {
                                        if (!view.isAttachedToWindow()) {
                                            try {
                                                sNextServedViewField.set(inputMethodManager, null);
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
