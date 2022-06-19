package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.Lifecycle;
/* renamed from: androidx.lifecycle.q */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/q.class */
public class C0811q {

    /* renamed from: a */
    private final C0798i f3727a;

    /* renamed from: b */
    private final Handler f3728b = new Handler();

    /* renamed from: c */
    private RunnableC0812a f3729c;

    /* renamed from: androidx.lifecycle.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/q$a.class */
    public static class RunnableC0812a implements Runnable {

        /* renamed from: d */
        private final C0798i f3730d;

        /* renamed from: e */
        final Lifecycle.Event f3731e;

        /* renamed from: f */
        private boolean f3732f = false;

        RunnableC0812a(C0798i c0798i, Lifecycle.Event event) {
            this.f3730d = c0798i;
            this.f3731e = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f3732f) {
                this.f3730d.m32391h(this.f3731e);
                this.f3732f = true;
            }
        }
    }

    public C0811q(AbstractC0797h abstractC0797h) {
        this.f3727a = new C0798i(abstractC0797h);
    }

    /* renamed from: f */
    private void m32356f(Lifecycle.Event event) {
        RunnableC0812a runnableC0812a = this.f3729c;
        if (runnableC0812a != null) {
            runnableC0812a.run();
        }
        RunnableC0812a runnableC0812a2 = new RunnableC0812a(this.f3727a, event);
        this.f3729c = runnableC0812a2;
        this.f3728b.postAtFrontOfQueue(runnableC0812a2);
    }

    /* renamed from: a */
    public Lifecycle m32361a() {
        return this.f3727a;
    }

    /* renamed from: b */
    public void m32360b() {
        m32356f(Lifecycle.Event.ON_START);
    }

    /* renamed from: c */
    public void m32359c() {
        m32356f(Lifecycle.Event.ON_CREATE);
    }

    /* renamed from: d */
    public void m32358d() {
        m32356f(Lifecycle.Event.ON_STOP);
        m32356f(Lifecycle.Event.ON_DESTROY);
    }

    /* renamed from: e */
    public void m32357e() {
        m32356f(Lifecycle.Event.ON_START);
    }
}
