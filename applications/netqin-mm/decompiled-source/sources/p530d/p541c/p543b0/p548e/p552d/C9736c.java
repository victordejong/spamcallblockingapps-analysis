package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.d.c */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/c.class */
public final class C9736c<T> extends AbstractC9734a<T, Boolean> {

    /* renamed from: b */
    public final AbstractC9646i<? super T> f36844b;

    /* renamed from: d.c.b0.e.d.c$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/c$a.class */
    public static final class C9737a<T> implements AbstractC9844r<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9844r<? super Boolean> f36845a;

        /* renamed from: b */
        public final AbstractC9646i<? super T> f36846b;

        /* renamed from: c */
        public AbstractC9861b f36847c;

        /* renamed from: d */
        public boolean f36848d;

        public C9737a(AbstractC9844r<? super Boolean> rVar, AbstractC9646i<? super T> iVar) {
            this.f36845a = rVar;
            this.f36846b = iVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36847c.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36847c.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            if (!this.f36848d) {
                this.f36848d = true;
                this.f36845a.onNext(false);
                this.f36845a.onComplete();
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            if (this.f36848d) {
                C9815a.m1923b(th);
                return;
            }
            this.f36848d = true;
            this.f36845a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            if (!this.f36848d) {
                try {
                    if (this.f36846b.test(t)) {
                        this.f36848d = true;
                        this.f36847c.dispose();
                        this.f36845a.onNext(true);
                        this.f36845a.onComplete();
                    }
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.f36847c.dispose();
                    onError(th);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36847c, bVar)) {
                this.f36847c = bVar;
                this.f36845a.onSubscribe(this);
            }
        }
    }

    public C9736c(AbstractC9843q<T> qVar, AbstractC9646i<? super T> iVar) {
        super(qVar);
        this.f36844b = iVar;
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super Boolean> rVar) {
        this.f36843a.subscribe(new C9737a(rVar, this.f36844b));
    }
}
