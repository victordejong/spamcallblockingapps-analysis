package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    final LifecycleRegistry f2603a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f2604b = new Handler();

    /* renamed from: c  reason: collision with root package name */
    private a f2605c;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/z$a.class */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final j.a f2606a;

        /* renamed from: b  reason: collision with root package name */
        private final LifecycleRegistry f2607b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2608c = false;

        a(LifecycleRegistry lifecycleRegistry, j.a aVar) {
            this.f2607b = lifecycleRegistry;
            this.f2606a = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!this.f2608c) {
                this.f2607b.handleLifecycleEvent(this.f2606a);
                this.f2608c = true;
            }
        }
    }

    public z(p pVar) {
        this.f2603a = new LifecycleRegistry(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(j.a aVar) {
        a aVar2 = this.f2605c;
        if (aVar2 != null) {
            aVar2.run();
        }
        a aVar3 = new a(this.f2603a, aVar);
        this.f2605c = aVar3;
        this.f2604b.postAtFrontOfQueue(aVar3);
    }
}
