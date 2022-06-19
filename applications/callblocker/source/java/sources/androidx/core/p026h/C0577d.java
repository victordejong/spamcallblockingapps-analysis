package androidx.core.p026h;

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
/* renamed from: androidx.core.h.d */
/* loaded from: classes-dex2jar.jar:androidx/core/h/d.class */
public class C0577d {

    /* renamed from: a */
    private static boolean f2073a = false;

    /* renamed from: b */
    private static Method f2074b = null;

    /* renamed from: c */
    private static boolean f2075c = false;

    /* renamed from: d */
    private static Field f2076d = null;

    /* renamed from: androidx.core.h.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/d$a.class */
    public interface AbstractC0578a {
        /* renamed from: a */
        boolean mo20413a(KeyEvent keyEvent);
    }

    /* renamed from: a */
    private static DialogInterface.OnKeyListener m20417a(Dialog dialog) {
        DialogInterface.OnKeyListener onKeyListener;
        if (!f2075c) {
            try {
                f2076d = Dialog.class.getDeclaredField("mOnKeyListener");
                f2076d.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f2075c = true;
        }
        if (f2076d != null) {
            try {
                onKeyListener = (DialogInterface.OnKeyListener) f2076d.get(dialog);
            } catch (IllegalAccessException e2) {
            }
            return onKeyListener;
        }
        onKeyListener = null;
        return onKeyListener;
    }

    /* renamed from: a */
    private static boolean m20419a(ActionBar actionBar, KeyEvent keyEvent) {
        boolean booleanValue;
        if (!f2073a) {
            try {
                f2074b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException e) {
            }
            f2073a = true;
        }
        if (f2074b != null) {
            try {
                booleanValue = ((Boolean) f2074b.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
            }
            return booleanValue;
        }
        booleanValue = false;
        return booleanValue;
    }

    /* renamed from: a */
    private static boolean m20418a(Activity activity, KeyEvent keyEvent) {
        boolean z;
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m20419a(actionBar, keyEvent)) {
                z = true;
                return z;
            }
        }
        z = true;
        if (!window.superDispatchKeyEvent(keyEvent)) {
            View decorView = window.getDecorView();
            z = true;
            if (!C0595u.m20334b(decorView, keyEvent)) {
                z = keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
            }
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m20416a(Dialog dialog, KeyEvent keyEvent) {
        boolean z;
        DialogInterface.OnKeyListener m20417a = m20417a(dialog);
        if (m20417a == null || !m20417a.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            Window window = dialog.getWindow();
            z = true;
            if (!window.superDispatchKeyEvent(keyEvent)) {
                View decorView = window.getDecorView();
                z = true;
                if (!C0595u.m20334b(decorView, keyEvent)) {
                    z = keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m20415a(View view, KeyEvent keyEvent) {
        return C0595u.m20349a(view, keyEvent);
    }

    /* renamed from: a */
    public static boolean m20414a(AbstractC0578a abstractC0578a, View view, Window.Callback callback, KeyEvent keyEvent) {
        boolean z = false;
        if (abstractC0578a != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                z = abstractC0578a.mo20413a(keyEvent);
            } else if (callback instanceof Activity) {
                z = m20418a((Activity) callback, keyEvent);
            } else if (callback instanceof Dialog) {
                z = m20416a((Dialog) callback, keyEvent);
            } else if ((view != null && C0595u.m20334b(view, keyEvent)) || abstractC0578a.mo20413a(keyEvent)) {
                z = true;
            }
        }
        return z;
    }
}
