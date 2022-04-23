package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.Lifecycle;
/* renamed from: androidx.lifecycle.r */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/r.class */
public class C0366r {

    /* renamed from: a */
    private final i f2065a;

    /* renamed from: b */
    private final Handler f2066b = new Handler();

    /* renamed from: c */
    private RunnableC0367a f2067c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/r$a.class */
    public static class RunnableC0367a implements Runnable {

        /* renamed from: b */
        private final i f2068b;

        /* renamed from: c */
        final Lifecycle.Event f2069c;

        /* renamed from: d */
        private boolean f2070d = false;

        RunnableC0367a(i iVar, Lifecycle.Event event) {
            this.f2068b = iVar;
            this.f2069c = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f2070d) {
                this.f2068b.i(this.f2069c);
                this.f2070d = true;
            }
        }
    }

    public C0366r(AbstractC0360h hVar) {
        this.f2065a = new i(hVar);
    }

    /* renamed from: f */
    private void m12967f(Lifecycle.Event event) {
        RunnableC0367a aVar = this.f2067c;
        if (aVar != null) {
            aVar.run();
        }
        RunnableC0367a aVar2 = new RunnableC0367a(this.f2065a, event);
        this.f2067c = aVar2;
        this.f2066b.postAtFrontOfQueue(aVar2);
    }

    /* renamed from: a */
    public Lifecycle m12972a() {
        return this.f2065a;
    }

    /* renamed from: b */
    public void m12971b() {
        m12967f(Lifecycle.Event.ON_START);
    }

    /* renamed from: c */
    public void m12970c() {
        m12967f(Lifecycle.Event.ON_CREATE);
    }

    /* renamed from: d */
    public void m12969d() {
        m12967f(Lifecycle.Event.ON_STOP);
        m12967f(Lifecycle.Event.ON_DESTROY);
    }

    /* renamed from: e */
    public void m12968e() {
        m12967f(Lifecycle.Event.ON_START);
    }
}
