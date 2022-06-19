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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfj.class */
public final class zzfj implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final Handler zzaac = new Handler(Looper.getMainLooper());
    private final Context zzaad;
    private final PowerManager zzaae;
    private final KeyguardManager zzaaf;
    private BroadcastReceiver zzaag;
    private WeakReference<ViewTreeObserver> zzaah;
    private WeakReference<View> zzaai;
    private zzel zzaaj;
    private byte zzaak = (byte) (-1);
    private int zzaal = -1;
    private long zzaam = -3;
    private Application zzyd;
    private final zzfa zzyp;

    public zzfj(Context context, zzfa zzfaVar) {
        Context applicationContext = context.getApplicationContext();
        this.zzaad = applicationContext;
        this.zzyp = zzfaVar;
        this.zzaae = (PowerManager) applicationContext.getSystemService("power");
        this.zzaaf = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.zzyd = (Application) applicationContext;
            this.zzaaj = new zzel((Application) applicationContext, this);
        }
        zze(null);
    }

    private final View getCurrentView() {
        WeakReference<View> weakReference = this.zzaai;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private final void zza(Activity activity, int i) {
        Window window;
        if (this.zzaai == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View currentView = getCurrentView();
        if (currentView == null || peekDecorView == null || currentView.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.zzaal = i;
    }

    private final void zzct() {
        zzaac.post(new zzfm(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c2  */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzcv() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfj.zzcv():void");
    }

    private final void zzf(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzaah = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzaag == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            zzfl zzflVar = new zzfl(this);
            this.zzaag = zzflVar;
            this.zzaad.registerReceiver(zzflVar, intentFilter);
        }
        Application application = this.zzyd;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzaaj);
            } catch (Exception e) {
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
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
        }
        BroadcastReceiver broadcastReceiver = this.zzaag;
        if (broadcastReceiver != null) {
            try {
                this.zzaad.unregisterReceiver(broadcastReceiver);
            } catch (Exception e3) {
            }
            this.zzaag = null;
        }
        Application application = this.zzyd;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzaaj);
            } catch (Exception e4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzcv();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzcv();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzcv();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzcv();
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzcv();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzcv();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzcv();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzcv();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzcv();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzaal = -1;
        zzf(view);
        zzcv();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzaal = -1;
        zzcv();
        zzct();
        zzg(view);
    }

    public final long zzcu() {
        if (this.zzaam <= -2 && getCurrentView() == null) {
            this.zzaam = -3L;
        }
        return this.zzaam;
    }

    public final void zze(View view) {
        View currentView = getCurrentView();
        if (currentView != null) {
            currentView.removeOnAttachStateChangeListener(this);
            zzg(currentView);
        }
        this.zzaai = new WeakReference<>(view);
        if (view == null) {
            this.zzaam = -3L;
            return;
        }
        if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
            zzf(view);
        }
        view.addOnAttachStateChangeListener(this);
        this.zzaam = -2L;
    }
}
