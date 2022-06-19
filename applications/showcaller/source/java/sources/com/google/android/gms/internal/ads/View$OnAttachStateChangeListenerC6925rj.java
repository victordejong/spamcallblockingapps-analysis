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
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5682d1;
import java.lang.ref.WeakReference;
import java.util.HashSet;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.rj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rj.class */
public final class View$OnAttachStateChangeListenerC6925rj implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    private static final long f28975d = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25572R0)).longValue();

    /* renamed from: e */
    private final Context f28976e;

    /* renamed from: f */
    private Application f28977f;

    /* renamed from: g */
    private final WindowManager f28978g;

    /* renamed from: h */
    private final PowerManager f28979h;

    /* renamed from: i */
    private final KeyguardManager f28980i;

    /* renamed from: j */
    BroadcastReceiver f28981j;

    /* renamed from: k */
    private WeakReference<ViewTreeObserver> f28982k;

    /* renamed from: l */
    final WeakReference<View> f28983l;

    /* renamed from: m */
    private C6406dk f28984m;

    /* renamed from: n */
    private final C5682d1 f28985n = new C5682d1(f28975d);

    /* renamed from: o */
    private boolean f28986o = false;

    /* renamed from: p */
    private int f28987p = -1;

    /* renamed from: q */
    private final HashSet<AbstractC6888qj> f28988q = new HashSet<>();

    /* renamed from: r */
    private final DisplayMetrics f28989r;

    /* renamed from: s */
    private final Rect f28990s;

    public View$OnAttachStateChangeListenerC6925rj(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.f28976e = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f28978g = windowManager;
        this.f28979h = (PowerManager) applicationContext.getSystemService("power");
        this.f28980i = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f28977f = application;
            this.f28984m = new C6406dk(application, this);
        }
        this.f28989r = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.f28990s = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.f28983l;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m11439m(view2);
        }
        this.f28983l = new WeakReference<>(view);
        if (view != null) {
            if (C5667s.m18158f().mo18018g(view)) {
                m11440l(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: h */
    private final void m11444h() {
        C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.nj

            /* renamed from: d */
            private final View$OnAttachStateChangeListenerC6925rj f27158d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27158d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27158d.m11445g();
            }
        });
    }

    /* renamed from: i */
    private final void m11443i(Activity activity, int i) {
        Window window;
        if (this.f28983l == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.f28983l.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f28987p = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x01c3, code lost:
        if (r32 == 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01ed, code lost:
        if (r32 == 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01f0, code lost:
        r39 = true;
        r40 = 0;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11442j(int r21) {
        /*
            Method dump skipped, instructions count: 891
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.View$OnAttachStateChangeListenerC6925rj.m11442j(int):void");
    }

    /* renamed from: k */
    private final int m11441k(int i) {
        return (int) (i / this.f28989r.density);
    }

    /* renamed from: l */
    private final void m11440l(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f28982k = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f28981j == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f28981j = new C6814oj(this);
            C5667s.m18139y().m18005b(this.f28976e, this.f28981j, intentFilter);
        }
        Application application = this.f28977f;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f28984m);
            } catch (Exception e) {
                ei0.m15466d("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    /* renamed from: m */
    private final void m11439m(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f28982k;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f28982k = null;
            }
        } catch (Exception e) {
            ei0.m15466d("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            ei0.m15466d("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.f28981j != null) {
            try {
                C5667s.m18139y().m18004c(this.f28976e, this.f28981j);
            } catch (IllegalStateException e3) {
                ei0.m15466d("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                C5667s.m18156h().m12235k(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f28981j = null;
        }
        Application application = this.f28977f;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f28984m);
            } catch (Exception e5) {
                ei0.m15466d("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* renamed from: a */
    public final void m11451a(AbstractC6888qj abstractC6888qj) {
        this.f28988q.add(abstractC6888qj);
        m11442j(3);
    }

    /* renamed from: b */
    public final void m11450b(AbstractC6888qj abstractC6888qj) {
        this.f28988q.remove(abstractC6888qj);
    }

    /* renamed from: d */
    final Rect m11448d(Rect rect) {
        return new Rect(m11441k(rect.left), m11441k(rect.top), m11441k(rect.right), m11441k(rect.bottom));
    }

    /* renamed from: e */
    public final void m11447e(long j) {
        this.f28985n.m18045b(j);
    }

    /* renamed from: f */
    public final void m11446f() {
        this.f28985n.m18045b(f28975d);
    }

    /* renamed from: g */
    public final /* synthetic */ void m11445g() {
        m11442j(3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m11443i(activity, 0);
        m11442j(3);
        m11444h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m11442j(3);
        m11444h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m11443i(activity, 4);
        m11442j(3);
        m11444h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m11443i(activity, 0);
        m11442j(3);
        m11444h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m11442j(3);
        m11444h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m11443i(activity, 0);
        m11442j(3);
        m11444h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m11442j(3);
        m11444h();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m11442j(2);
        m11444h();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m11442j(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f28987p = -1;
        m11440l(view);
        m11442j(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f28987p = -1;
        m11442j(3);
        m11444h();
        m11439m(view);
    }
}
