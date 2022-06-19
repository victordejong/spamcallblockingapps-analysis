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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/diu.class */
public final class diu implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private static final Handler f14445a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private final Context f14446b;

    /* renamed from: c */
    private Application f14447c;

    /* renamed from: d */
    private final PowerManager f14448d;

    /* renamed from: e */
    private final KeyguardManager f14449e;

    /* renamed from: f */
    private BroadcastReceiver f14450f;

    /* renamed from: g */
    private final dil f14451g;

    /* renamed from: h */
    private WeakReference<ViewTreeObserver> f14452h;

    /* renamed from: i */
    private WeakReference<View> f14453i;

    /* renamed from: j */
    private dar f14454j;

    /* renamed from: k */
    private byte f14455k = (byte) (-1);

    /* renamed from: l */
    private int f14456l = -1;

    /* renamed from: m */
    private long f14457m = -3;

    public diu(Context context, dil dilVar) {
        this.f14446b = context.getApplicationContext();
        this.f14451g = dilVar;
        this.f14448d = (PowerManager) this.f14446b.getSystemService("power");
        this.f14449e = (KeyguardManager) this.f14446b.getSystemService("keyguard");
        if (this.f14446b instanceof Application) {
            this.f14447c = (Application) this.f14446b;
            this.f14454j = new dar((Application) this.f14446b, this);
        }
        m9382a((View) null);
    }

    /* renamed from: a */
    private final void m9383a(Activity activity, int i) {
        Window window;
        if (this.f14453i == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View m9380b = m9380b();
        if (m9380b == null || peekDecorView == null || m9380b.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f14456l = i;
    }

    /* renamed from: b */
    private final View m9380b() {
        return this.f14453i != null ? this.f14453i.get() : null;
    }

    /* renamed from: b */
    private final void m9379b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f14452h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f14450f == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f14450f = new diw(this);
            this.f14446b.registerReceiver(this.f14450f, intentFilter);
        }
        if (this.f14447c != null) {
            try {
                this.f14447c.registerActivityLifecycleCallbacks(this.f14454j);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    private final void m9378c() {
        f14445a.post(new dix(this));
    }

    /* renamed from: c */
    private final void m9377c(View view) {
        try {
            if (this.f14452h != null) {
                ViewTreeObserver viewTreeObserver = this.f14452h.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f14452h = null;
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
        if (this.f14450f != null) {
            try {
                this.f14446b.unregisterReceiver(this.f14450f);
            } catch (Exception e3) {
            }
            this.f14450f = null;
        }
        if (this.f14447c != null) {
            try {
                this.f14447c.unregisterActivityLifecycleCallbacks(this.f14454j);
            } catch (Exception e4) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ac, code lost:
        if (r9 == false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9376d() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.diu.m9376d():void");
    }

    /* renamed from: a */
    public final long m9384a() {
        if (this.f14457m <= -2 && m9380b() == null) {
            this.f14457m = -3L;
        }
        return this.f14457m;
    }

    /* renamed from: a */
    public final void m9382a(View view) {
        View m9380b = m9380b();
        if (m9380b != null) {
            m9380b.removeOnAttachStateChangeListener(this);
            m9377c(m9380b);
        }
        this.f14453i = new WeakReference<>(view);
        if (view == null) {
            this.f14457m = -3L;
            return;
        }
        if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
            m9379b(view);
        }
        view.addOnAttachStateChangeListener(this);
        this.f14457m = -2L;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m9383a(activity, 0);
        m9376d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m9376d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m9383a(activity, 4);
        m9376d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m9383a(activity, 0);
        m9376d();
        m9378c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m9376d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m9383a(activity, 0);
        m9376d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m9376d();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m9376d();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m9376d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f14456l = -1;
        m9379b(view);
        m9376d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f14456l = -1;
        m9376d();
        m9378c();
        m9377c(view);
    }
}
