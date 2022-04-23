package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p546c.AbstractC9655d;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.d.d */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/d.class */
public final class C9738d<T> extends AbstractC9850t<Boolean> implements AbstractC9655d<Boolean> {

    /* renamed from: a */
    public final AbstractC9843q<T> f36849a;

    /* renamed from: b */
    public final AbstractC9646i<? super T> f36850b;

    /* renamed from: d.c.b0.e.d.d$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/d$a.class */
    public static final class C9739a<T> implements AbstractC9844r<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9851u<? super Boolean> f36851a;

        /* renamed from: b */
        public final AbstractC9646i<? super T> f36852b;

        /* renamed from: c */
        public AbstractC9861b f36853c;

        /* renamed from: d */
        public boolean f36854d;

        public C9739a(AbstractC9851u<? super Boolean> uVar, AbstractC9646i<? super T> iVar) {
            this.f36851a = uVar;
            this.f36852b = iVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36853c.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36853c.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            if (!this.f36854d) {
                this.f36854d = true;
                this.f36851a.onSuccess(false);
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            if (this.f36854d) {
                C9815a.m1923b(th);
                return;
            }
            this.f36854d = true;
            this.f36851a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            if (!this.f36854d) {
                try {
                    if (this.f36852b.test(t)) {
                        this.f36854d = true;
                        this.f36853c.dispose();
                        this.f36851a.onSuccess(true);
                    }
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.f36853c.dispose();
                    onError(th);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36853c, bVar)) {
                this.f36853c = bVar;
                this.f36851a.onSubscribe(this);
            }
        }
    }

    public C9738d(AbstractC9843q<T> qVar, AbstractC9646i<? super T> iVar) {
        this.f36849a = qVar;
        this.f36850b = iVar;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9655d
    /* renamed from: a */
    public AbstractC9840o<Boolean> mo238a() {
        return C9815a.m1934a(new C9736c(this.f36849a, this.f36850b));
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super Boolean> uVar) {
        this.f36849a.subscribe(new C9739a(uVar, this.f36850b));
    }
}
