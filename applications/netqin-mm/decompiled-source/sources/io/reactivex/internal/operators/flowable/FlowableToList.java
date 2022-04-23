package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableToList.class */
public final class FlowableToList<T, U extends Collection<? super T>> extends AbstractC9677a<T, U> {

    /* renamed from: c */
    public final Callable<U> f38436c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableToList$ToListSubscriber.class */
    public static final class ToListSubscriber<T, U extends Collection<? super T>> extends DeferredScalarSubscription<U> implements AbstractC9829h<T>, AbstractC10434d {
        public static final long serialVersionUID = -8134157938864266736L;

        /* renamed from: s */
        public AbstractC10434d f38437s;

        /* JADX WARN: Multi-variable type inference failed */
        public ToListSubscriber(AbstractC10433c<? super U> cVar, U u) {
            super(cVar);
            this.value = u;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
        public void cancel() {
            super.cancel();
            this.f38437s.cancel();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            complete(this.value);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            this.value = null;
            this.actual.onError(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            Collection collection = (Collection) this.value;
            if (collection != null) {
                collection.add(t);
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38437s, dVar)) {
                this.f38437s = dVar;
                this.actual.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableToList(AbstractC9814e<T> eVar, Callable<U> callable) {
        super(eVar);
        this.f38436c = callable;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super U> cVar) {
        try {
            U call = this.f38436c.call();
            C9650a.m2095a(call, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f36754b.m1965a((AbstractC9829h) new ToListSubscriber(cVar, call));
        } catch (Throwable th) {
            C9863a.m1822b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
