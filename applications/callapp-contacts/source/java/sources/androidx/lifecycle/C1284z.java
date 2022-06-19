package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.AbstractC1253j;
/* renamed from: androidx.lifecycle.z */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/z.class */
public final class C1284z {

    /* renamed from: a */
    final LifecycleRegistry f4865a;

    /* renamed from: b */
    private final Handler f4866b = new Handler();

    /* renamed from: c */
    private RunnableC1285a f4867c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.z$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/z$a.class */
    public static final class RunnableC1285a implements Runnable {

        /* renamed from: a */
        final AbstractC1253j.EnumC1255a f4868a;

        /* renamed from: b */
        private final LifecycleRegistry f4869b;

        /* renamed from: c */
        private boolean f4870c = false;

        RunnableC1285a(LifecycleRegistry lifecycleRegistry, AbstractC1253j.EnumC1255a enumC1255a) {
            this.f4869b = lifecycleRegistry;
            this.f4868a = enumC1255a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!this.f4870c) {
                this.f4869b.handleLifecycleEvent(this.f4868a);
                this.f4870c = true;
            }
        }
    }

    public C1284z(AbstractC1263p abstractC1263p) {
        this.f4865a = new LifecycleRegistry(abstractC1263p);
    }

    /* renamed from: a */
    public final void m43271a(AbstractC1253j.EnumC1255a enumC1255a) {
        RunnableC1285a runnableC1285a = this.f4867c;
        if (runnableC1285a != null) {
            runnableC1285a.run();
        }
        RunnableC1285a runnableC1285a2 = new RunnableC1285a(this.f4865a, enumC1255a);
        this.f4867c = runnableC1285a2;
        this.f4866b.postAtFrontOfQueue(runnableC1285a2);
    }
}
