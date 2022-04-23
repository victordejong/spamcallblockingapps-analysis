package androidx.core.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/view/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1998a = false;

    /* renamed from: b  reason: collision with root package name */
    private static Method f1999b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f2000c = false;

    /* renamed from: d  reason: collision with root package name */
    private static Field f2001d;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/f$a.class */
    public interface a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    private f() {
    }

    private static DialogInterface.OnKeyListener a(Dialog dialog) {
        if (!f2000c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f2001d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f2000c = true;
        }
        Field field = f2001d;
        if (field == null) {
            return null;
        }
        try {
            return (DialogInterface.OnKeyListener) field.get(dialog);
        } catch (IllegalAccessException e2) {
            return null;
        }
    }

    private static boolean a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f1998a) {
            try {
                f1999b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f1998a = true;
        }
        Method method = f1999b;
        if (method == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            return false;
        }
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        return v.a(view, keyEvent);
    }

    public static boolean a(a aVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        if (aVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return aVar.superDispatchKeyEvent(keyEvent);
        }
        KeyEvent.DispatcherState dispatcherState = null;
        KeyEvent.DispatcherState dispatcherState2 = null;
        if (callback instanceof Activity) {
            Activity activity = (Activity) callback;
            activity.onUserInteraction();
            Window window = activity.getWindow();
            if (window.hasFeature(8)) {
                ActionBar actionBar = activity.getActionBar();
                if (keyEvent.getKeyCode() == 82 && actionBar != null && a(actionBar, keyEvent)) {
                    return true;
                }
            }
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (v.b(decorView, keyEvent)) {
                return true;
            }
            if (decorView != null) {
                dispatcherState2 = decorView.getKeyDispatcherState();
            }
            return keyEvent.dispatch(activity, dispatcherState2, activity);
        } else if (!(callback instanceof Dialog)) {
            return (view != null && v.b(view, keyEvent)) || aVar.superDispatchKeyEvent(keyEvent);
        } else {
            Dialog dialog = (Dialog) callback;
            DialogInterface.OnKeyListener a2 = a(dialog);
            if (a2 != null && a2.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                return true;
            }
            Window window2 = dialog.getWindow();
            if (window2.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView2 = window2.getDecorView();
            if (v.b(decorView2, keyEvent)) {
                return true;
            }
            if (decorView2 != null) {
                dispatcherState = decorView2.getKeyDispatcherState();
            }
            return keyEvent.dispatch(dialog, dispatcherState, dialog);
        }
    }
}
