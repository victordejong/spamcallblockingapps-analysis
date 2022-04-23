package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/w.class */
public final class w implements p {
    private static final w i = new w();

    /* renamed from: d  reason: collision with root package name */
    Handler f2591d;

    /* renamed from: a  reason: collision with root package name */
    int f2588a = 0;

    /* renamed from: b  reason: collision with root package name */
    int f2589b = 0;

    /* renamed from: c  reason: collision with root package name */
    boolean f2590c = true;
    private boolean h = true;
    final LifecycleRegistry e = new LifecycleRegistry(this);
    Runnable f = new Runnable() { // from class: androidx.lifecycle.w.1
        @Override // java.lang.Runnable
        public final void run() {
            w wVar = w.this;
            if (wVar.f2589b == 0) {
                wVar.f2590c = true;
                wVar.e.handleLifecycleEvent(j.a.ON_PAUSE);
            }
            w.this.d();
        }
    };
    ReportFragment.a g = new ReportFragment.a() { // from class: androidx.lifecycle.w.2
        @Override // androidx.lifecycle.ReportFragment.a
        public final void a() {
            w.this.b();
        }

        @Override // androidx.lifecycle.ReportFragment.a
        public final void b() {
            w.this.c();
        }
    };

    private w() {
    }

    public static p a() {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        w wVar = i;
        wVar.f2591d = new Handler();
        wVar.e.handleLifecycleEvent(j.a.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new e() { // from class: androidx.lifecycle.w.3
            @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.b(activity).f2547a = w.this.g;
                }
            }

            @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
                w wVar2 = w.this;
                wVar2.f2589b--;
                if (wVar2.f2589b == 0) {
                    wVar2.f2591d.postDelayed(wVar2.f, 700L);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPreCreated(Activity activity, Bundle bundle) {
                activity.registerActivityLifecycleCallbacks(new e() { // from class: androidx.lifecycle.w.3.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostResumed(Activity activity2) {
                        w.this.c();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostStarted(Activity activity2) {
                        w.this.b();
                    }
                });
            }

            @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
                w wVar2 = w.this;
                wVar2.f2588a--;
                wVar2.d();
            }
        });
    }

    final void b() {
        int i2 = this.f2588a + 1;
        this.f2588a = i2;
        if (i2 == 1 && this.h) {
            this.e.handleLifecycleEvent(j.a.ON_START);
            this.h = false;
        }
    }

    final void c() {
        int i2 = this.f2589b + 1;
        this.f2589b = i2;
        if (i2 != 1) {
            return;
        }
        if (this.f2590c) {
            this.e.handleLifecycleEvent(j.a.ON_RESUME);
            this.f2590c = false;
            return;
        }
        this.f2591d.removeCallbacks(this.f);
    }

    final void d() {
        if (this.f2588a == 0 && this.f2590c) {
            this.e.handleLifecycleEvent(j.a.ON_STOP);
            this.h = true;
        }
    }

    @Override // androidx.lifecycle.p
    public final j getLifecycle() {
        return this.e;
    }
}
