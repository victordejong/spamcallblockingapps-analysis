package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableSequenceEqualSingle$EqualCoordinator;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.d.r */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/r.class */
public final class C9756r<T> implements AbstractC9844r<T> {

    /* renamed from: a */
    public final ObservableSequenceEqualSingle$EqualCoordinator<T> f36880a;

    /* renamed from: b */
    public final C9772a<T> f36881b;

    /* renamed from: c */
    public final int f36882c;

    /* renamed from: d */
    public volatile boolean f36883d;

    /* renamed from: e */
    public Throwable f36884e;

    public C9756r(ObservableSequenceEqualSingle$EqualCoordinator<T> observableSequenceEqualSingle$EqualCoordinator, int i, int i2) {
        this.f36880a = observableSequenceEqualSingle$EqualCoordinator;
        this.f36882c = i;
        this.f36881b = new C9772a<>(i2);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.f36883d = true;
        this.f36880a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.f36884e = th;
        this.f36883d = true;
        this.f36880a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.f36881b.offer(t);
        this.f36880a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        this.f36880a.setDisposable(bVar, this.f36882c);
    }
}
