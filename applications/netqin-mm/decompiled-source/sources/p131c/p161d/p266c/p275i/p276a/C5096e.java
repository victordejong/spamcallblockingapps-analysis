package p131c.p161d.p266c.p275i.p276a;

import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.i.a.e */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/e.class */
public final class C5096e {

    /* renamed from: c */
    public static final Logger f17687c = Logger.getLogger(C5096e.class.getName());

    /* renamed from: a */
    public C5097a f17688a;

    /* renamed from: b */
    public boolean f17689b;

    /* renamed from: c.d.c.i.a.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/e$a.class */
    public static final class C5097a {

        /* renamed from: a */
        public final Runnable f17690a;

        /* renamed from: b */
        public final Executor f17691b;

        /* renamed from: c */
        public C5097a f17692c;

        public C5097a(Runnable runnable, Executor executor, C5097a aVar) {
            this.f17690a = runnable;
            this.f17691b = executor;
            this.f17692c = aVar;
        }
    }

    /* renamed from: b */
    public static void m24517b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f17687c;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: a */
    public void m24519a() {
        C5097a aVar;
        synchronized (this) {
            try {
                if (!this.f17689b) {
                    this.f17689b = true;
                    C5097a aVar2 = this.f17688a;
                    C5097a aVar3 = null;
                    this.f17688a = null;
                    while (true) {
                        if (aVar2 != null) {
                            aVar2 = aVar2.f17692c;
                            aVar2.f17692c = aVar3;
                            aVar3 = aVar2;
                        }
                    }
                    for (aVar = aVar3; aVar != null; aVar = aVar.f17692c) {
                        m24517b(aVar.f17690a, aVar.f17691b);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m24518a(Runnable runnable, Executor executor) {
        C4933n.m24794a(runnable, "Runnable was null.");
        C4933n.m24794a(executor, "Executor was null.");
        synchronized (this) {
            if (!this.f17689b) {
                this.f17688a = new C5097a(runnable, executor, this.f17688a);
            } else {
                m24517b(runnable, executor);
            }
        }
    }
}
