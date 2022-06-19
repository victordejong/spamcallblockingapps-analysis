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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zi2.class */
public final class zi2 implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: n */
    private static final Handler f9343n = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private final Context f9344b;

    /* renamed from: c */
    private Application f9345c;

    /* renamed from: d */
    private final PowerManager f9346d;

    /* renamed from: e */
    private final KeyguardManager f9347e;

    /* renamed from: f */
    private BroadcastReceiver f9348f;

    /* renamed from: g */
    private final zzfx f9349g;

    /* renamed from: h */
    private WeakReference<ViewTreeObserver> f9350h;

    /* renamed from: i */
    private WeakReference<View> f9351i;

    /* renamed from: j */
    private ki2 f9352j;

    /* renamed from: k */
    private byte f9353k = (byte) (-1);

    /* renamed from: l */
    private int f9354l = -1;

    /* renamed from: m */
    private long f9355m = -3;

    public zi2(Context context, zzfx zzfxVar) {
        Context applicationContext = context.getApplicationContext();
        this.f9344b = applicationContext;
        this.f9349g = zzfxVar;
        this.f9346d = (PowerManager) applicationContext.getSystemService("power");
        this.f9347e = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f9345c = application;
            this.f9352j = new ki2(application, this);
        }
        m4627a(null);
    }

    /* renamed from: e */
    private final void m4623e() {
        f9343n.post(new xi2(this));
    }

    /* renamed from: f */
    private final void m4622f(Activity activity, int i) {
        Window window;
        if (this.f9351i == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View m4626b = m4626b();
        if (m4626b == null || peekDecorView == null || m4626b.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f9354l = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00aa, code lost:
        if ((r9.flags & 524288) == 0) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r1v7, types: [long] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4621g() {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zi2.m4621g():void");
    }

    /* renamed from: h */
    private final void m4620h(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f9350h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f9348f == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            yi2 yi2Var = new yi2(this);
            this.f9348f = yi2Var;
            this.f9344b.registerReceiver(yi2Var, intentFilter);
        }
        Application application = this.f9345c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f9352j);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: i */
    private final void m4619i(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f9350h;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f9350h = null;
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
        BroadcastReceiver broadcastReceiver = this.f9348f;
        if (broadcastReceiver != null) {
            try {
                this.f9344b.unregisterReceiver(broadcastReceiver);
            } catch (Exception e3) {
            }
            this.f9348f = null;
        }
        Application application = this.f9345c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f9352j);
            } catch (Exception e4) {
            }
        }
    }

    /* renamed from: a */
    final void m4627a(View view) {
        char c;
        View m4626b = m4626b();
        if (m4626b != null) {
            m4626b.removeOnAttachStateChangeListener(this);
            m4619i(m4626b);
        }
        this.f9351i = new WeakReference<>(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                m4620h(view);
            }
            view.addOnAttachStateChangeListener(this);
            c = 65534;
        } else {
            c = 65533;
        }
        this.f9355m = c;
    }

    /* renamed from: b */
    final View m4626b() {
        WeakReference<View> weakReference = this.f9351i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: c */
    public final long m4625c() {
        if (this.f9355m <= -2 && m4626b() == null) {
            this.f9355m = -3L;
        }
        return this.f9355m;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m4622f(activity, 0);
        m4621g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m4621g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m4622f(activity, 4);
        m4621g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m4622f(activity, 0);
        m4621g();
        m4623e();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m4621g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m4622f(activity, 0);
        m4621g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m4621g();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m4621g();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m4621g();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f9354l = -1;
        m4620h(view);
        m4621g();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f9354l = -1;
        m4621g();
        m4623e();
        m4619i(view);
    }
}
