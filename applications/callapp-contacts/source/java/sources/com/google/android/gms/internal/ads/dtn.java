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

    /* renamed from: a */
    private static final Handler f47582a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private final Context f47583b;

    /* renamed from: c */
    private Application f47584c;

    /* renamed from: d */
    private final PowerManager f47585d;

    /* renamed from: e */
    private final KeyguardManager f47586e;

    /* renamed from: f */
    private BroadcastReceiver f47587f;

    /* renamed from: g */
    private final zzfa f47588g;

    /* renamed from: h */
    private WeakReference<ViewTreeObserver> f47589h;

    /* renamed from: i */
    private WeakReference<View> f47590i;

    /* renamed from: j */
    private dlg f47591j;

    /* renamed from: k */
    private byte f47592k = (byte) (-1);

    /* renamed from: l */
    private int f47593l = -1;

    /* renamed from: m */
    private long f47594m = -3;

    public dtn(Context context, zzfa zzfaVar) {
        Context applicationContext = context.getApplicationContext();
        this.f47583b = applicationContext;
        this.f47588g = zzfaVar;
        this.f47585d = (PowerManager) applicationContext.getSystemService("power");
        this.f47586e = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.f47584c = (Application) applicationContext;
            this.f47591j = new dlg((Application) applicationContext, this);
        }
        m15715a((View) null);
    }

    /* renamed from: a */
    private final void m15716a(Activity activity, int i) {
        Window window;
        if (this.f47590i == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View m15713b = m15713b();
        if (m15713b == null || peekDecorView == null || m15713b.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f47593l = i;
    }

    /* renamed from: b */
    private final View m15713b() {
        WeakReference<View> weakReference = this.f47590i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: b */
    private final void m15712b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f47589h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f47587f == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            dtp dtpVar = new dtp(this);
            this.f47587f = dtpVar;
            this.f47583b.registerReceiver(dtpVar, intentFilter);
        }
        Application application = this.f47584c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f47591j);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    private final void m15711c() {
        f47582a.post(new dtq(this));
    }

    /* renamed from: c */
    private final void m15710c(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f47589h;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f47589h = null;
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
        BroadcastReceiver broadcastReceiver = this.f47587f;
        if (broadcastReceiver != null) {
            try {
                this.f47583b.unregisterReceiver(broadcastReceiver);
            } catch (Exception e3) {
            }
            this.f47587f = null;
        }
        Application application = this.f47584c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f47591j);
            } catch (Exception e4) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c2  */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15709d() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dtn.m15709d():void");
    }

    /* renamed from: a */
    public final long m15717a() {
        if (this.f47594m <= -2 && m15713b() == null) {
            this.f47594m = -3L;
        }
        return this.f47594m;
    }

    /* renamed from: a */
    public final void m15715a(View view) {
        View m15713b = m15713b();
        if (m15713b != null) {
            m15713b.removeOnAttachStateChangeListener(this);
            m15710c(m15713b);
        }
        this.f47590i = new WeakReference<>(view);
        if (view == null) {
            this.f47594m = -3L;
            return;
        }
        if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
            m15712b(view);
        }
        view.addOnAttachStateChangeListener(this);
        this.f47594m = -2L;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m15716a(activity, 0);
        m15709d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m15709d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m15716a(activity, 4);
        m15709d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m15716a(activity, 0);
        m15709d();
        m15711c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m15709d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m15716a(activity, 0);
        m15709d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m15709d();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m15709d();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m15709d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f47593l = -1;
        m15712b(view);
        m15709d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f47593l = -1;
        m15709d();
        m15711c();
        m15710c(view);
    }
}
