package androidx.core.p023g;

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
/* renamed from: androidx.core.g.d */
/* loaded from: classes-dex2jar.jar:androidx/core/g/d.class */
public class C0534d {

    /* renamed from: a */
    private static boolean f1864a = false;

    /* renamed from: b */
    private static Method f1865b;

    /* renamed from: c */
    private static boolean f1866c = false;

    /* renamed from: d */
    private static Field f1867d;

    /* renamed from: androidx.core.g.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/d$a.class */
    public interface AbstractC0535a {
        /* renamed from: a */
        boolean mo6336a(KeyEvent keyEvent);
    }

    /* renamed from: a */
    private static DialogInterface.OnKeyListener m6340a(Dialog dialog) {
        if (!f1866c) {
            try {
                f1867d = Dialog.class.getDeclaredField("mOnKeyListener");
                f1867d.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f1866c = true;
        }
        Field field = f1867d;
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
    private static boolean m6342a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f1864a) {
            try {
                f1865b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f1864a = true;
        }
        Method method = f1865b;
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
    private static boolean m6341a(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m6342a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C0552u.m6257b(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    /* renamed from: a */
    private static boolean m6339a(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener m6340a = m6340a(dialog);
        if (m6340a == null || !m6340a.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            Window window = dialog.getWindow();
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (C0552u.m6257b(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m6338a(View view, KeyEvent keyEvent) {
        return C0552u.m6271a(view, keyEvent);
    }

    /* renamed from: a */
    public static boolean m6337a(AbstractC0535a abstractC0535a, View view, Window.Callback callback, KeyEvent keyEvent) {
        boolean z = false;
        if (abstractC0535a == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return abstractC0535a.mo6336a(keyEvent);
        }
        if (callback instanceof Activity) {
            return m6341a((Activity) callback, keyEvent);
        }
        if (callback instanceof Dialog) {
            return m6339a((Dialog) callback, keyEvent);
        }
        if ((view != null && C0552u.m6257b(view, keyEvent)) || abstractC0535a.mo6336a(keyEvent)) {
            z = true;
        }
        return z;
    }
}
