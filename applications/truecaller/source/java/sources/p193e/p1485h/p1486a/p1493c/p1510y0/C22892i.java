package p193e.p1485h.p1486a.p1493c.p1510y0;

import java.util.concurrent.Executor;
/* renamed from: e.h.a.c.y0.i */
/* loaded from: classes-dex2jar.jar:e/h/a/c/y0/i.class */
public class C22892i<TResult> extends AbstractC22884c<TResult> {

    /* renamed from: b */
    public final AbstractC22888g<TResult> f63546b;

    /* renamed from: e.h.a.c.y0.i$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/y0/i$a.class */
    public class RunnableC22893a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Object f63547a;

        public RunnableC22893a(Object obj) {
            C22892i.this = r4;
            this.f63547a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            C22892i.this.f63546b.onSuccess(this.f63547a);
        }
    }

    public C22892i(Executor executor, AbstractC22888g abstractC22888g) {
        super(executor);
        this.f63546b = abstractC22888g;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22884c
    /* renamed from: a */
    public void mo7638a(TResult tresult) {
        this.f63535a.execute(new RunnableC22893a(tresult));
    }
}
