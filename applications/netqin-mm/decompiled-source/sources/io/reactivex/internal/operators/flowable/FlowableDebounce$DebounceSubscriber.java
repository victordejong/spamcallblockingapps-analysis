package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p564i0.AbstractC9834a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber.class */
public final class FlowableDebounce$DebounceSubscriber<T, U> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 6725975399620862591L;
    public final AbstractC10433c<? super T> actual;
    public final AbstractC9645h<? super T, ? extends AbstractC10432b<U>> debounceSelector;
    public final AtomicReference<AbstractC9861b> debouncer = new AtomicReference<>();
    public boolean done;
    public volatile long index;

    /* renamed from: s */
    public AbstractC10434d f38356s;

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableDebounce$DebounceSubscriber$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$a.class */
    public static final class C10404a<T, U> extends AbstractC9834a<U> {

        /* renamed from: b */
        public final FlowableDebounce$DebounceSubscriber<T, U> f38357b;

        /* renamed from: c */
        public final long f38358c;

        /* renamed from: d */
        public final T f38359d;

        /* renamed from: e */
        public boolean f38360e;

        /* renamed from: f */
        public final AtomicBoolean f38361f = new AtomicBoolean();

        public C10404a(FlowableDebounce$DebounceSubscriber<T, U> flowableDebounce$DebounceSubscriber, long j, T t) {
            this.f38357b = flowableDebounce$DebounceSubscriber;
            this.f38358c = j;
            this.f38359d = t;
        }

        /* renamed from: c */
        public void m253c() {
            if (this.f38361f.compareAndSet(false, true)) {
                this.f38357b.emit(this.f38358c, this.f38359d);
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (!this.f38360e) {
                this.f38360e = true;
                m253c();
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.f38360e) {
                C9815a.m1923b(th);
                return;
            }
            this.f38360e = true;
            this.f38357b.onError(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(U u) {
            if (!this.f38360e) {
                this.f38360e = true;
                m1879a();
                m253c();
            }
        }
    }

    public FlowableDebounce$DebounceSubscriber(AbstractC10433c<? super T> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<U>> hVar) {
        this.actual = cVar;
        this.debounceSelector = hVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.f38356s.cancel();
        DisposableHelper.dispose(this.debouncer);
    }

    public void emit(long j, T t) {
        if (j != this.index) {
            return;
        }
        if (get() != 0) {
            this.actual.onNext(t);
            C9800b.m2009c(this, 1L);
            return;
        }
        cancel();
        this.actual.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            AbstractC9861b bVar = this.debouncer.get();
            if (!DisposableHelper.isDisposed(bVar)) {
                ((C10404a) bVar).m253c();
                DisposableHelper.dispose(this.debouncer);
                this.actual.onComplete();
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        DisposableHelper.dispose(this.debouncer);
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            long j = this.index + 1;
            this.index = j;
            AbstractC9861b bVar = this.debouncer.get();
            if (bVar != null) {
                bVar.dispose();
            }
            try {
                Object apply = this.debounceSelector.apply(t);
                C9650a.m2095a(apply, "The publisher supplied is null");
                AbstractC10432b bVar2 = (AbstractC10432b) apply;
                C10404a aVar = new C10404a(this, j, t);
                if (this.debouncer.compareAndSet(bVar, aVar)) {
                    bVar2.subscribe(aVar);
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                cancel();
                this.actual.onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38356s, dVar)) {
            this.f38356s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this, j);
        }
    }
}
