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
import p131c.p161d.p170b.p224d.p252g.p253a.d70;
import p131c.p161d.p170b.p224d.p252g.p253a.kb0;
import p131c.p161d.p170b.p224d.p252g.p253a.lb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfi.class */
public final class zzfi implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: m */
    public static final Handler f28191m = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public final Context f28192a;

    /* renamed from: b */
    public Application f28193b;

    /* renamed from: c */
    public final PowerManager f28194c;

    /* renamed from: d */
    public final KeyguardManager f28195d;

    /* renamed from: e */
    public BroadcastReceiver f28196e;

    /* renamed from: f */
    public final zzev f28197f;

    /* renamed from: g */
    public WeakReference<ViewTreeObserver> f28198g;

    /* renamed from: h */
    public WeakReference<View> f28199h;

    /* renamed from: i */
    public d70 f28200i;

    /* renamed from: j */
    public byte f28201j = (byte) (-1);

    /* renamed from: k */
    public int f28202k = -1;

    /* renamed from: l */
    public long f28203l = -3;

    public zzfi(Context context, zzev zzevVar) {
        Context applicationContext = context.getApplicationContext();
        this.f28192a = applicationContext;
        this.f28197f = zzevVar;
        this.f28194c = (PowerManager) applicationContext.getSystemService("power");
        this.f28195d = (KeyguardManager) this.f28192a.getSystemService("keyguard");
        Context context2 = this.f28192a;
        if (context2 instanceof Application) {
            this.f28193b = (Application) context2;
            this.f28200i = new d70((Application) context2, this);
        }
        m12134a((View) null);
    }

    /* renamed from: a */
    public final View m12136a() {
        WeakReference<View> weakReference = this.f28199h;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: a */
    public final void m12135a(Activity activity, int i) {
        Window window;
        if (this.f28199h != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View a = m12136a();
            if (a != null && peekDecorView != null && a.getRootView() == peekDecorView.getRootView()) {
                this.f28202k = i;
            }
        }
    }

    /* renamed from: a */
    public final void m12134a(View view) {
        View a = m12136a();
        if (a != null) {
            a.removeOnAttachStateChangeListener(this);
            m12129c(a);
        }
        this.f28199h = new WeakReference<>(view);
        if (view != null) {
            if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
                m12131b(view);
            }
            view.addOnAttachStateChangeListener(this);
            this.f28203l = -2L;
            return;
        }
        this.f28203l = -3L;
    }

    /* renamed from: b */
    public final void m12132b() {
        f28191m.post(new kb0(this));
    }

    /* renamed from: b */
    public final void m12131b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f28198g = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f28196e == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            lb0 lb0Var = new lb0(this);
            this.f28196e = lb0Var;
            this.f28192a.registerReceiver(lb0Var, intentFilter);
        }
        Application application = this.f28193b;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f28200i);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    public final long m12130c() {
        if (this.f28203l <= -2 && m12136a() == null) {
            this.f28203l = -3L;
        }
        return this.f28203l;
    }

    /* renamed from: c */
    public final void m12129c(View view) {
        try {
            if (this.f28198g != null) {
                ViewTreeObserver viewTreeObserver = this.f28198g.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f28198g = null;
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
        BroadcastReceiver broadcastReceiver = this.f28196e;
        if (broadcastReceiver != null) {
            try {
                this.f28192a.unregisterReceiver(broadcastReceiver);
            } catch (Exception e3) {
            }
            this.f28196e = null;
        }
        Application application = this.f28193b;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f28200i);
            } catch (Exception e4) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c3  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m12128d() {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfi.m12128d():void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m12135a(activity, 0);
        m12128d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m12128d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m12135a(activity, 4);
        m12128d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m12135a(activity, 0);
        m12128d();
        m12132b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m12128d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m12135a(activity, 0);
        m12128d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m12128d();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m12128d();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m12128d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f28202k = -1;
        m12131b(view);
        m12128d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f28202k = -1;
        m12128d();
        m12132b();
        m12129c(view);
    }
}
