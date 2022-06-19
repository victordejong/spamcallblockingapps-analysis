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

    /* renamed from: a */
    static final long f48839a = ((Long) ekb.m14831e().m18571a(C12187aq.f42653aP)).longValue();

    /* renamed from: c */
    private final Context f48841c;

    /* renamed from: d */
    private Application f48842d;

    /* renamed from: e */
    private final WindowManager f48843e;

    /* renamed from: f */
    private final PowerManager f48844f;

    /* renamed from: g */
    private final KeyguardManager f48845g;

    /* renamed from: h */
    private BroadcastReceiver f48846h;

    /* renamed from: i */
    private WeakReference<ViewTreeObserver> f48847i;

    /* renamed from: j */
    private WeakReference<View> f48848j;

    /* renamed from: k */
    private eel f48849k;

    /* renamed from: o */
    private final DisplayMetrics f48853o;

    /* renamed from: p */
    private final Rect f48854p;

    /* renamed from: b */
    zzbp f48840b = new zzbp(f48839a);

    /* renamed from: l */
    private boolean f48850l = false;

    /* renamed from: m */
    private int f48851m = -1;

    /* renamed from: n */
    private final HashSet<eeg> f48852n = new HashSet<>();

    public eec(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.f48841c = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f48843e = windowManager;
        this.f48844f = (PowerManager) applicationContext.getSystemService("power");
        this.f48845g = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.f48842d = (Application) applicationContext;
            this.f48849k = new eel((Application) applicationContext, this);
        }
        this.f48853o = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.f48854p = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.f48848j;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m15124c(view2);
        }
        this.f48848j = new WeakReference<>(view);
        if (view != null) {
            if (zzr.zzkx().isAttachedToWindow(view)) {
                m15126b(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: a */
    private final Rect m15131a(Rect rect) {
        return new Rect(m15127b(rect.left), m15127b(rect.top), m15127b(rect.right), m15127b(rect.bottom));
    }

    /* renamed from: a */
    private final List<Rect> m15130a(View view) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (view2.isScrollContainer() && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(m15131a(rect));
                }
            }
            return arrayList;
        } catch (Exception e) {
            zzr.zzkz().m13979a(e, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    /* renamed from: a */
    private final void m15134a() {
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.eef

            /* renamed from: a */
            private final eec f48862a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f48862a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f48862a.m15133a(3);
            }
        });
    }

    /* renamed from: a */
    private final void m15132a(Activity activity, int i) {
        Window window;
        if (this.f48848j == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.f48848j.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f48851m = i;
    }

    /* renamed from: b */
    private final int m15127b(int i) {
        return (int) (i / this.f48853o.density);
    }

    /* renamed from: b */
    private final void m15126b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f48847i = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f48846h == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f48846h = new eee(this);
            zzr.zzlq().zza(this.f48841c, this.f48846h, intentFilter);
        }
        Application application = this.f48842d;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f48849k);
            } catch (Exception e) {
                zzd.zzc("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    /* renamed from: c */
    private final void m15124c(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f48847i;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f48847i = null;
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
        if (this.f48846h != null) {
            try {
                zzr.zzlq().zza(this.f48841c, this.f48846h);
            } catch (IllegalStateException e3) {
                zzd.zzc("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                zzr.zzkz().m13979a(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f48846h = null;
        }
        Application application = this.f48842d;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f48849k);
            } catch (Exception e5) {
                zzd.zzc("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01f8 A[LOOP:0: B:74:0x01ee->B:76:0x01f8, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15133a(int r19) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eec.m15133a(int):void");
    }

    /* renamed from: a */
    public final void m15128a(eeg eegVar) {
        this.f48852n.add(eegVar);
        m15133a(3);
    }

    /* renamed from: b */
    public final void m15125b(eeg eegVar) {
        this.f48852n.remove(eegVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m15132a(activity, 0);
        m15133a(3);
        m15134a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m15133a(3);
        m15134a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m15132a(activity, 4);
        m15133a(3);
        m15134a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m15132a(activity, 0);
        m15133a(3);
        m15134a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m15133a(3);
        m15134a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m15132a(activity, 0);
        m15133a(3);
        m15134a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m15133a(3);
        m15134a();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m15133a(2);
        m15134a();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m15133a(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f48851m = -1;
        m15126b(view);
        m15133a(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f48851m = -1;
        m15133a(3);
        m15134a();
        m15124c(view);
    }
}
