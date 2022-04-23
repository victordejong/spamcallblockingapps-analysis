package p012b.p042i.p054p;

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
/* renamed from: b.i.p.e */
/* loaded from: classes-dex2jar.jar:b/i/p/e.class */
public class C0985e {

    /* renamed from: a */
    public static boolean f4237a = false;

    /* renamed from: b */
    public static Method f4238b;

    /* renamed from: c */
    public static boolean f4239c = false;

    /* renamed from: d */
    public static Field f4240d;

    /* renamed from: b.i.p.e$a */
    /* loaded from: classes-dex2jar.jar:b/i/p/e$a.class */
    public interface AbstractC0986a {
        /* renamed from: a */
        boolean mo35301a(KeyEvent keyEvent);
    }

    /* renamed from: a */
    public static DialogInterface.OnKeyListener m35305a(Dialog dialog) {
        if (!f4239c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f4240d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f4239c = true;
        }
        Field field = f4240d;
        if (field == null) {
            return null;
        }
        try {
            return (DialogInterface.OnKeyListener) field.get(dialog);
        } catch (IllegalAccessException e2) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m35307a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f4237a) {
            try {
                f4238b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f4237a = true;
        }
        Method method = f4238b;
        if (method == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m35306a(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m35307a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C1002u.m35239a(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    /* renamed from: a */
    public static boolean m35304a(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener a = m35305a(dialog);
        if (a != null && a.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window = dialog.getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C1002u.m35239a(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
    }

    /* renamed from: a */
    public static boolean m35303a(View view, KeyEvent keyEvent) {
        return C1002u.m35228b(view, keyEvent);
    }

    /* renamed from: a */
    public static boolean m35302a(AbstractC0986a aVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        boolean z = false;
        if (aVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return aVar.mo35301a(keyEvent);
        }
        if (callback instanceof Activity) {
            return m35306a((Activity) callback, keyEvent);
        }
        if (callback instanceof Dialog) {
            return m35304a((Dialog) callback, keyEvent);
        }
        if ((view != null && C1002u.m35239a(view, keyEvent)) || aVar.mo35301a(keyEvent)) {
            z = true;
        }
        return z;
    }
}
