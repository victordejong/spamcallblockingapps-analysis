package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableSequenceEqual$EqualCoordinator;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.d.q */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/q.class */
public final class C9755q<T> implements AbstractC9844r<T> {

    /* renamed from: a */
    public final ObservableSequenceEqual$EqualCoordinator<T> f36875a;

    /* renamed from: b */
    public final C9772a<T> f36876b;

    /* renamed from: c */
    public final int f36877c;

    /* renamed from: d */
    public volatile boolean f36878d;

    /* renamed from: e */
    public Throwable f36879e;

    public C9755q(ObservableSequenceEqual$EqualCoordinator<T> observableSequenceEqual$EqualCoordinator, int i, int i2) {
        this.f36875a = observableSequenceEqual$EqualCoordinator;
        this.f36877c = i;
        this.f36876b = new C9772a<>(i2);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.f36878d = true;
        this.f36875a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.f36879e = th;
        this.f36878d = true;
        this.f36875a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.f36876b.offer(t);
        this.f36875a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        this.f36875a.setDisposable(bVar, this.f36877c);
    }
}
