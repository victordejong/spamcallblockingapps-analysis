package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/android/volley/e.class */
public final class e implements q {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f2292a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/volley/e$a.class */
    public final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final n f2296b;
        private final p c;
        private final Runnable d;

        public a(n nVar, p pVar, Runnable runnable) {
            this.f2296b = nVar;
            this.c = pVar;
            this.d = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f2296b.i) {
                this.f2296b.b("canceled-at-delivery");
                return;
            }
            if (this.c.c == null) {
                this.f2296b.a((n) this.c.f2310a);
            } else {
                n nVar = this.f2296b;
                u uVar = this.c.c;
                if (nVar.e != null) {
                    nVar.e.a(uVar);
                }
            }
            if (this.c.d) {
                this.f2296b.a("intermediate-response");
            } else {
                this.f2296b.b("done");
            }
            if (this.d != null) {
                this.d.run();
            }
        }
    }

    public e(final Handler handler) {
        this.f2292a = new Executor() { // from class: com.android.volley.e.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    @Override // com.android.volley.q
    public final void a(n<?> nVar, p<?> pVar) {
        a(nVar, pVar, null);
    }

    @Override // com.android.volley.q
    public final void a(n<?> nVar, p<?> pVar, Runnable runnable) {
        nVar.j = true;
        nVar.a("post-response");
        this.f2292a.execute(new a(nVar, pVar, runnable));
    }

    @Override // com.android.volley.q
    public final void a(n<?> nVar, u uVar) {
        nVar.a("post-error");
        this.f2292a.execute(new a(nVar, p.a(uVar), null));
    }
}
