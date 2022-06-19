package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.AbstractC0516f;
/* renamed from: androidx.lifecycle.w */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/w.class */
public class C0544w {

    /* renamed from: a */
    public final C0525k f2076a;

    /* renamed from: b */
    public final Handler f2077b = new Handler();

    /* renamed from: c */
    public RunnableC0545a f2078c;

    /* renamed from: androidx.lifecycle.w$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/w$a.class */
    public static class RunnableC0545a implements Runnable {

        /* renamed from: a */
        public final C0525k f2079a;

        /* renamed from: b */
        public final AbstractC0516f.EnumC0518b f2080b;

        /* renamed from: c */
        public boolean f2081c = false;

        public RunnableC0545a(C0525k c0525k, AbstractC0516f.EnumC0518b enumC0518b) {
            this.f2079a = c0525k;
            this.f2080b = enumC0518b;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f2081c) {
                this.f2079a.m7988e(this.f2080b);
                this.f2081c = true;
            }
        }
    }

    public C0544w(AbstractC0524j abstractC0524j) {
        this.f2076a = new C0525k(abstractC0524j);
    }

    /* renamed from: a */
    public final void m7971a(AbstractC0516f.EnumC0518b enumC0518b) {
        RunnableC0545a runnableC0545a = this.f2078c;
        if (runnableC0545a != null) {
            runnableC0545a.run();
        }
        RunnableC0545a runnableC0545a2 = new RunnableC0545a(this.f2076a, enumC0518b);
        this.f2078c = runnableC0545a2;
        this.f2077b.postAtFrontOfQueue(runnableC0545a2);
    }
}
