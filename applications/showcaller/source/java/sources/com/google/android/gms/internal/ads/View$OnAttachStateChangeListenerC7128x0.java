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
/* renamed from: com.google.android.gms.internal.ads.x0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x0.class */
public final class View$OnAttachStateChangeListenerC7128x0 implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    private static final Handler f31859d = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    private final Context f31860e;

    /* renamed from: f */
    private Application f31861f;

    /* renamed from: g */
    private final PowerManager f31862g;

    /* renamed from: h */
    private final KeyguardManager f31863h;

    /* renamed from: i */
    private BroadcastReceiver f31864i;

    /* renamed from: j */
    private final zzabk f31865j;

    /* renamed from: k */
    private WeakReference<ViewTreeObserver> f31866k;

    /* renamed from: l */
    private WeakReference<View> f31867l;

    /* renamed from: m */
    private C6572i0 f31868m;

    /* renamed from: n */
    private byte f31869n = (byte) (-1);

    /* renamed from: o */
    private int f31870o = -1;

    /* renamed from: p */
    private long f31871p = -3;

    public View$OnAttachStateChangeListenerC7128x0(Context context, zzabk zzabkVar) {
        Context applicationContext = context.getApplicationContext();
        this.f31860e = applicationContext;
        this.f31865j = zzabkVar;
        this.f31862g = (PowerManager) applicationContext.getSystemService("power");
        this.f31863h = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f31861f = application;
            this.f31868m = new C6572i0(application, this);
        }
        m9391a(null);
    }

    /* renamed from: e */
    private final void m9387e() {
        f31859d.post(new RunnableC7054v0(this));
    }

    /* renamed from: f */
    private final void m9386f(Activity activity, int i) {
        Window window;
        if (this.f31867l == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View m9390b = m9390b();
        if (m9390b == null || peekDecorView == null || m9390b.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f31870o = i;
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
    public final void m9385g() {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.View$OnAttachStateChangeListenerC7128x0.m9385g():void");
    }

    /* renamed from: h */
    private final void m9384h(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f31866k = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f31864i == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            C7091w0 c7091w0 = new C7091w0(this);
            this.f31864i = c7091w0;
            this.f31860e.registerReceiver(c7091w0, intentFilter);
        }
        Application application = this.f31861f;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f31868m);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: i */
    private final void m9383i(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f31866k;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f31866k = null;
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
        BroadcastReceiver broadcastReceiver = this.f31864i;
        if (broadcastReceiver != null) {
            try {
                this.f31860e.unregisterReceiver(broadcastReceiver);
            } catch (Exception e3) {
            }
            this.f31864i = null;
        }
        Application application = this.f31861f;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f31868m);
            } catch (Exception e4) {
            }
        }
    }

    /* renamed from: a */
    public final void m9391a(View view) {
        char c;
        View m9390b = m9390b();
        if (m9390b != null) {
            m9390b.removeOnAttachStateChangeListener(this);
            m9383i(m9390b);
        }
        this.f31867l = new WeakReference<>(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                m9384h(view);
            }
            view.addOnAttachStateChangeListener(this);
            c = 65534;
        } else {
            c = 65533;
        }
        this.f31871p = c;
    }

    /* renamed from: b */
    final View m9390b() {
        WeakReference<View> weakReference = this.f31867l;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: c */
    public final long m9389c() {
        if (this.f31871p <= -2 && m9390b() == null) {
            this.f31871p = -3L;
        }
        return this.f31871p;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m9386f(activity, 0);
        m9385g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m9385g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m9386f(activity, 4);
        m9385g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m9386f(activity, 0);
        m9385g();
        m9387e();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m9385g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m9386f(activity, 0);
        m9385g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m9385g();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m9385g();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m9385g();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f31870o = -1;
        m9384h(view);
        m9385g();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f31870o = -1;
        m9385g();
        m9387e();
        m9383i(view);
    }
}
