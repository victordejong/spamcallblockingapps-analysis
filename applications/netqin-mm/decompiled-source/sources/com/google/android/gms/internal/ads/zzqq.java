package com.google.android.gms.internal.ads;

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
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzqq;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.mf0;
import p131c.p161d.p170b.p224d.p252g.p253a.nf0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqq.class */
public final class zzqq implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: p */
    public static final long f28864p = ((Long) zzwm.m11166e().m16921a(zzabb.f23669E0)).longValue();

    /* renamed from: a */
    public final Context f28865a;

    /* renamed from: b */
    public Application f28866b;

    /* renamed from: c */
    public final WindowManager f28867c;

    /* renamed from: d */
    public final PowerManager f28868d;

    /* renamed from: e */
    public final KeyguardManager f28869e;
    @VisibleForTesting

    /* renamed from: f */
    public BroadcastReceiver f28870f;

    /* renamed from: g */
    public WeakReference<ViewTreeObserver> f28871g;

    /* renamed from: h */
    public WeakReference<View> f28872h;

    /* renamed from: i */
    public nf0 f28873i;

    /* renamed from: j */
    public zzbaw f28874j = new zzbaw(f28864p);

    /* renamed from: k */
    public boolean f28875k = false;

    /* renamed from: l */
    public int f28876l = -1;

    /* renamed from: m */
    public final HashSet<zzqu> f28877m = new HashSet<>();

    /* renamed from: n */
    public final DisplayMetrics f28878n;

    /* renamed from: o */
    public final Rect f28879o;

    public zzqq(Context context, View view) {
        this.f28865a = context.getApplicationContext();
        this.f28867c = (WindowManager) context.getSystemService("window");
        this.f28868d = (PowerManager) this.f28865a.getSystemService("power");
        this.f28869e = (KeyguardManager) context.getSystemService("keyguard");
        Context context2 = this.f28865a;
        if (context2 instanceof Application) {
            this.f28866b = (Application) context2;
            this.f28873i = new nf0((Application) context2, this);
        }
        this.f28878n = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.f28879o = rect;
        rect.right = this.f28867c.getDefaultDisplay().getWidth();
        this.f28879o.bottom = this.f28867c.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.f28872h;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m11538b(view2);
        }
        this.f28872h = new WeakReference<>(view);
        if (view != null) {
            if (zzp.m17967e().mo16035a(view)) {
                m11543a(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: a */
    public final Rect m11544a(Rect rect) {
        return new Rect(m11539b(rect.left), m11539b(rect.top), m11539b(rect.right), m11539b(rect.bottom));
    }

    /* renamed from: a */
    public final void m11548a() {
        zzayu.f24665h.post(new Runnable(this) { // from class: c.d.b.d.g.a.lf0

            /* renamed from: a */
            public final zzqq f13966a;

            {
                this.f13966a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13966a.m11536c();
            }
        });
    }

    /* renamed from: a */
    public final void m11547a(int i) {
        WeakReference<View> weakReference;
        boolean z;
        boolean z2;
        if (this.f28877m.size() != 0 && (weakReference = this.f28872h) != null) {
            View view = weakReference.get();
            boolean z3 = i == 1;
            boolean z4 = view == null;
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            Rect rect3 = new Rect();
            Rect rect4 = new Rect();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            if (view != null) {
                z2 = view.getGlobalVisibleRect(rect2);
                z = view.getLocalVisibleRect(rect3);
                view.getHitRect(rect4);
                try {
                    view.getLocationOnScreen(iArr);
                    view.getLocationInWindow(iArr2);
                } catch (Exception e) {
                    zzbbq.m15855b("Failure getting view location.", e);
                }
                int i2 = iArr[0];
                rect.left = i2;
                rect.top = iArr[1];
                rect.right = i2 + view.getWidth();
                rect.bottom = rect.top + view.getHeight();
            } else {
                z2 = false;
                z = false;
            }
            List<Rect> emptyList = (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23684H0)).booleanValue() || view == null) ? Collections.emptyList() : m11535c(view);
            int windowVisibility = view != null ? view.getWindowVisibility() : 8;
            int i3 = this.f28876l;
            if (i3 != -1) {
                windowVisibility = i3;
            }
            boolean z5 = !z4 && zzp.m17969c().m16129a(view, this.f28868d, this.f28869e) && z2 && z && windowVisibility == 0;
            if (z3 && !this.f28874j.m15931a() && z5 == this.f28875k) {
                return;
            }
            if (z5 || this.f28875k || i != 1) {
                zzqr zzqrVar = new zzqr(zzp.m17962j().mo17092a(), this.f28868d.isScreenOn(), view != null && zzp.m17967e().mo16035a(view), view != null ? view.getWindowVisibility() : 8, m11544a(this.f28879o), m11544a(rect), m11544a(rect2), z2, m11544a(rect3), z, m11544a(rect4), this.f28878n.density, z5, emptyList);
                Iterator<zzqu> it = this.f28877m.iterator();
                while (it.hasNext()) {
                    it.next().mo11534a(zzqrVar);
                }
                this.f28875k = z5;
            }
        }
    }

    /* renamed from: a */
    public final void m11546a(long j) {
        this.f28874j.m15930a(j);
    }

    /* renamed from: a */
    public final void m11545a(Activity activity, int i) {
        Window window;
        if (this.f28872h != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View view = this.f28872h.get();
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.f28876l = i;
            }
        }
    }

    /* renamed from: a */
    public final void m11543a(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f28871g = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f28870f == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f28870f = new mf0(this);
            zzp.m17948x().m15917a(this.f28865a, this.f28870f, intentFilter);
        }
        Application application = this.f28866b;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f28873i);
            } catch (Exception e) {
                zzbbq.m15855b("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    /* renamed from: a */
    public final void m11541a(zzqu zzquVar) {
        this.f28877m.add(zzquVar);
        m11547a(3);
    }

    /* renamed from: b */
    public final int m11539b(int i) {
        return (int) (i / this.f28878n.density);
    }

    /* renamed from: b */
    public final void m11540b() {
        this.f28874j.m15930a(f28864p);
    }

    /* renamed from: b */
    public final void m11538b(View view) {
        try {
            if (this.f28871g != null) {
                ViewTreeObserver viewTreeObserver = this.f28871g.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f28871g = null;
            }
        } catch (Exception e) {
            zzbbq.m15855b("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            zzbbq.m15855b("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.f28870f != null) {
            try {
                zzp.m17948x().m15918a(this.f28865a, this.f28870f);
            } catch (IllegalStateException e3) {
                zzbbq.m15855b("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                zzp.m17965g().m16188a(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f28870f = null;
        }
        Application application = this.f28866b;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f28873i);
            } catch (Exception e5) {
                zzbbq.m15855b("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* renamed from: b */
    public final void m11537b(zzqu zzquVar) {
        this.f28877m.remove(zzquVar);
    }

    /* renamed from: c */
    public final List<Rect> m11535c(View view) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (view2.isScrollContainer() && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(m11544a(rect));
                }
            }
            return arrayList;
        } catch (Exception e) {
            zzp.m17965g().m16188a(e, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    /* renamed from: c */
    public final /* synthetic */ void m11536c() {
        m11547a(3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m11545a(activity, 0);
        m11547a(3);
        m11548a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m11547a(3);
        m11548a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m11545a(activity, 4);
        m11547a(3);
        m11548a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m11545a(activity, 0);
        m11547a(3);
        m11548a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m11547a(3);
        m11548a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m11545a(activity, 0);
        m11547a(3);
        m11548a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m11547a(3);
        m11548a();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m11547a(2);
        m11548a();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m11547a(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f28876l = -1;
        m11543a(view);
        m11547a(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f28876l = -1;
        m11547a(3);
        m11548a();
        m11538b(view);
    }
}
