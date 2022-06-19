package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.ReportFragment;
/* renamed from: androidx.lifecycle.w */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/w.class */
public final class C1276w implements AbstractC1263p {

    /* renamed from: i */
    private static final C1276w f4841i = new C1276w();

    /* renamed from: d */
    Handler f4845d;

    /* renamed from: a */
    int f4842a = 0;

    /* renamed from: b */
    int f4843b = 0;

    /* renamed from: c */
    boolean f4844c = true;

    /* renamed from: h */
    private boolean f4849h = true;

    /* renamed from: e */
    final LifecycleRegistry f4846e = new LifecycleRegistry(this);

    /* renamed from: f */
    Runnable f4847f = new Runnable() { // from class: androidx.lifecycle.w.1
        @Override // java.lang.Runnable
        public final void run() {
            C1276w c1276w = C1276w.this;
            if (c1276w.f4843b == 0) {
                c1276w.f4844c = true;
                c1276w.f4846e.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_PAUSE);
            }
            C1276w.this.m43280d();
        }
    };

    /* renamed from: g */
    ReportFragment.AbstractC1223a f4848g = new ReportFragment.AbstractC1223a() { // from class: androidx.lifecycle.w.2
        @Override // androidx.lifecycle.ReportFragment.AbstractC1223a
        /* renamed from: a */
        public final void mo43279a() {
            C1276w.this.m43282b();
        }

        @Override // androidx.lifecycle.ReportFragment.AbstractC1223a
        /* renamed from: b */
        public final void mo43278b() {
            C1276w.this.m43281c();
        }
    };

    private C1276w() {
    }

    /* renamed from: a */
    public static AbstractC1263p m43284a() {
        return f4841i;
    }

    /* renamed from: a */
    public static void m43283a(Context context) {
        C1276w c1276w = f4841i;
        c1276w.f4845d = new Handler();
        c1276w.f4846e.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C1248e() { // from class: androidx.lifecycle.w.3
            @Override // androidx.lifecycle.C1248e, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.m43322b(activity).f4798a = C1276w.this.f4848g;
                }
            }

            @Override // androidx.lifecycle.C1248e, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
                C1276w c1276w2 = C1276w.this;
                c1276w2.f4843b--;
                if (c1276w2.f4843b == 0) {
                    c1276w2.f4845d.postDelayed(c1276w2.f4847f, 700L);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPreCreated(Activity activity, Bundle bundle) {
                activity.registerActivityLifecycleCallbacks(new C1248e() { // from class: androidx.lifecycle.w.3.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostResumed(Activity activity2) {
                        C1276w.this.m43281c();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostStarted(Activity activity2) {
                        C1276w.this.m43282b();
                    }
                });
            }

            @Override // androidx.lifecycle.C1248e, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
                C1276w c1276w2 = C1276w.this;
                c1276w2.f4842a--;
                c1276w2.m43280d();
            }
        });
    }

    /* renamed from: b */
    final void m43282b() {
        int i = this.f4842a + 1;
        this.f4842a = i;
        if (i != 1 || !this.f4849h) {
            return;
        }
        this.f4846e.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_START);
        this.f4849h = false;
    }

    /* renamed from: c */
    final void m43281c() {
        int i = this.f4843b + 1;
        this.f4843b = i;
        if (i == 1) {
            if (!this.f4844c) {
                this.f4845d.removeCallbacks(this.f4847f);
                return;
            }
            this.f4846e.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_RESUME);
            this.f4844c = false;
        }
    }

    /* renamed from: d */
    final void m43280d() {
        if (this.f4842a != 0 || !this.f4844c) {
            return;
        }
        this.f4846e.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_STOP);
        this.f4849h = true;
    }

    @Override // androidx.lifecycle.AbstractC1263p
    public final AbstractC1253j getLifecycle() {
        return this.f4846e;
    }
}
