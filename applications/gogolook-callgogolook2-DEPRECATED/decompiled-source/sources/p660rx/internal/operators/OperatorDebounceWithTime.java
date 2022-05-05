package p660rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p660rx.Observable;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
import p660rx.observers.SerializedSubscriber;
import p660rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OperatorDebounceWithTime */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorDebounceWithTime.class */
public final class OperatorDebounceWithTime<T> implements Observable.Operator<T, T> {
    public final Scheduler scheduler;
    public final long timeout;
    public final TimeUnit unit;

    /* renamed from: rx.internal.operators.OperatorDebounceWithTime$1 */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorDebounceWithTime$1.class */
    public class C153981 extends Subscriber<T> {
        public final /* synthetic */ SerializedSubscriber val$s;
        public final /* synthetic */ SerialSubscription val$serial;
        public final /* synthetic */ Scheduler.Worker val$worker;
        public final DebounceState<T> state = new DebounceState<>();
        public final Subscriber<?> self = this;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C153981(Subscriber subscriber, SerialSubscription serialSubscription, Scheduler.Worker worker, SerializedSubscriber serializedSubscriber) {
            super(subscriber);
            this.val$serial = serialSubscription;
            this.val$worker = worker;
            this.val$s = serializedSubscriber;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            this.state.emitAndComplete(this.val$s, this);
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.val$s.onError(th);
            unsubscribe();
            this.state.clear();
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            final int next = this.state.next(t);
            SerialSubscription serialSubscription = this.val$serial;
            Scheduler.Worker worker = this.val$worker;
            Action0 action0 = new Action0() { // from class: rx.internal.operators.OperatorDebounceWithTime.1.1
                @Override // p660rx.functions.Action0
                public void call() {
                    C153981 r0 = C153981.this;
                    r0.state.emit(next, r0.val$s, r0.self);
                }
            };
            OperatorDebounceWithTime operatorDebounceWithTime = OperatorDebounceWithTime.this;
            serialSubscription.set(worker.schedule(action0, operatorDebounceWithTime.timeout, operatorDebounceWithTime.unit));
        }

        @Override // p660rx.Subscriber
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.OperatorDebounceWithTime$DebounceState */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorDebounceWithTime$DebounceState.class */
    public static final class DebounceState<T> {
        public boolean emitting;
        public boolean hasValue;
        public int index;
        public boolean terminate;
        public T value;

        public void clear() {
            synchronized (this) {
                this.index++;
                this.value = null;
                this.hasValue = false;
            }
        }

        public void emit(int i, Subscriber<T> subscriber, Subscriber<?> subscriber2) {
            synchronized (this) {
                if (!this.emitting && this.hasValue && i == this.index) {
                    T t = this.value;
                    this.value = null;
                    this.hasValue = false;
                    this.emitting = true;
                    try {
                        subscriber.onNext(t);
                        synchronized (this) {
                            if (!this.terminate) {
                                this.emitting = false;
                            } else {
                                subscriber.onCompleted();
                            }
                        }
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, subscriber2, t);
                    }
                }
            }
        }

        public void emitAndComplete(Subscriber<T> subscriber, Subscriber<?> subscriber2) {
            synchronized (this) {
                if (this.emitting) {
                    this.terminate = true;
                    return;
                }
                T t = this.value;
                boolean z = this.hasValue;
                this.value = null;
                this.hasValue = false;
                this.emitting = true;
                if (z) {
                    try {
                        subscriber.onNext(t);
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, subscriber2, t);
                        return;
                    }
                }
                subscriber.onCompleted();
            }
        }

        public int next(T t) {
            int i;
            synchronized (this) {
                this.value = t;
                this.hasValue = true;
                i = this.index + 1;
                this.index = i;
            }
            return i;
        }
    }

    public OperatorDebounceWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // p660rx.functions.Func1
    public /* bridge */ /* synthetic */ Object call(Object obj) {
        return call((Subscriber) ((Subscriber) obj));
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Scheduler.Worker createWorker = this.scheduler.createWorker();
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        SerialSubscription serialSubscription = new SerialSubscription();
        serializedSubscriber.add(createWorker);
        serializedSubscriber.add(serialSubscription);
        return new C153981(subscriber, serialSubscription, createWorker, serializedSubscriber);
    }
}
