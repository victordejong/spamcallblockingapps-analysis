package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtn.class */
public final class dtn implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f27205a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private final Context f27206b;

    /* renamed from: c  reason: collision with root package name */
    private Application f27207c;

    /* renamed from: d  reason: collision with root package name */
    private final PowerManager f27208d;
    private final KeyguardManager e;
    private BroadcastReceiver f;
    private final zzfa g;
    private WeakReference<ViewTreeObserver> h;
    private WeakReference<View> i;
    private dlg j;
    private byte k = (byte) (-1);
    private int l = -1;
    private long m = -3;

    public dtn(Context context, zzfa zzfaVar) {
        Context applicationContext = context.getApplicationContext();
        this.f27206b = applicationContext;
        this.g = zzfaVar;
        this.f27208d = (PowerManager) applicationContext.getSystemService("power");
        this.e = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.f27207c = (Application) applicationContext;
            this.j = new dlg((Application) applicationContext, this);
        }
        a((View) null);
    }

    private final void a(Activity activity, int i) {
        Window window;
        if (this.i != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View b2 = b();
            if (b2 != null && peekDecorView != null && b2.getRootView() == peekDecorView.getRootView()) {
                this.l = i;
            }
        }
    }

    private final View b() {
        WeakReference<View> weakReference = this.i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private final void b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            dtp dtpVar = new dtp(this);
            this.f = dtpVar;
            this.f27206b.registerReceiver(dtpVar, intentFilter);
        }
        Application application = this.f27207c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.j);
            } catch (Exception e) {
            }
        }
    }

    private final void c() {
        f27205a.post(new dtq(this));
    }

    private final void c(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.h;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.h = null;
            }
        } catch (Exception e) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
        }
        BroadcastReceiver broadcastReceiver = this.f;
        if (broadcastReceiver != null) {
            try {
                this.f27206b.unregisterReceiver(broadcastReceiver);
            } catch (Exception e3) {
            }
            this.f = null;
        }
        Application application = this.f27207c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.j);
            } catch (Exception e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dtn.d():void");
    }

    public final long a() {
        if (this.m <= -2 && b() == null) {
            this.m = -3L;
        }
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view) {
        View b2 = b();
        if (b2 != null) {
            b2.removeOnAttachStateChangeListener(this);
            c(b2);
        }
        this.i = new WeakReference<>(view);
        if (view != null) {
            if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
                b(view);
            }
            view.addOnAttachStateChangeListener(this);
            this.m = -2L;
            return;
        }
        this.m = -3L;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 0);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 4);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 0);
        d();
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 0);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        d();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        d();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.l = -1;
        b(view);
        d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.l = -1;
        d();
        c();
        c(view);
    }
}
