package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.AbstractC0864e;
/* renamed from: androidx.lifecycle.r */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/r.class */
public class C0882r {

    /* renamed from: a */
    private final C0870i f2997a;

    /* renamed from: b */
    private final Handler f2998b = new Handler();

    /* renamed from: c */
    private RunnableC0883a f2999c;

    /* renamed from: androidx.lifecycle.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/r$a.class */
    public static class RunnableC0883a implements Runnable {

        /* renamed from: a */
        final AbstractC0864e.EnumC0865a f3000a;

        /* renamed from: b */
        private final C0870i f3001b;

        /* renamed from: c */
        private boolean f3002c = false;

        RunnableC0883a(C0870i c0870i, AbstractC0864e.EnumC0865a enumC0865a) {
            this.f3001b = c0870i;
            this.f3000a = enumC0865a;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f3002c) {
                this.f3001b.m19222a(this.f3000a);
                this.f3002c = true;
            }
        }
    }

    public C0882r(AbstractC0869h abstractC0869h) {
        this.f2997a = new C0870i(abstractC0869h);
    }

    /* renamed from: a */
    private void m19182a(AbstractC0864e.EnumC0865a enumC0865a) {
        if (this.f2999c != null) {
            this.f2999c.run();
        }
        this.f2999c = new RunnableC0883a(this.f2997a, enumC0865a);
        this.f2998b.postAtFrontOfQueue(this.f2999c);
    }

    /* renamed from: a */
    public void m19183a() {
        m19182a(AbstractC0864e.EnumC0865a.ON_CREATE);
    }

    /* renamed from: b */
    public void m19181b() {
        m19182a(AbstractC0864e.EnumC0865a.ON_START);
    }

    /* renamed from: c */
    public void m19180c() {
        m19182a(AbstractC0864e.EnumC0865a.ON_START);
    }

    /* renamed from: d */
    public void m19179d() {
        m19182a(AbstractC0864e.EnumC0865a.ON_STOP);
        m19182a(AbstractC0864e.EnumC0865a.ON_DESTROY);
    }

    /* renamed from: e */
    public AbstractC0864e m19178e() {
        return this.f2997a;
    }
}
