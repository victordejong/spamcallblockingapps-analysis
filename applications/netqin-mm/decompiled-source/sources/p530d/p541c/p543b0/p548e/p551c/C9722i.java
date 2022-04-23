package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.c.i */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/i.class */
public final class C9722i<T> extends AbstractC9833i<T> {

    /* renamed from: a */
    public final AbstractC9809c f36821a;

    /* renamed from: d.c.b0.e.c.i$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/i$a.class */
    public static final class C9723a<T> implements AbstractC9647b, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9836k<? super T> f36822a;

        /* renamed from: b */
        public AbstractC9861b f36823b;

        public C9723a(AbstractC9836k<? super T> kVar) {
            this.f36822a = kVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36823b.dispose();
            this.f36823b = DisposableHelper.DISPOSED;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36823b.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.f36823b = DisposableHelper.DISPOSED;
            this.f36822a.onComplete();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            this.f36823b = DisposableHelper.DISPOSED;
            this.f36822a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36823b, bVar)) {
                this.f36823b = bVar;
                this.f36822a.onSubscribe(this);
            }
        }
    }

    public C9722i(AbstractC9809c cVar) {
        this.f36821a = cVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36821a.mo1980a(new C9723a(kVar));
    }
}
