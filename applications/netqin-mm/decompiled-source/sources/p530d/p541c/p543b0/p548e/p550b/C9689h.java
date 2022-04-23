package p530d.p541c.p543b0.p548e.p550b;

import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.e.b.h */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/h.class */
public final class C9689h<T> extends AbstractC9814e<T> {

    /* renamed from: b */
    public final AbstractC9840o<T> f36778b;

    /* renamed from: d.c.b0.e.b.h$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/h$a.class */
    public static class C9690a<T> implements AbstractC9844r<T>, AbstractC10434d {

        /* renamed from: a */
        public final AbstractC10433c<? super T> f36779a;

        /* renamed from: b */
        public AbstractC9861b f36780b;

        public C9690a(AbstractC10433c<? super T> cVar) {
            this.f36779a = cVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            this.f36780b.dispose();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            this.f36779a.onComplete();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            this.f36779a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            this.f36779a.onNext(t);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            this.f36780b = bVar;
            this.f36779a.onSubscribe(this);
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
        }
    }

    public C9689h(AbstractC9840o<T> oVar) {
        this.f36778b = oVar;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f36778b.subscribe(new C9690a(cVar));
    }
}
