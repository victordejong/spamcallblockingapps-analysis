package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p552d.C9747j;
import p530d.p541c.p558c0.AbstractC9810a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver.class */
public final class ObservableGroupBy$GroupByObserver<T, K, V> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final Object NULL_KEY = new Object();
    public static final long serialVersionUID = -3688291656102519502L;
    public final AbstractC9844r<? super AbstractC9810a<K, V>> actual;
    public final int bufferSize;
    public final boolean delayError;
    public final AbstractC9645h<? super T, ? extends K> keySelector;

    /* renamed from: s */
    public AbstractC9861b f38506s;
    public final AbstractC9645h<? super T, ? extends V> valueSelector;
    public final AtomicBoolean cancelled = new AtomicBoolean();
    public final Map<Object, C9747j<K, V>> groups = new ConcurrentHashMap();

    public ObservableGroupBy$GroupByObserver(AbstractC9844r<? super AbstractC9810a<K, V>> rVar, AbstractC9645h<? super T, ? extends K> hVar, AbstractC9645h<? super T, ? extends V> hVar2, int i, boolean z) {
        this.actual = rVar;
        this.keySelector = hVar;
        this.valueSelector = hVar2;
        this.bufferSize = i;
        this.delayError = z;
        lazySet(1);
    }

    public void cancel(K k) {
        if (k == null) {
            k = (K) NULL_KEY;
        }
        this.groups.remove(k);
        if (decrementAndGet() == 0) {
            this.f38506s.dispose();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (this.cancelled.compareAndSet(false, true) && decrementAndGet() == 0) {
            this.f38506s.dispose();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled.get();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        ArrayList<C9747j> arrayList = new ArrayList(this.groups.values());
        this.groups.clear();
        for (C9747j jVar : arrayList) {
            jVar.onComplete();
        }
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        ArrayList<C9747j> arrayList = new ArrayList(this.groups.values());
        this.groups.clear();
        for (C9747j jVar : arrayList) {
            jVar.onError(th);
        }
        this.actual.onError(th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        try {
            Object apply = this.keySelector.apply(t);
            Object obj = apply != null ? apply : NULL_KEY;
            C9747j<K, V> jVar = this.groups.get(obj);
            C9747j jVar2 = jVar;
            if (jVar == null) {
                if (!this.cancelled.get()) {
                    jVar2 = C9747j.m2072a(apply, this.bufferSize, (ObservableGroupBy$GroupByObserver<?, Object, T>) this, this.delayError);
                    this.groups.put(obj, jVar2);
                    getAndIncrement();
                    this.actual.onNext(jVar2);
                } else {
                    return;
                }
            }
            try {
                Object apply2 = this.valueSelector.apply(t);
                C9650a.m2095a(apply2, "The value supplied is null");
                jVar2.onNext(apply2);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f38506s.dispose();
                onError(th);
            }
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            this.f38506s.dispose();
            onError(th2);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38506s, bVar)) {
            this.f38506s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
