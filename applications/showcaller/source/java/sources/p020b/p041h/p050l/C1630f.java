package p020b.p041h.p050l;

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
/* renamed from: b.h.l.f */
/* loaded from: classes-dex2jar.jar:b/h/l/f.class */
public class C1630f {

    /* renamed from: a */
    private static boolean f6258a = false;

    /* renamed from: b */
    private static Method f6259b;

    /* renamed from: c */
    private static boolean f6260c = false;

    /* renamed from: d */
    private static Field f6261d;

    /* renamed from: b.h.l.f$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/f$a.class */
    public interface AbstractC1631a {
        /* renamed from: s */
        boolean mo29531s(KeyEvent keyEvent);
    }

    /* renamed from: a */
    private static boolean m29537a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f6258a) {
            try {
                f6259b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f6258a = true;
        }
        Method method = f6259b;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m29536b(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m29537a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C1679w.m29292i(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    /* renamed from: c */
    private static boolean m29535c(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener m29532f = m29532f(dialog);
        if (m29532f == null || !m29532f.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            Window window = dialog.getWindow();
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (C1679w.m29292i(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m29534d(View view, KeyEvent keyEvent) {
        return C1679w.m29290j(view, keyEvent);
    }

    /* renamed from: e */
    public static boolean m29533e(AbstractC1631a abstractC1631a, View view, Window.Callback callback, KeyEvent keyEvent) {
        boolean z = false;
        if (abstractC1631a == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return abstractC1631a.mo29531s(keyEvent);
        }
        if (callback instanceof Activity) {
            return m29536b((Activity) callback, keyEvent);
        }
        if (callback instanceof Dialog) {
            return m29535c((Dialog) callback, keyEvent);
        }
        if ((view != null && C1679w.m29292i(view, keyEvent)) || abstractC1631a.mo29531s(keyEvent)) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    private static DialogInterface.OnKeyListener m29532f(Dialog dialog) {
        if (!f6260c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f6261d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f6260c = true;
        }
        Field field = f6261d;
        if (field != null) {
            try {
                return (DialogInterface.OnKeyListener) field.get(dialog);
            } catch (IllegalAccessException e2) {
                return null;
            }
        }
        return null;
    }
}
