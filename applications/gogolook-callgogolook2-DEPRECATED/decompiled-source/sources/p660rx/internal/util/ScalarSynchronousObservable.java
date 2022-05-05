package p660rx.internal.util;

import gogolook.callgogolook2.gson.UserProfile;
import java.util.concurrent.atomic.AtomicBoolean;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.Subscription;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
import p660rx.functions.Func1;
import p660rx.internal.producers.SingleProducer;
import p660rx.internal.schedulers.EventLoopsScheduler;
import p660rx.observers.Subscribers;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.util.ScalarSynchronousObservable */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousObservable.class */
public final class ScalarSynchronousObservable<T> extends Observable<T> {
    public static final boolean STRONG_MODE = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();

    /* renamed from: t */
    public final T f33475t;

    /* renamed from: rx.internal.util.ScalarSynchronousObservable$JustOnSubscribe */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousObservable$JustOnSubscribe.class */
    public static final class JustOnSubscribe<T> implements Observable.OnSubscribe<T> {
        public final T value;

        public JustOnSubscribe(T t) {
            this.value = t;
        }

        @Override // p660rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object obj) {
            call((Subscriber) ((Subscriber) obj));
        }

        public void call(Subscriber<? super T> subscriber) {
            subscriber.setProducer(ScalarSynchronousObservable.createProducer(subscriber, this.value));
        }
    }

    /* renamed from: rx.internal.util.ScalarSynchronousObservable$ScalarAsyncOnSubscribe */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe.class */
    public static final class ScalarAsyncOnSubscribe<T> implements Observable.OnSubscribe<T> {
        public final Func1<Action0, Subscription> onSchedule;
        public final T value;

        public ScalarAsyncOnSubscribe(T t, Func1<Action0, Subscription> func1) {
            this.value = t;
            this.onSchedule = func1;
        }

        @Override // p660rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object obj) {
            call((Subscriber) ((Subscriber) obj));
        }

        public void call(Subscriber<? super T> subscriber) {
            subscriber.setProducer(new ScalarAsyncProducer(subscriber, this.value, this.onSchedule));
        }
    }

    /* renamed from: rx.internal.util.ScalarSynchronousObservable$ScalarAsyncProducer */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer.class */
    public static final class ScalarAsyncProducer<T> extends AtomicBoolean implements Producer, Action0 {
        public final Subscriber<? super T> actual;
        public final Func1<Action0, Subscription> onSchedule;
        public final T value;

        public ScalarAsyncProducer(Subscriber<? super T> subscriber, T t, Func1<Action0, Subscription> func1) {
            this.actual = subscriber;
            this.value = t;
            this.onSchedule = func1;
        }

        @Override // p660rx.functions.Action0
        public void call() {
            Subscriber<? super T> subscriber = this.actual;
            if (!subscriber.isUnsubscribed()) {
                Object obj = (T) this.value;
                try {
                    subscriber.onNext(obj);
                    if (!subscriber.isUnsubscribed()) {
                        subscriber.onCompleted();
                    }
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, subscriber, obj);
                }
            }
        }

        @Override // p660rx.Producer
        public void request(long j) {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            } else if (i != 0 && compareAndSet(false, true)) {
                this.actual.add(this.onSchedule.call(this));
            }
        }

        @Override // java.util.concurrent.atomic.AtomicBoolean
        public String toString() {
            return "ScalarAsyncProducer[" + this.value + UserProfile.CARD_CATE_SEPARATOR + get() + "]";
        }
    }

    /* renamed from: rx.internal.util.ScalarSynchronousObservable$WeakSingleProducer */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/ScalarSynchronousObservable$WeakSingleProducer.class */
    public static final class WeakSingleProducer<T> implements Producer {
        public final Subscriber<? super T> actual;
        public boolean once;
        public final T value;

        public WeakSingleProducer(Subscriber<? super T> subscriber, T t) {
            this.actual = subscriber;
            this.value = t;
        }

        @Override // p660rx.Producer
        public void request(long j) {
            if (!this.once) {
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    throw new IllegalStateException("n >= required but it was " + j);
                } else if (i != 0) {
                    this.once = true;
                    Subscriber<? super T> subscriber = this.actual;
                    if (!subscriber.isUnsubscribed()) {
                        Object obj = (T) this.value;
                        try {
                            subscriber.onNext(obj);
                            if (!subscriber.isUnsubscribed()) {
                                subscriber.onCompleted();
                            }
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, subscriber, obj);
                        }
                    }
                }
            }
        }
    }

    public ScalarSynchronousObservable(T t) {
        super(RxJavaHooks.onCreate(new JustOnSubscribe(t)));
        this.f33475t = t;
    }

    public static <T> ScalarSynchronousObservable<T> create(T t) {
        return new ScalarSynchronousObservable<>(t);
    }

    public static <T> Producer createProducer(Subscriber<? super T> subscriber, T t) {
        return STRONG_MODE ? new SingleProducer(subscriber, t) : new WeakSingleProducer(subscriber, t);
    }

    public T get() {
        return this.f33475t;
    }

    public <R> Observable<R> scalarFlatMap(final Func1<? super T, ? extends Observable<? extends R>> func1) {
        return Observable.unsafeCreate(new Observable.OnSubscribe<R>() { // from class: rx.internal.util.ScalarSynchronousObservable.3
            public void call(Subscriber<? super R> subscriber) {
                Observable observable = (Observable) func1.call(ScalarSynchronousObservable.this.f33475t);
                if (observable instanceof ScalarSynchronousObservable) {
                    subscriber.setProducer(ScalarSynchronousObservable.createProducer(subscriber, ((ScalarSynchronousObservable) observable).f33475t));
                } else {
                    observable.unsafeSubscribe(Subscribers.wrap(subscriber));
                }
            }
        });
    }

    public Observable<T> scalarScheduleOn(final Scheduler scheduler) {
        Func1<Action0, Subscription> func1;
        if (scheduler instanceof EventLoopsScheduler) {
            final EventLoopsScheduler eventLoopsScheduler = (EventLoopsScheduler) scheduler;
            func1 = new Func1<Action0, Subscription>(this) { // from class: rx.internal.util.ScalarSynchronousObservable.1
                public Subscription call(Action0 action0) {
                    return eventLoopsScheduler.scheduleDirect(action0);
                }
            };
        } else {
            func1 = new Func1<Action0, Subscription>(this) { // from class: rx.internal.util.ScalarSynchronousObservable.2
                public Subscription call(final Action0 action0) {
                    final Scheduler.Worker createWorker = scheduler.createWorker();
                    createWorker.schedule(new Action0(this) { // from class: rx.internal.util.ScalarSynchronousObservable.2.1
                        @Override // p660rx.functions.Action0
                        public void call() {
                            try {
                                action0.call();
                            } finally {
                                createWorker.unsubscribe();
                            }
                        }
                    });
                    return createWorker;
                }
            };
        }
        return Observable.unsafeCreate(new ScalarAsyncOnSubscribe(this.f33475t, func1));
    }
}
