package com.facebook.internal;

import java.util.concurrent.Executor;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.j0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/j0.class */
public class C2434j0 {

    /* renamed from: a */
    public final Object f3060a;

    /* renamed from: b */
    public C2437c f3061b;

    /* renamed from: c */
    public final int f3062c;

    /* renamed from: d */
    public final Executor f3063d;

    /* renamed from: e */
    public C2437c f3064e;

    /* renamed from: f */
    public int f3065f;

    /* renamed from: com.facebook.internal.j0$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j0$a.class */
    public class RunnableC2435a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2437c f3066a;

        public RunnableC2435a(C2437c cVar) {
            this.f3066a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f3066a.m34722b().run();
            } finally {
                C2434j0.this.m34729b(this.f3066a);
            }
        }
    }

    /* renamed from: com.facebook.internal.j0$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j0$b.class */
    public interface AbstractC2436b {
        /* renamed from: a */
        void mo34726a();

        boolean cancel();
    }

    /* renamed from: com.facebook.internal.j0$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j0$c.class */
    public class C2437c implements AbstractC2436b {

        /* renamed from: a */
        public final Runnable f3068a;

        /* renamed from: b */
        public C2437c f3069b;

        /* renamed from: c */
        public C2437c f3070c;

        /* renamed from: d */
        public boolean f3071d;

        public C2437c(Runnable runnable) {
            this.f3068a = runnable;
        }

        /* renamed from: a */
        public C2437c m34725a(C2437c cVar) {
            C2437c cVar2 = cVar;
            if (cVar == this) {
                C2437c cVar3 = this.f3069b;
                cVar2 = cVar3;
                if (cVar3 == this) {
                    cVar2 = null;
                }
            }
            C2437c cVar4 = this.f3069b;
            cVar4.f3070c = this.f3070c;
            this.f3070c.f3069b = cVar4;
            this.f3070c = null;
            this.f3069b = null;
            return cVar2;
        }

        /* renamed from: a */
        public C2437c m34724a(C2437c cVar, boolean z) {
            if (cVar == null) {
                this.f3070c = this;
                this.f3069b = this;
                cVar = this;
            } else {
                this.f3069b = cVar;
                this.f3070c = cVar.f3070c;
                C2437c cVar2 = this.f3069b;
                this.f3070c.f3069b = this;
                cVar2.f3070c = this;
            }
            if (z) {
                cVar = this;
            }
            return cVar;
        }

        @Override // com.facebook.internal.C2434j0.AbstractC2436b
        /* renamed from: a */
        public void mo34726a() {
            synchronized (C2434j0.this.f3060a) {
                if (!m34721c()) {
                    C2434j0.this.f3061b = m34725a(C2434j0.this.f3061b);
                    C2434j0.this.f3061b = m34724a(C2434j0.this.f3061b, true);
                }
            }
        }

        /* renamed from: a */
        public void m34723a(boolean z) {
            this.f3071d = z;
        }

        /* renamed from: b */
        public Runnable m34722b() {
            return this.f3068a;
        }

        /* renamed from: c */
        public boolean m34721c() {
            return this.f3071d;
        }

        @Override // com.facebook.internal.C2434j0.AbstractC2436b
        public boolean cancel() {
            synchronized (C2434j0.this.f3060a) {
                if (m34721c()) {
                    return false;
                }
                C2434j0.this.f3061b = m34725a(C2434j0.this.f3061b);
                return true;
            }
        }
    }

    public C2434j0(int i) {
        this(i, C6135n.m23737n());
    }

    public C2434j0(int i, Executor executor) {
        this.f3060a = new Object();
        this.f3064e = null;
        this.f3065f = 0;
        this.f3062c = i;
        this.f3063d = executor;
    }

    /* renamed from: a */
    public AbstractC2436b m34731a(Runnable runnable) {
        return m34730a(runnable, true);
    }

    /* renamed from: a */
    public AbstractC2436b m34730a(Runnable runnable, boolean z) {
        C2437c cVar = new C2437c(runnable);
        synchronized (this.f3060a) {
            this.f3061b = cVar.m34724a(this.f3061b, z);
        }
        m34735a();
        return cVar;
    }

    /* renamed from: a */
    public final void m34735a() {
        m34729b((C2437c) null);
    }

    /* renamed from: a */
    public final void m34734a(C2437c cVar) {
        this.f3063d.execute(new RunnableC2435a(cVar));
    }

    /* renamed from: b */
    public final void m34729b(C2437c cVar) {
        C2437c cVar2;
        synchronized (this.f3060a) {
            if (cVar != null) {
                this.f3064e = cVar.m34725a(this.f3064e);
                this.f3065f--;
            }
            if (this.f3065f < this.f3062c) {
                C2437c cVar3 = this.f3061b;
                cVar2 = cVar3;
                if (cVar3 != null) {
                    this.f3061b = cVar3.m34725a(this.f3061b);
                    this.f3064e = cVar3.m34724a(this.f3064e, false);
                    this.f3065f++;
                    cVar3.m34723a(true);
                    cVar2 = cVar3;
                }
            } else {
                cVar2 = null;
            }
        }
        if (cVar2 != null) {
            m34734a(cVar2);
        }
    }
}
