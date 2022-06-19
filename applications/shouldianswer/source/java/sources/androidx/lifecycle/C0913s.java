package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.FragmentC0917t;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/s.class */
public class C0913s implements AbstractC0903k {

    /* renamed from: i */
    private static final C0913s f2863i = new C0913s();

    /* renamed from: f */
    private Handler f2869f;

    /* renamed from: b */
    private int f2865b = 0;

    /* renamed from: c */
    private int f2866c = 0;

    /* renamed from: d */
    private boolean f2867d = true;

    /* renamed from: e */
    private boolean f2868e = true;

    /* renamed from: g */
    private final C0904l f2870g = new C0904l(this);

    /* renamed from: h */
    private Runnable f2871h = new Runnable() { // from class: androidx.lifecycle.s.1
        @Override // java.lang.Runnable
        public void run() {
            C0913s.this.m5076e();
            C0913s.this.m5075f();
        }
    };

    /* renamed from: a */
    FragmentC0917t.AbstractC0918a f2864a = new FragmentC0917t.AbstractC0918a() { // from class: androidx.lifecycle.s.2
        @Override // androidx.lifecycle.FragmentC0917t.AbstractC0918a
        /* renamed from: a */
        public void mo5067a() {
        }

        @Override // androidx.lifecycle.FragmentC0917t.AbstractC0918a
        /* renamed from: b */
        public void mo5066b() {
            C0913s.this.m5082a();
        }

        @Override // androidx.lifecycle.FragmentC0917t.AbstractC0918a
        /* renamed from: c */
        public void mo5065c() {
            C0913s.this.m5080b();
        }
    };

    private C0913s() {
    }

    /* renamed from: a */
    public static void m5081a(Context context) {
        f2863i.m5079b(context);
    }

    /* renamed from: a */
    void m5082a() {
        this.f2865b++;
        if (this.f2865b != 1 || !this.f2868e) {
            return;
        }
        this.f2870g.m5111a(AbstractC0896g.EnumC0897a.ON_START);
        this.f2868e = false;
    }

    /* renamed from: b */
    void m5080b() {
        this.f2866c++;
        if (this.f2866c == 1) {
            if (!this.f2867d) {
                this.f2869f.removeCallbacks(this.f2871h);
                return;
            }
            this.f2870g.m5111a(AbstractC0896g.EnumC0897a.ON_RESUME);
            this.f2867d = false;
        }
    }

    /* renamed from: b */
    void m5079b(Context context) {
        this.f2869f = new Handler();
        this.f2870g.m5111a(AbstractC0896g.EnumC0897a.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0892c() { // from class: androidx.lifecycle.s.3
            @Override // androidx.lifecycle.C0892c, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                FragmentC0917t.m5071b(activity).m5072a(C0913s.this.f2864a);
            }

            @Override // androidx.lifecycle.C0892c, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                C0913s.this.m5078c();
            }

            @Override // androidx.lifecycle.C0892c, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                C0913s.this.m5077d();
            }
        });
    }

    /* renamed from: c */
    void m5078c() {
        this.f2866c--;
        if (this.f2866c == 0) {
            this.f2869f.postDelayed(this.f2871h, 700L);
        }
    }

    /* renamed from: d */
    void m5077d() {
        this.f2865b--;
        m5075f();
    }

    /* renamed from: e */
    void m5076e() {
        if (this.f2866c == 0) {
            this.f2867d = true;
            this.f2870g.m5111a(AbstractC0896g.EnumC0897a.ON_PAUSE);
        }
    }

    /* renamed from: f */
    void m5075f() {
        if (this.f2865b != 0 || !this.f2867d) {
            return;
        }
        this.f2870g.m5111a(AbstractC0896g.EnumC0897a.ON_STOP);
        this.f2868e = true;
    }

    @Override // androidx.lifecycle.AbstractC0903k
    public AbstractC0896g getLifecycle() {
        return this.f2870g;
    }
}
