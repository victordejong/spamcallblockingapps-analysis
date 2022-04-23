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
import d.a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\b��\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lleakcanary/internal/ReferenceCleaner;", "Landroid/os/MessageQueue$IdleHandler;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "mHField", "Ljava/lang/reflect/Field;", "mServedViewField", "finishInputLockedMethod", "Ljava/lang/reflect/Method;", "(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V", "clearInputMethodManagerLeak", "", "extractActivity", "Landroid/app/Activity;", "sourceContext", "Landroid/content/Context;", "onGlobalFocusChanged", "oldFocus", "Landroid/view/View;", "newFocus", "onViewAttachedToWindow", "v", "onViewDetachedFromWindow", "queueIdle", "", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:leakcanary/internal/d.class */
public final class d implements MessageQueue.IdleHandler, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final InputMethodManager f39087a;

    /* renamed from: b  reason: collision with root package name */
    private final Field f39088b;

    /* renamed from: c  reason: collision with root package name */
    private final Field f39089c;

    /* renamed from: d  reason: collision with root package name */
    private final Method f39090d;

    public d(InputMethodManager inputMethodManager, Field mHField, Field mServedViewField, Method finishInputLockedMethod) {
        p.c(inputMethodManager, "inputMethodManager");
        p.c(mHField, "mHField");
        p.c(mServedViewField, "mServedViewField");
        p.c(finishInputLockedMethod, "finishInputLockedMethod");
        this.f39087a = inputMethodManager;
        this.f39088b = mHField;
        this.f39089c = mServedViewField;
        this.f39090d = finishInputLockedMethod;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        if (view2 != null) {
            if (view != null) {
                view.removeOnAttachStateChangeListener(this);
            }
            Looper.myQueue().removeIdleHandler(this);
            view2.addOnAttachStateChangeListener(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View v) {
        p.c(v, "v");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View v) {
        p.c(v, "v");
        v.removeOnAttachStateChangeListener(this);
        d dVar = this;
        Looper.myQueue().removeIdleHandler(dVar);
        Looper.myQueue().addIdleHandler(dVar);
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        Activity activity;
        try {
            Object obj = this.f39088b.get(this.f39087a);
            if (obj == null) {
                a aVar = a.f36146a;
                return false;
            }
            synchronized (obj) {
                View view = (View) this.f39089c.get(this.f39087a);
                if (view != null) {
                    boolean z = true;
                    if (view.getWindowVisibility() != 8) {
                        view.removeOnAttachStateChangeListener(this);
                        view.addOnAttachStateChangeListener(this);
                    } else {
                        Context context = view.getContext();
                        p.a((Object) context, "servedView.context");
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
                                    p.a((Object) baseContext, "baseContext");
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
                        if (!(activity == null || activity.getWindow() == null)) {
                            View decorView = activity.getWindow().peekDecorView();
                            p.a((Object) decorView, "decorView");
                            if (decorView.getWindowVisibility() == 8) {
                                z = false;
                            }
                            if (!z) {
                                this.f39090d.invoke(this.f39087a, new Object[0]);
                            }
                        }
                        this.f39090d.invoke(this.f39087a, new Object[0]);
                    }
                }
                v vVar = v.f38654a;
            }
            return false;
        } catch (Throwable th) {
            a aVar2 = a.f36146a;
            return false;
        }
    }
}
