package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.disposables.SequentialDisposable;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.d.s */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/s.class */
public final class C9757s<T> extends AbstractC9734a<T, T> {

    /* renamed from: b */
    public final AbstractC9843q<? extends T> f36885b;

    /* renamed from: d.c.b0.e.d.s$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/s$a.class */
    public static final class C9758a<T> implements AbstractC9844r<T> {

        /* renamed from: a */
        public final AbstractC9844r<? super T> f36886a;

        /* renamed from: b */
        public final AbstractC9843q<? extends T> f36887b;

        /* renamed from: d */
        public boolean f36889d = true;

        /* renamed from: c */
        public final SequentialDisposable f36888c = new SequentialDisposable();

        public C9758a(AbstractC9844r<? super T> rVar, AbstractC9843q<? extends T> qVar) {
            this.f36886a = rVar;
            this.f36887b = qVar;
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            if (this.f36889d) {
                this.f36889d = false;
                this.f36887b.subscribe(this);
                return;
            }
            this.f36886a.onComplete();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            this.f36886a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            if (this.f36889d) {
                this.f36889d = false;
            }
            this.f36886a.onNext(t);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            this.f36888c.update(bVar);
        }
    }

    public C9757s(AbstractC9843q<T> qVar, AbstractC9843q<? extends T> qVar2) {
        super(qVar);
        this.f36885b = qVar2;
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        C9758a aVar = new C9758a(rVar, this.f36885b);
        rVar.onSubscribe(aVar.f36888c);
        this.f36843a.subscribe(aVar);
    }
}
