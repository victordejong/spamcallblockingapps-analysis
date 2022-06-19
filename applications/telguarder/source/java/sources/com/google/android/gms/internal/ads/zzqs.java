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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqs.class */
public final class zzqs implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final long zzbrd = ((Long) zzwr.zzqr().zzd(zzabp.zzcqr)).longValue();
    private final Context zzaad;
    private final PowerManager zzaae;
    private final KeyguardManager zzaaf;
    private WeakReference<ViewTreeObserver> zzaah;
    private final WindowManager zzbre;
    private BroadcastReceiver zzbrf;
    private WeakReference<View> zzbrg;
    private zzqz zzbrh;
    private final Rect zzbrl;
    private final DisplayMetrics zzwz;
    private Application zzyd;
    private zzbp zzbri = new zzbp(zzbrd);
    private boolean zzbrj = false;
    private int zzaal = -1;
    private final HashSet<zzqw> zzbrk = new HashSet<>();

    public zzqs(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.zzaad = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.zzbre = windowManager;
        this.zzaae = (PowerManager) applicationContext.getSystemService("power");
        this.zzaaf = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.zzyd = (Application) applicationContext;
            this.zzbrh = new zzqz((Application) applicationContext, this);
        }
        this.zzwz = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.zzbrl = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.zzbrg;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzg(view2);
        }
        this.zzbrg = new WeakReference<>(view);
        if (view != null) {
            if (zzr.zzkt().isAttachedToWindow(view)) {
                zzf(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final Rect zza(Rect rect) {
        return new Rect(zzbs(rect.left), zzbs(rect.top), zzbs(rect.right), zzbs(rect.bottom));
    }

    private final void zza(Activity activity, int i) {
        Window window;
        if (this.zzbrg == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.zzbrg.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.zzaal = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01f7 A[LOOP:0: B:74:0x01ee->B:76:0x01f7, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzbr(int r19) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqs.zzbr(int):void");
    }

    private final int zzbs(int i) {
        return (int) (i / this.zzwz.density);
    }

    private final void zzct() {
        zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzqv
            private final zzqs zzbrt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbrt = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzbrt.zzlu();
            }
        });
    }

    private final void zzf(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzaah = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzbrf == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzbrf = new zzqu(this);
            zzr.zzlm().zza(this.zzaad, this.zzbrf, intentFilter);
        }
        Application application = this.zzyd;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzbrh);
            } catch (Exception e) {
                zzd.zzc("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private final void zzg(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.zzaah;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzaah = null;
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
        if (this.zzbrf != null) {
            try {
                zzr.zzlm().zza(this.zzaad, this.zzbrf);
            } catch (IllegalStateException e3) {
                zzd.zzc("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                zzr.zzkv().zza(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.zzbrf = null;
        }
        Application application = this.zzyd;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzbrh);
            } catch (Exception e5) {
                zzd.zzc("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    private final List<Rect> zzi(View view) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (view2.isScrollContainer() && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(zza(rect));
                }
            }
            return arrayList;
        } catch (Exception e) {
            zzr.zzkv().zza(e, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzbr(3);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzbr(3);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzbr(3);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzbr(3);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzbr(3);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzbr(3);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzbr(3);
        zzct();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzbr(2);
        zzct();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzbr(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzaal = -1;
        zzf(view);
        zzbr(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzaal = -1;
        zzbr(3);
        zzct();
        zzg(view);
    }

    public final void zza(zzqw zzqwVar) {
        this.zzbrk.add(zzqwVar);
        zzbr(3);
    }

    public final void zzb(zzqw zzqwVar) {
        this.zzbrk.remove(zzqwVar);
    }

    public final void zzen(long j) {
        this.zzbri.zzfb(j);
    }

    public final void zzlt() {
        this.zzbri.zzfb(zzbrd);
    }

    public final /* synthetic */ void zzlu() {
        zzbr(3);
    }
}
