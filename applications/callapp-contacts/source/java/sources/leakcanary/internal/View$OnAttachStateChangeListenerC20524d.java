package leakcanary.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.os.MessageQueue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import p499d.C17729a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\b��\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, m4298d2 = {"Lleakcanary/internal/ReferenceCleaner;", "Landroid/os/MessageQueue$IdleHandler;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "mHField", "Ljava/lang/reflect/Field;", "mServedViewField", "finishInputLockedMethod", "Ljava/lang/reflect/Method;", "(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V", "clearInputMethodManagerLeak", "", "extractActivity", "Landroid/app/Activity;", "sourceContext", "Landroid/content/Context;", "onGlobalFocusChanged", "oldFocus", "Landroid/view/View;", "newFocus", "onViewAttachedToWindow", "v", "onViewDetachedFromWindow", "queueIdle", "", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: leakcanary.internal.d */
/* loaded from: classes5-dex2jar.jar:leakcanary/internal/d.class */
public final class View$OnAttachStateChangeListenerC20524d implements MessageQueue.IdleHandler, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: a */
    private final InputMethodManager f67040a;

    /* renamed from: b */
    private final Field f67041b;

    /* renamed from: c */
    private final Field f67042c;

    /* renamed from: d */
    private final Method f67043d;

    public View$OnAttachStateChangeListenerC20524d(InputMethodManager inputMethodManager, Field mHField, Field mServedViewField, Method finishInputLockedMethod) {
        C18524p.m3841c(inputMethodManager, "inputMethodManager");
        C18524p.m3841c(mHField, "mHField");
        C18524p.m3841c(mServedViewField, "mServedViewField");
        C18524p.m3841c(finishInputLockedMethod, "finishInputLockedMethod");
        this.f67040a = inputMethodManager;
        this.f67041b = mHField;
        this.f67042c = mServedViewField;
        this.f67043d = finishInputLockedMethod;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        if (view2 == null) {
            return;
        }
        if (view != null) {
            view.removeOnAttachStateChangeListener(this);
        }
        Looper.myQueue().removeIdleHandler(this);
        view2.addOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View v) {
        C18524p.m3841c(v, "v");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View v) {
        C18524p.m3841c(v, "v");
        v.removeOnAttachStateChangeListener(this);
        View$OnAttachStateChangeListenerC20524d view$OnAttachStateChangeListenerC20524d = this;
        Looper.myQueue().removeIdleHandler(view$OnAttachStateChangeListenerC20524d);
        Looper.myQueue().addIdleHandler(view$OnAttachStateChangeListenerC20524d);
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        Activity activity;
        try {
            Object obj = this.f67041b.get(this.f67040a);
            if (obj == null) {
                C17729a c17729a = C17729a.f62585a;
                return false;
            }
            synchronized (obj) {
                View view = (View) this.f67042c.get(this.f67040a);
                if (view != null) {
                    if (view.getWindowVisibility() != 8) {
                        view.removeOnAttachStateChangeListener(this);
                        view.addOnAttachStateChangeListener(this);
                    } else {
                        Context context = view.getContext();
                        C18524p.m3849a((Object) context, "servedView.context");
                        while (true) {
                            if (!(context instanceof Application)) {
                                if (!(context instanceof Activity)) {
                                    activity = null;
                                    if (!(context instanceof ContextWrapper)) {
                                        break;
                                    }
                                    Context baseContext = ((ContextWrapper) context).getBaseContext();
                                    if (baseContext == context) {
                                        activity = null;
                                        break;
                                    }
                                    C18524p.m3849a((Object) baseContext, "baseContext");
                                    context = baseContext;
                                } else {
                                    activity = (Activity) context;
                                    break;
                                }
                            } else {
                                activity = null;
                                break;
                            }
                        }
                        if (activity != null && activity.getWindow() != null) {
                            View decorView = activity.getWindow().peekDecorView();
                            C18524p.m3849a((Object) decorView, "decorView");
                            if (!(decorView.getWindowVisibility() != 8)) {
                                this.f67043d.invoke(this.f67040a, new Object[0]);
                            }
                        }
                        this.f67043d.invoke(this.f67040a, new Object[0]);
                    }
                }
                C20128v c20128v = C20128v.f66529a;
            }
            return false;
        } catch (Throwable th) {
            C17729a c17729a2 = C17729a.f62585a;
            return false;
        }
    }
}
