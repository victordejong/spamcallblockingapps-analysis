package p660rx;

import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p660rx.Scheduler;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.functions.Actions;
import p660rx.functions.Func0;
import p660rx.functions.Func1;
import p660rx.internal.operators.SingleDelay;
import p660rx.internal.operators.SingleFromCallable;
import p660rx.internal.operators.SingleObserveOn;
import p660rx.internal.operators.SingleOnSubscribeMap;
import p660rx.internal.operators.SingleTimeout;
import p660rx.internal.operators.SingleToObservable;
import p660rx.internal.util.ScalarSynchronousSingle;
import p660rx.internal.util.UtilityFunctions;
import p660rx.plugins.RxJavaHooks;
import p660rx.schedulers.Schedulers;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.Single */
/* loaded from: classes3-dex2jar.jar:rx/Single.class */
public class Single<T> {
    public final OnSubscribe<T> onSubscribe;

    /* renamed from: rx.Single$OnSubscribe */
    /* loaded from: classes3-dex2jar.jar:rx/Single$OnSubscribe.class */
    public interface OnSubscribe<T> extends Action1<SingleSubscriber<? super T>> {
    }

    public Single(OnSubscribe<T> onSubscribe) {
        this.onSubscribe = RxJavaHooks.onCreate(onSubscribe);
    }

    public static <T> Observable<T> asObservable(Single<T> single) {
        return Observable.unsafeCreate(new SingleToObservable(single.onSubscribe));
    }

    public static <T> Single<T> create(OnSubscribe<T> onSubscribe) {
        return new Single<>(onSubscribe);
    }

    public static <T> Single<T> defer(final Callable<Single<T>> callable) {
        return create(new OnSubscribe<T>() { // from class: rx.Single.18
            @Override // p660rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object obj) {
                call((SingleSubscriber) ((SingleSubscriber) obj));
            }

            public void call(SingleSubscriber<? super T> singleSubscriber) {
                try {
                    ((Single) callable.call()).subscribe(singleSubscriber);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    singleSubscriber.onError(th);
                }
            }
        });
    }

    public static <T> Single<T> error(final Throwable th) {
        return create(new OnSubscribe<T>() { // from class: rx.Single.1
            @Override // p660rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object obj) {
                call((SingleSubscriber) ((SingleSubscriber) obj));
            }

            public void call(SingleSubscriber<? super T> singleSubscriber) {
                singleSubscriber.onError(th);
            }
        });
    }

    public static <T> Single<T> fromCallable(Callable<? extends T> callable) {
        return create(new SingleFromCallable(callable));
    }

    public static <T> Single<T> just(T t) {
        return ScalarSynchronousSingle.create(t);
    }

    public static <T> Single<T> merge(Single<? extends Single<? extends T>> single) {
        return single instanceof ScalarSynchronousSingle ? ((ScalarSynchronousSingle) single).scalarFlatMap(UtilityFunctions.identity()) : create(new OnSubscribe<T>() { // from class: rx.Single.2
            @Override // p660rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object obj) {
                call((SingleSubscriber) ((SingleSubscriber) obj));
            }

            public void call(final SingleSubscriber<? super T> singleSubscriber) {
                SingleSubscriber<Single<? extends T>> singleSubscriber2 = new SingleSubscriber<Single<? extends T>>(this) { // from class: rx.Single.2.1
                    @Override // p660rx.SingleSubscriber
                    public void onError(Throwable th) {
                        singleSubscriber.onError(th);
                    }

                    @Override // p660rx.SingleSubscriber
                    public /* bridge */ /* synthetic */ void onSuccess(Object obj) {
                        onSuccess((Single) ((Single) obj));
                    }

                    public void onSuccess(Single<? extends T> single2) {
                        single2.subscribe(singleSubscriber);
                    }
                };
                singleSubscriber.add(singleSubscriber2);
                Single.this.subscribe(singleSubscriber2);
            }
        });
    }

    public final Single<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, Schedulers.computation());
    }

    public final Single<T> delay(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(new SingleDelay(this.onSubscribe, j, timeUnit, scheduler));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Single<R> flatMap(Func1<? super T, ? extends Single<? extends R>> func1) {
        return this instanceof ScalarSynchronousSingle ? ((ScalarSynchronousSingle) this).scalarFlatMap(func1) : merge(map(func1));
    }

    public final <R> Single<R> map(Func1<? super T, ? extends R> func1) {
        return create(new SingleOnSubscribeMap(this, func1));
    }

    public final Single<T> observeOn(Scheduler scheduler) {
        if (this instanceof ScalarSynchronousSingle) {
            return ((ScalarSynchronousSingle) this).scalarScheduleOn(scheduler);
        }
        if (scheduler != null) {
            return create(new SingleObserveOn(this.onSubscribe, scheduler));
        }
        throw new NullPointerException("scheduler is null");
    }

    public final Subscription subscribe() {
        return subscribe(Actions.empty(), Actions.errorNotImplemented());
    }

    public final Subscription subscribe(SingleSubscriber<? super T> singleSubscriber) {
        if (singleSubscriber != null) {
            try {
                RxJavaHooks.onSingleStart(this, this.onSubscribe).call(singleSubscriber);
                return RxJavaHooks.onSingleReturn(singleSubscriber);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                try {
                    singleSubscriber.onError(RxJavaHooks.onSingleError(th));
                    return Subscriptions.empty();
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    RuntimeException runtimeException = new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2);
                    RxJavaHooks.onSingleError(runtimeException);
                    throw runtimeException;
                }
            }
        } else {
            throw new IllegalArgumentException("te is null");
        }
    }

    public final Subscription subscribe(Action1<? super T> action1) {
        return subscribe(action1, Actions.errorNotImplemented());
    }

    public final Subscription subscribe(final Action1<? super T> action1, final Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onSuccess can not be null");
        } else if (action12 != null) {
            return subscribe(new SingleSubscriber<T>(this) { // from class: rx.Single.11
                @Override // p660rx.SingleSubscriber
                public final void onError(Throwable th) {
                    try {
                        action12.call(th);
                    } finally {
                        unsubscribe();
                    }
                }

                @Override // p660rx.SingleSubscriber
                public final void onSuccess(T t) {
                    try {
                        action1.call(t);
                    } finally {
                        unsubscribe();
                    }
                }
            });
        } else {
            throw new IllegalArgumentException("onError can not be null");
        }
    }

    public final Single<T> subscribeOn(final Scheduler scheduler) {
        return this instanceof ScalarSynchronousSingle ? ((ScalarSynchronousSingle) this).scalarScheduleOn(scheduler) : create(new OnSubscribe<T>() { // from class: rx.Single.13
            @Override // p660rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object obj) {
                call((SingleSubscriber) ((SingleSubscriber) obj));
            }

            public void call(final SingleSubscriber<? super T> singleSubscriber) {
                final Scheduler.Worker createWorker = scheduler.createWorker();
                singleSubscriber.add(createWorker);
                createWorker.schedule(new Action0() { // from class: rx.Single.13.1
                    @Override // p660rx.functions.Action0
                    public void call() {
                        SingleSubscriber<T> singleSubscriber2 = new SingleSubscriber<T>() { // from class: rx.Single.13.1.1
                            @Override // p660rx.SingleSubscriber
                            public void onError(Throwable th) {
                                try {
                                    singleSubscriber.onError(th);
                                } finally {
                                    createWorker.unsubscribe();
                                }
                            }

                            @Override // p660rx.SingleSubscriber
                            public void onSuccess(T t) {
                                try {
                                    singleSubscriber.onSuccess(t);
                                } finally {
                                    createWorker.unsubscribe();
                                }
                            }
                        };
                        singleSubscriber.add(singleSubscriber2);
                        Single.this.subscribe(singleSubscriber2);
                    }
                });
            }
        });
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit) {
        return timeout(j, timeUnit, null, Schedulers.computation());
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit, Single<? extends T> single, Scheduler scheduler) {
        Single<? extends T> single2 = single;
        if (single == null) {
            single2 = defer(new Func0<Single<T>>(this) { // from class: rx.Single.14
                @Override // p660rx.functions.Func0, java.util.concurrent.Callable
                public Single<T> call() {
                    return Single.error(new TimeoutException());
                }
            });
        }
        return create(new SingleTimeout(this.onSubscribe, j, timeUnit, scheduler, single2.onSubscribe));
    }

    public final Observable<T> toObservable() {
        return asObservable(this);
    }
}
