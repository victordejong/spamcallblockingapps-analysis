package p131c.p161d.p266c.p275i.p276a;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p275i.p276a.AbstractC5098f;
/* renamed from: c.d.c.i.a.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/a.class */
public abstract class AbstractRunnableC5086a<I, O, F, T> extends AbstractC5098f.AbstractC5099a<O> implements Runnable {

    /* renamed from: h */
    public AbstractFutureC5108l<? extends I> f17680h;

    /* renamed from: i */
    public F f17681i;

    /* renamed from: c.d.c.i.a.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/a$a.class */
    public static final class C5087a<I, O> extends AbstractRunnableC5086a<I, O, AbstractC4920g<? super I, ? extends O>, O> {
        public C5087a(AbstractFutureC5108l<? extends I> lVar, AbstractC4920g<? super I, ? extends O> gVar) {
            super(lVar, gVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public O m24525a(AbstractC4920g<? super I, ? extends O> gVar, I i) {
            return (O) gVar.apply(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p266c.p275i.p276a.AbstractRunnableC5086a
        /* renamed from: a */
        public /* bridge */ /* synthetic */ Object mo24524a(Object obj, Object obj2) throws Exception {
            return m24525a((AbstractC4920g<? super AbstractC4920g<? super I, ? extends O>, ? extends O>) obj, (AbstractC4920g<? super I, ? extends O>) obj2);
        }

        @Override // p131c.p161d.p266c.p275i.p276a.AbstractRunnableC5086a
        /* renamed from: d */
        public void mo24523d(O o) {
            mo275b((C5087a<I, O>) o);
        }
    }

    public AbstractRunnableC5086a(AbstractFutureC5108l<? extends I> lVar, F f) {
        C4933n.m24795a(lVar);
        this.f17680h = lVar;
        C4933n.m24795a(f);
        this.f17681i = f;
    }

    /* renamed from: a */
    public static <I, O> AbstractFutureC5108l<O> m24526a(AbstractFutureC5108l<I> lVar, AbstractC4920g<? super I, ? extends O> gVar, Executor executor) {
        C4933n.m24795a(gVar);
        C5087a aVar = new C5087a(lVar, gVar);
        lVar.mo7696a(aVar, C5110n.m24503a(executor, aVar));
        return aVar;
    }

    /* renamed from: a */
    public abstract T mo24524a(F f, I i) throws Exception;

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: b */
    public final void mo7710b() {
        m7711a((Future<?>) this.f17680h);
        this.f17680h = null;
        this.f17681i = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: d */
    public String mo273d() {
        String str;
        AbstractFutureC5108l<? extends I> lVar = this.f17680h;
        F f = this.f17681i;
        String d = super.mo273d();
        if (lVar != null) {
            str = "inputFuture=[" + lVar + "], ";
        } else {
            str = "";
        }
        if (f != null) {
            return str + "function=[" + f + "]";
        } else if (d == null) {
            return null;
        } else {
            return str + d;
        }
    }

    /* renamed from: d */
    public abstract void mo24523d(T t);

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        AbstractFutureC5108l<? extends I> lVar = this.f17680h;
        F f = this.f17681i;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = lVar == null;
        if (f != null) {
            z = false;
        }
        if (!(isCancelled | z2) && !z) {
            this.f17680h = null;
            if (lVar.isCancelled()) {
                mo7721a((AbstractFutureC5108l) lVar);
                return;
            }
            try {
                try {
                    Object a = mo24524a((AbstractRunnableC5086a<I, O, F, T>) f, (F) C5100g.m24513a((Future<Object>) lVar));
                    this.f17681i = null;
                    mo24523d((AbstractRunnableC5086a<I, O, F, T>) a);
                } catch (Throwable th) {
                    try {
                        mo276a(th);
                        this.f17681i = null;
                    } catch (Throwable th2) {
                        this.f17681i = null;
                        throw th2;
                    }
                }
            } catch (Error e) {
                mo276a((Throwable) e);
            } catch (CancellationException e2) {
                cancel(false);
            } catch (RuntimeException e3) {
                mo276a((Throwable) e3);
            } catch (ExecutionException e4) {
                mo276a(e4.getCause());
            }
        }
    }
}
