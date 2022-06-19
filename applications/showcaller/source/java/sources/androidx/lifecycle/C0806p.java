package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ReportFragment;
/* renamed from: androidx.lifecycle.p */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/p.class */
public class C0806p implements AbstractC0797h {

    /* renamed from: d */
    private static final C0806p f3716d = new C0806p();

    /* renamed from: i */
    private Handler f3721i;

    /* renamed from: e */
    private int f3717e = 0;

    /* renamed from: f */
    private int f3718f = 0;

    /* renamed from: g */
    private boolean f3719g = true;

    /* renamed from: h */
    private boolean f3720h = true;

    /* renamed from: j */
    private final C0798i f3722j = new C0798i(this);

    /* renamed from: k */
    private Runnable f3723k = new RunnableC0807a();

    /* renamed from: l */
    ReportFragment.AbstractC0783a f3724l = new C0808b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/p$a.class */
    public class RunnableC0807a implements Runnable {
        RunnableC0807a() {
            C0806p.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0806p.this.m32366h();
            C0806p.this.m32365i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/p$b.class */
    public class C0808b implements ReportFragment.AbstractC0783a {
        C0808b() {
            C0806p.this = r4;
        }

        @Override // androidx.lifecycle.ReportFragment.AbstractC0783a
        /* renamed from: a */
        public void mo32362a() {
        }

        @Override // androidx.lifecycle.ReportFragment.AbstractC0783a
        public void onResume() {
            C0806p.this.m32370d();
        }

        @Override // androidx.lifecycle.ReportFragment.AbstractC0783a
        public void onStart() {
            C0806p.this.m32369e();
        }
    }

    /* renamed from: androidx.lifecycle.p$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/p$c.class */
    public class C0809c extends C0790b {

        /* renamed from: androidx.lifecycle.p$c$a */
        /* loaded from: classes-dex2jar.jar:androidx/lifecycle/p$c$a.class */
        class C0810a extends C0790b {
            C0810a() {
                C0809c.this = r4;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                C0806p.this.m32370d();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                C0806p.this.m32369e();
            }
        }

        C0809c() {
            C0806p.this = r4;
        }

        @Override // androidx.lifecycle.C0790b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 29) {
                ReportFragment.m32420f(activity).m32418h(C0806p.this.f3724l);
            }
        }

        @Override // androidx.lifecycle.C0790b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C0806p.this.m32371b();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            activity.registerActivityLifecycleCallbacks(new C0810a());
        }

        @Override // androidx.lifecycle.C0790b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            C0806p.this.m32368f();
        }
    }

    private C0806p() {
    }

    /* renamed from: j */
    public static AbstractC0797h m32364j() {
        return f3716d;
    }

    /* renamed from: k */
    public static void m32363k(Context context) {
        f3716d.m32367g(context);
    }

    @Override // androidx.lifecycle.AbstractC0797h
    /* renamed from: a */
    public Lifecycle mo32372a() {
        return this.f3722j;
    }

    /* renamed from: b */
    void m32371b() {
        int i = this.f3718f - 1;
        this.f3718f = i;
        if (i == 0) {
            this.f3721i.postDelayed(this.f3723k, 700L);
        }
    }

    /* renamed from: d */
    void m32370d() {
        int i = this.f3718f + 1;
        this.f3718f = i;
        if (i == 1) {
            if (!this.f3719g) {
                this.f3721i.removeCallbacks(this.f3723k);
                return;
            }
            this.f3722j.m32391h(Lifecycle.Event.ON_RESUME);
            this.f3719g = false;
        }
    }

    /* renamed from: e */
    void m32369e() {
        int i = this.f3717e + 1;
        this.f3717e = i;
        if (i != 1 || !this.f3720h) {
            return;
        }
        this.f3722j.m32391h(Lifecycle.Event.ON_START);
        this.f3720h = false;
    }

    /* renamed from: f */
    void m32368f() {
        this.f3717e--;
        m32365i();
    }

    /* renamed from: g */
    void m32367g(Context context) {
        this.f3721i = new Handler();
        this.f3722j.m32391h(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0809c());
    }

    /* renamed from: h */
    void m32366h() {
        if (this.f3718f == 0) {
            this.f3719g = true;
            this.f3722j.m32391h(Lifecycle.Event.ON_PAUSE);
        }
    }

    /* renamed from: i */
    void m32365i() {
        if (this.f3717e != 0 || !this.f3719g) {
            return;
        }
        this.f3722j.m32391h(Lifecycle.Event.ON_STOP);
        this.f3720h = true;
    }
}
