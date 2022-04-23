package p530d.p541c.p543b0.p548e.p553e;

import io.reactivex.exceptions.CompositeException;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.e.a */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/e/a.class */
public final class C9766a<T> extends AbstractC9850t<T> {

    /* renamed from: a */
    public final AbstractC9852v<T> f36903a;

    /* renamed from: b */
    public final AbstractC9644g<? super Throwable> f36904b;

    /* renamed from: d.c.b0.e.e.a$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/e/a$a.class */
    public final class C9767a implements AbstractC9851u<T> {

        /* renamed from: a */
        public final AbstractC9851u<? super T> f36905a;

        public C9767a(AbstractC9851u<? super T> uVar) {
            this.f36905a = uVar;
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            try {
                C9766a.this.f36904b.accept(th);
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                th = new CompositeException(th, th2);
            }
            this.f36905a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            this.f36905a.onSubscribe(bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            this.f36905a.onSuccess(t);
        }
    }

    public C9766a(AbstractC9852v<T> vVar, AbstractC9644g<? super Throwable> gVar) {
        this.f36903a = vVar;
        this.f36904b = gVar;
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super T> uVar) {
        this.f36903a.mo1841a(new C9767a(uVar));
    }
}
