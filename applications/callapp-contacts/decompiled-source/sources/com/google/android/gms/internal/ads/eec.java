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
import com.google.android.gms.ads.internal.util.zzbp;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eec.class */
public final class eec implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a  reason: collision with root package name */
    static final long f27716a = ((Long) ekb.e().a(aq.aP)).longValue();

    /* renamed from: c  reason: collision with root package name */
    private final Context f27718c;

    /* renamed from: d  reason: collision with root package name */
    private Application f27719d;
    private final WindowManager e;
    private final PowerManager f;
    private final KeyguardManager g;
    private BroadcastReceiver h;
    private WeakReference<ViewTreeObserver> i;
    private WeakReference<View> j;
    private eel k;
    private final DisplayMetrics o;
    private final Rect p;

    /* renamed from: b  reason: collision with root package name */
    zzbp f27717b = new zzbp(f27716a);
    private boolean l = false;
    private int m = -1;
    private final HashSet<eeg> n = new HashSet<>();

    public eec(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.f27718c = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.e = windowManager;
        this.f = (PowerManager) applicationContext.getSystemService("power");
        this.g = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.f27719d = (Application) applicationContext;
            this.k = new eel((Application) applicationContext, this);
        }
        this.o = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.p = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.j;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            c(view2);
        }
        this.j = new WeakReference<>(view);
        if (view != null) {
            if (zzr.zzkx().isAttachedToWindow(view)) {
                b(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final Rect a(Rect rect) {
        return new Rect(b(rect.left), b(rect.top), b(rect.right), b(rect.bottom));
    }

    private final List<Rect> a(View view) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (view2.isScrollContainer() && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(a(rect));
                }
            }
            return arrayList;
        } catch (Exception e) {
            zzr.zzkz().a(e, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    private final void a() {
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.eef

            /* renamed from: a  reason: collision with root package name */
            private final eec f27725a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27725a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27725a.a(3);
            }
        });
    }

    private final void a(Activity activity, int i) {
        Window window;
        if (this.j != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View view = this.j.get();
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.m = i;
            }
        }
    }

    private final int b(int i) {
        return (int) (i / this.o.density);
    }

    private final void b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.i = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.h == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.h = new eee(this);
            zzr.zzlq().zza(this.f27718c, this.h, intentFilter);
        }
        Application application = this.f27719d;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.k);
            } catch (Exception e) {
                zzd.zzc("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private final void c(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.i;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.i = null;
            }
        } catch (Exception e) {
            zzd.zzc("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            zzd.zzc("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.h != null) {
            try {
                zzr.zzlq().zza(this.f27718c, this.h);
            } catch (IllegalStateException e3) {
                zzd.zzc("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                zzr.zzkz().a(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.h = null;
        }
        Application application = this.f27719d;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.k);
            } catch (Exception e5) {
                zzd.zzc("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01f8 A[LOOP:0: B:74:0x01ee->B:76:0x01f8, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r19) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eec.a(int):void");
    }

    public final void a(eeg eegVar) {
        this.n.add(eegVar);
        a(3);
    }

    public final void b(eeg eegVar) {
        this.n.remove(eegVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 0);
        a(3);
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(3);
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 4);
        a(3);
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 0);
        a(3);
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(3);
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 0);
        a(3);
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(3);
        a();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        a(2);
        a();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        a(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.m = -1;
        b(view);
        a(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.m = -1;
        a(3);
        a();
        c(view);
    }
}
