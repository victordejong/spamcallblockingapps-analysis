package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.flowable.FlowableToList;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ArrayListSupplier;
import java.util.Collection;
import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9653b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.e.b.w */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/w.class */
public final class C9708w<T, U extends Collection<? super T>> extends AbstractC9850t<U> implements AbstractC9653b<U> {

    /* renamed from: a */
    public final AbstractC9814e<T> f36794a;

    /* renamed from: b */
    public final Callable<U> f36795b;

    /* renamed from: d.c.b0.e.b.w$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/w$a.class */
    public static final class C9709a<T, U extends Collection<? super T>> implements AbstractC9829h<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9851u<? super U> f36796a;

        /* renamed from: b */
        public AbstractC10434d f36797b;

        /* renamed from: c */
        public U f36798c;

        public C9709a(AbstractC9851u<? super U> uVar, U u) {
            this.f36796a = uVar;
            this.f36798c = u;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36797b.cancel();
            this.f36797b = SubscriptionHelper.CANCELLED;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36797b == SubscriptionHelper.CANCELLED;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            this.f36797b = SubscriptionHelper.CANCELLED;
            this.f36796a.onSuccess(this.f36798c);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            this.f36798c = null;
            this.f36797b = SubscriptionHelper.CANCELLED;
            this.f36796a.onError(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            this.f36798c.add(t);
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f36797b, dVar)) {
                this.f36797b = dVar;
                this.f36796a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public C9708w(AbstractC9814e<T> eVar) {
        this(eVar, ArrayListSupplier.asCallable());
    }

    public C9708w(AbstractC9814e<T> eVar, Callable<U> callable) {
        this.f36794a = eVar;
        this.f36795b = callable;
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super U> uVar) {
        try {
            U call = this.f36795b.call();
            C9650a.m2095a(call, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f36794a.m1965a((AbstractC9829h) new C9709a(uVar, call));
        } catch (Throwable th) {
            C9863a.m1822b(th);
            EmptyDisposable.error(th, uVar);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9653b
    /* renamed from: c */
    public AbstractC9814e<U> mo2080c() {
        return C9815a.m1938a(new FlowableToList(this.f36794a, this.f36795b));
    }
}
