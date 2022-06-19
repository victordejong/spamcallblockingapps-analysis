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
/* renamed from: androidx.core.view.f */
/* loaded from: classes-dex2jar.jar:androidx/core/view/f.class */
public final class C0909f {

    /* renamed from: a */
    private static boolean f3743a = false;

    /* renamed from: b */
    private static Method f3744b;

    /* renamed from: c */
    private static boolean f3745c = false;

    /* renamed from: d */
    private static Field f3746d;

    /* renamed from: androidx.core.view.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/f$a.class */
    public interface AbstractC0910a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    private C0909f() {
    }

    /* renamed from: a */
    private static DialogInterface.OnKeyListener m44192a(Dialog dialog) {
        if (!f3745c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f3746d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3745c = true;
        }
        Field field = f3746d;
        if (field != null) {
            try {
                return (DialogInterface.OnKeyListener) field.get(dialog);
            } catch (IllegalAccessException e2) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static boolean m44193a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f3743a) {
            try {
                f3744b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f3743a = true;
        }
        Method method = f3744b;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m44191a(View view, KeyEvent keyEvent) {
        return C0926v.m44127a(view, keyEvent);
    }

    /* renamed from: a */
    public static boolean m44190a(AbstractC0910a abstractC0910a, View view, Window.Callback callback, KeyEvent keyEvent) {
        if (abstractC0910a == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return abstractC0910a.superDispatchKeyEvent(keyEvent);
        }
        if (!(callback instanceof Activity)) {
            if (!(callback instanceof Dialog)) {
                return (view != null && C0926v.m44108b(view, keyEvent)) || abstractC0910a.superDispatchKeyEvent(keyEvent);
            }
            Dialog dialog = (Dialog) callback;
            DialogInterface.OnKeyListener m44192a = m44192a(dialog);
            if (m44192a != null && m44192a.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                return true;
            }
            Window window = dialog.getWindow();
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (C0926v.m44108b(decorView, keyEvent)) {
                return true;
            }
            KeyEvent.DispatcherState dispatcherState = null;
            if (decorView != null) {
                dispatcherState = decorView.getKeyDispatcherState();
            }
            return keyEvent.dispatch(dialog, dispatcherState, dialog);
        }
        Activity activity = (Activity) callback;
        activity.onUserInteraction();
        Window window2 = activity.getWindow();
        if (window2.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m44193a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window2.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView2 = window2.getDecorView();
        if (C0926v.m44108b(decorView2, keyEvent)) {
            return true;
        }
        KeyEvent.DispatcherState dispatcherState2 = null;
        if (decorView2 != null) {
            dispatcherState2 = decorView2.getKeyDispatcherState();
        }
        return keyEvent.dispatch(activity, dispatcherState2, activity);
    }
}
