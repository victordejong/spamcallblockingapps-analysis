package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableGroupBy$GroupByObserver;
import io.reactivex.internal.operators.observable.ObservableGroupBy$State;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p558c0.AbstractC9810a;
/* renamed from: d.c.b0.e.d.j */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/j.class */
public final class C9747j<K, T> extends AbstractC9810a<K, T> {

    /* renamed from: b */
    public final ObservableGroupBy$State<T, K> f36865b;

    public C9747j(K k, ObservableGroupBy$State<T, K> observableGroupBy$State) {
        super(k);
        this.f36865b = observableGroupBy$State;
    }

    /* renamed from: a */
    public static <T, K> C9747j<K, T> m2072a(K k, int i, ObservableGroupBy$GroupByObserver<?, K, T> observableGroupBy$GroupByObserver, boolean z) {
        return new C9747j<>(k, new ObservableGroupBy$State(i, observableGroupBy$GroupByObserver, k, z));
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        this.f36865b.subscribe(rVar);
    }

    public void onComplete() {
        this.f36865b.onComplete();
    }

    public void onError(Throwable th) {
        this.f36865b.onError(th);
    }

    public void onNext(T t) {
        this.f36865b.onNext(t);
    }
}
