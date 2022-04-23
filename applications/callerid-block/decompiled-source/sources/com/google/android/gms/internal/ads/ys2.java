package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.ads.internal.util.C1435m0;
import java.lang.ref.WeakReference;
import java.util.HashSet;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ys2.class */
public final class ys2 implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: q */
    private static final long f9242q = ((Long) C1674c.m7906c().m6878b(C1842m3.f7281L0)).longValue();

    /* renamed from: b */
    private final Context f9243b;

    /* renamed from: c */
    private Application f9244c;

    /* renamed from: d */
    private final WindowManager f9245d;

    /* renamed from: e */
    private final PowerManager f9246e;

    /* renamed from: f */
    private final KeyguardManager f9247f;

    /* renamed from: g */
    BroadcastReceiver f9248g;

    /* renamed from: h */
    private WeakReference<ViewTreeObserver> f9249h;

    /* renamed from: i */
    final WeakReference<View> f9250i;

    /* renamed from: j */
    private kt2 f9251j;

    /* renamed from: k */
    private final C1435m0 f9252k = new C1435m0(f9242q);

    /* renamed from: l */
    private boolean f9253l = false;

    /* renamed from: m */
    private int f9254m = -1;

    /* renamed from: n */
    private final HashSet<xs2> f9255n = new HashSet<>();

    /* renamed from: o */
    private final DisplayMetrics f9256o;

    /* renamed from: p */
    private final Rect f9257p;

    public ys2(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.f9243b = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f9245d = windowManager;
        this.f9246e = (PowerManager) applicationContext.getSystemService("power");
        this.f9247f = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f9244c = application;
            this.f9251j = new kt2(application, this);
        }
        this.f9256o = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.f9257p = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.f9250i;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m4710m(view2);
        }
        this.f9250i = new WeakReference<>(view);
        if (view != null) {
            if (C1407r.m8918f().m8858g(view)) {
                m4711l(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: h */
    private final void m4715h() {
        C1433l1.f5594i.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.us2

            /* renamed from: b */
            private final ys2 f8837b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8837b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8837b.m4717f();
            }
        });
    }

    /* renamed from: i */
    private final void m4714i(Activity activity, int i) {
        Window window;
        if (this.f9250i != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View view = this.f9250i.get();
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.f9254m = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0247 A[LOOP:1: B:79:0x023e->B:81:0x0247, LOOP_END] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4713j(int r19) {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ys2.m4713j(int):void");
    }

    /* renamed from: k */
    private final int m4712k(int i) {
        return (int) (i / this.f9256o.density);
    }

    /* renamed from: l */
    private final void m4711l(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f9249h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f9248g == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f9248g = new vs2(this);
            C1407r.m8899y().m8723b(this.f9243b, this.f9248g, intentFilter);
        }
        Application application = this.f9244c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f9251j);
            } catch (Exception e) {
                C1894po.m6182d("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    /* renamed from: m */
    private final void m4710m(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f9249h;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f9249h = null;
            }
        } catch (Exception e) {
            C1894po.m6182d("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            C1894po.m6182d("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.f9248g != null) {
            try {
                C1407r.m8899y().m8722c(this.f9243b, this.f9248g);
            } catch (IllegalStateException e3) {
                C1894po.m6182d("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                C1407r.m8916h().m4590g(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f9248g = null;
        }
        Application application = this.f9244c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f9251j);
            } catch (Exception e5) {
                C1894po.m6182d("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* renamed from: a */
    public final void m4722a(xs2 xs2Var) {
        this.f9255n.add(xs2Var);
        m4713j(3);
    }

    /* renamed from: b */
    public final void m4721b(xs2 xs2Var) {
        this.f9255n.remove(xs2Var);
    }

    /* renamed from: c */
    final Rect m4720c(Rect rect) {
        return new Rect(m4712k(rect.left), m4712k(rect.top), m4712k(rect.right), m4712k(rect.bottom));
    }

    /* renamed from: d */
    public final void m4719d(long j) {
        this.f9252k.m8739b(j);
    }

    /* renamed from: e */
    public final void m4718e() {
        this.f9252k.m8739b(f9242q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final /* synthetic */ void m4717f() {
        m4713j(3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m4714i(activity, 0);
        m4713j(3);
        m4715h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m4713j(3);
        m4715h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m4714i(activity, 4);
        m4713j(3);
        m4715h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m4714i(activity, 0);
        m4713j(3);
        m4715h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m4713j(3);
        m4715h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m4714i(activity, 0);
        m4713j(3);
        m4715h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m4713j(3);
        m4715h();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m4713j(2);
        m4715h();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m4713j(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f9254m = -1;
        m4711l(view);
        m4713j(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f9254m = -1;
        m4713j(3);
        m4715h();
        m4710m(view);
    }
}
