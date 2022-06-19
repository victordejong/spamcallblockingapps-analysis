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
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C2341q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtn.class */
public final class dtn implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private static final long f15691a = ((Long) dyx.m8158e().m7876a(edi.f16344aC)).longValue();

    /* renamed from: b */
    private final Context f15692b;

    /* renamed from: c */
    private Application f15693c;

    /* renamed from: d */
    private final WindowManager f15694d;

    /* renamed from: e */
    private final PowerManager f15695e;

    /* renamed from: f */
    private final KeyguardManager f15696f;

    /* renamed from: g */
    private BroadcastReceiver f15697g;

    /* renamed from: h */
    private WeakReference<ViewTreeObserver> f15698h;

    /* renamed from: i */
    private WeakReference<View> f15699i;

    /* renamed from: j */
    private dtv f15700j;

    /* renamed from: k */
    private C3624xh f15701k = new C3624xh(f15691a);

    /* renamed from: l */
    private boolean f15702l = false;

    /* renamed from: m */
    private int f15703m = -1;

    /* renamed from: n */
    private final HashSet<dtr> f15704n = new HashSet<>();

    /* renamed from: o */
    private final DisplayMetrics f15705o;

    /* renamed from: p */
    private final Rect f15706p;

    public dtn(Context context, View view) {
        this.f15692b = context.getApplicationContext();
        this.f15694d = (WindowManager) context.getSystemService("window");
        this.f15695e = (PowerManager) this.f15692b.getSystemService("power");
        this.f15696f = (KeyguardManager) context.getSystemService("keyguard");
        if (this.f15692b instanceof Application) {
            this.f15693c = (Application) this.f15692b;
            this.f15700j = new dtv((Application) this.f15692b, this);
        }
        this.f15705o = context.getResources().getDisplayMetrics();
        this.f15706p = new Rect();
        this.f15706p.right = this.f15694d.getDefaultDisplay().getWidth();
        this.f15706p.bottom = this.f15694d.getDefaultDisplay().getHeight();
        View view2 = this.f15699i != null ? this.f15699i.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m8609c(view2);
        }
        this.f15699i = new WeakReference<>(view);
        if (view != null) {
            if (C2341q.m14742e().mo6925a(view)) {
                m8612b(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: a */
    private final Rect m8618a(Rect rect) {
        return new Rect(m8613b(rect.left), m8613b(rect.top), m8613b(rect.right), m8613b(rect.bottom));
    }

    /* renamed from: a */
    private final List<Rect> m8617a(View view) {
        ArrayList emptyList;
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (view2.isScrollContainer() && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(m8618a(rect));
                }
            }
            emptyList = arrayList;
        } catch (Exception e) {
            C2341q.m14740g().m7095a(e, "PositionWatcher.getParentScrollViewRects");
            emptyList = Collections.emptyList();
        }
        return emptyList;
    }

    /* renamed from: a */
    public final void m8621a(int i) {
        if (this.f15704n.size() == 0 || this.f15699i == null) {
            return;
        }
        View view = this.f15699i.get();
        boolean z = i == 1;
        boolean z2 = view == null;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        boolean z3 = false;
        Rect rect3 = new Rect();
        boolean z4 = false;
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view != null) {
            z3 = view.getGlobalVisibleRect(rect2);
            z4 = view.getLocalVisibleRect(rect3);
            view.getHitRect(rect4);
            try {
                view.getLocationOnScreen(iArr);
                view.getLocationInWindow(iArr2);
            } catch (Exception e) {
                C3556uu.m6748c("Failure getting view location.", e);
            }
            rect.left = iArr[0];
            rect.top = iArr[1];
            rect.right = rect.left + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
        }
        List<Rect> emptyList = (!((Boolean) dyx.m8158e().m7876a(edi.f16347aF)).booleanValue() || view == null) ? Collections.emptyList() : m8617a(view);
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        if (this.f15703m != -1) {
            windowVisibility = this.f15703m;
        }
        boolean z5 = !z2 && C2341q.m14744c().m6993a(view, this.f15695e, this.f15696f) && z3 && z4 && windowVisibility == 0;
        if (z && !this.f15701k.m6824a() && z5 == this.f15702l) {
            return;
        }
        if (!z5 && !this.f15702l && i == 1) {
            return;
        }
        dtt dttVar = new dtt(C2341q.m14737j().mo13861b(), this.f15695e.isScreenOn(), view != null && C2341q.m14742e().mo6925a(view), view != null ? view.getWindowVisibility() : 8, m8618a(this.f15706p), m8618a(rect), m8618a(rect2), z3, m8618a(rect3), z4, m8618a(rect4), this.f15705o.density, z5, emptyList);
        Iterator<dtr> it = this.f15704n.iterator();
        while (it.hasNext()) {
            it.next().mo7170a(dttVar);
        }
        this.f15702l = z5;
    }

    /* renamed from: a */
    private final void m8619a(Activity activity, int i) {
        Window window;
        if (this.f15699i == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.f15699i.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f15703m = i;
    }

    /* renamed from: b */
    private final int m8613b(int i) {
        return (int) (i / this.f15705o.density);
    }

    /* renamed from: b */
    private final void m8612b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f15698h = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f15697g == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f15697g = new dtp(this);
            C2341q.m14723x().m6816a(this.f15692b, this.f15697g, intentFilter);
        }
        if (this.f15693c != null) {
            try {
                this.f15693c.registerActivityLifecycleCallbacks(this.f15700j);
            } catch (Exception e) {
                C3556uu.m6748c("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    /* renamed from: c */
    private final void m8610c() {
        C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.dtq

            /* renamed from: a */
            private final dtn f15714a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15714a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15714a.m8614b();
            }
        });
    }

    /* renamed from: c */
    private final void m8609c(View view) {
        try {
            if (this.f15698h != null) {
                ViewTreeObserver viewTreeObserver = this.f15698h.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f15698h = null;
            }
        } catch (Exception e) {
            C3556uu.m6748c("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            C3556uu.m6748c("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.f15697g != null) {
            try {
                C2341q.m14723x().m6817a(this.f15692b, this.f15697g);
            } catch (IllegalStateException e3) {
                C3556uu.m6748c("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                C2341q.m14740g().m7095a(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f15697g = null;
        }
        if (this.f15693c != null) {
            try {
                this.f15693c.unregisterActivityLifecycleCallbacks(this.f15700j);
            } catch (Exception e5) {
                C3556uu.m6748c("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* renamed from: a */
    public final void m8622a() {
        this.f15701k.m6823a(f15691a);
    }

    /* renamed from: a */
    public final void m8620a(long j) {
        this.f15701k.m6823a(j);
    }

    /* renamed from: a */
    public final void m8615a(dtr dtrVar) {
        this.f15704n.add(dtrVar);
        m8621a(3);
    }

    /* renamed from: b */
    public final /* synthetic */ void m8614b() {
        m8621a(3);
    }

    /* renamed from: b */
    public final void m8611b(dtr dtrVar) {
        this.f15704n.remove(dtrVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m8619a(activity, 0);
        m8621a(3);
        m8610c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m8621a(3);
        m8610c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m8619a(activity, 4);
        m8621a(3);
        m8610c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m8619a(activity, 0);
        m8621a(3);
        m8610c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m8621a(3);
        m8610c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m8619a(activity, 0);
        m8621a(3);
        m8610c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m8621a(3);
        m8610c();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m8621a(2);
        m8610c();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m8621a(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f15703m = -1;
        m8612b(view);
        m8621a(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f15703m = -1;
        m8621a(3);
        m8610c();
        m8609c(view);
    }
}
