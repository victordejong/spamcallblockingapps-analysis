package p660rx;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.OnErrorFailedException;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.functions.Actions;
import p660rx.functions.Func1;
import p660rx.functions.Func2;
import p660rx.functions.FuncN;
import p660rx.internal.operators.EmptyObservableHolder;
import p660rx.internal.operators.OnSubscribeConcatMap;
import p660rx.internal.operators.OnSubscribeFilter;
import p660rx.internal.operators.OnSubscribeFromCallable;
import p660rx.internal.operators.OnSubscribeFromIterable;
import p660rx.internal.operators.OnSubscribeLift;
import p660rx.internal.operators.OnSubscribeMap;
import p660rx.internal.operators.OnSubscribeRange;
import p660rx.internal.operators.OnSubscribeTimeoutTimedWithFallback;
import p660rx.internal.operators.OnSubscribeTimerOnce;
import p660rx.internal.operators.OnSubscribeTimerPeriodically;
import p660rx.internal.operators.OperatorBufferWithSize;
import p660rx.internal.operators.OperatorDebounceWithTime;
import p660rx.internal.operators.OperatorDoAfterTerminate;
import p660rx.internal.operators.OperatorMerge;
import p660rx.internal.operators.OperatorObserveOn;
import p660rx.internal.operators.OperatorSubscribeOn;
import p660rx.internal.operators.OperatorTake;
import p660rx.internal.operators.OperatorZip;
import p660rx.internal.util.ActionSubscriber;
import p660rx.internal.util.InternalObservableUtils;
import p660rx.internal.util.ObserverSubscriber;
import p660rx.internal.util.RxRingBuffer;
import p660rx.internal.util.ScalarSynchronousObservable;
import p660rx.internal.util.UtilityFunctions;
import p660rx.observers.SafeSubscriber;
import p660rx.plugins.RxJavaHooks;
import p660rx.schedulers.Schedulers;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.Observable */
/* loaded from: classes3-dex2jar.jar:rx/Observable.class */
public class Observable<T> {
    public final OnSubscribe<T> onSubscribe;

    /* renamed from: rx.Observable$OnSubscribe */
    /* loaded from: classes3-dex2jar.jar:rx/Observable$OnSubscribe.class */
    public interface OnSubscribe<T> extends Action1<Subscriber<? super T>> {
    }

    /* renamed from: rx.Observable$Operator */
    /* loaded from: classes3-dex2jar.jar:rx/Observable$Operator.class */
    public interface Operator<R, T> extends Func1<Subscriber<? super R>, Subscriber<? super T>> {
    }

    public Observable(OnSubscribe<T> onSubscribe) {
        this.onSubscribe = onSubscribe;
    }

    public static <T> Observable<T> concat(Iterable<? extends Observable<? extends T>> iterable) {
        return concat(from(iterable));
    }

    public static <T> Observable<T> concat(Observable<? extends Observable<? extends T>> observable) {
        return (Observable<T>) observable.concatMap(UtilityFunctions.identity());
    }

    @Deprecated
    public static <T> Observable<T> create(OnSubscribe<T> onSubscribe) {
        return new Observable<>(RxJavaHooks.onCreate(onSubscribe));
    }

    public static <T> Observable<T> empty() {
        return EmptyObservableHolder.instance();
    }

    public static <T> Observable<T> from(Iterable<? extends T> iterable) {
        return unsafeCreate(new OnSubscribeFromIterable(iterable));
    }

    public static <T> Observable<T> fromCallable(Callable<? extends T> callable) {
        return unsafeCreate(new OnSubscribeFromCallable(callable));
    }

    public static Observable<Long> interval(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return unsafeCreate(new OnSubscribeTimerPeriodically(j, j2, timeUnit, scheduler));
    }

    public static Observable<Long> interval(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return interval(j, j, timeUnit, scheduler);
    }

    public static <T> Observable<T> just(T t) {
        return ScalarSynchronousObservable.create(t);
    }

    public static <T> Observable<T> merge(Observable<? extends Observable<? extends T>> observable) {
        return observable.getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) observable).scalarFlatMap(UtilityFunctions.identity()) : (Observable<T>) observable.lift(OperatorMerge.instance(false));
    }

    public static Observable<Integer> range(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Count can not be negative");
        } else if (i2 == 0) {
            return empty();
        } else {
            if (i <= (Integer.MAX_VALUE - i2) + 1) {
                return i2 == 1 ? just(Integer.valueOf(i)) : unsafeCreate(new OnSubscribeRange(i, (i2 - 1) + i));
            }
            throw new IllegalArgumentException("start + count can not exceed Integer.MAX_VALUE");
        }
    }

    public static <T> Subscription subscribe(Subscriber<? super T> subscriber, Observable<T> observable) {
        if (subscriber == null) {
            throw new IllegalArgumentException("subscriber can not be null");
        } else if (observable.onSubscribe != null) {
            subscriber.onStart();
            Subscriber<? super T> subscriber2 = subscriber;
            if (!(subscriber instanceof SafeSubscriber)) {
                subscriber2 = new SafeSubscriber<>(subscriber);
            }
            try {
                RxJavaHooks.onObservableStart(observable, observable.onSubscribe).call(subscriber2);
                return RxJavaHooks.onObservableReturn(subscriber2);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                if (subscriber2.isUnsubscribed()) {
                    RxJavaHooks.onError(RxJavaHooks.onObservableError(th));
                } else {
                    try {
                        subscriber2.onError(RxJavaHooks.onObservableError(th));
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        OnErrorFailedException onErrorFailedException = new OnErrorFailedException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2);
                        RxJavaHooks.onObservableError(onErrorFailedException);
                        throw onErrorFailedException;
                    }
                }
                return Subscriptions.unsubscribed();
            }
        } else {
            throw new IllegalStateException("onSubscribe function can not be null.");
        }
    }

    public static Observable<Long> timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, Schedulers.computation());
    }

    public static Observable<Long> timer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return unsafeCreate(new OnSubscribeTimerOnce(j, timeUnit, scheduler));
    }

    public static <T> Observable<T> unsafeCreate(OnSubscribe<T> onSubscribe) {
        return new Observable<>(RxJavaHooks.onCreate(onSubscribe));
    }

    public static <R> Observable<R> zip(Iterable<? extends Observable<?>> iterable, FuncN<? extends R> funcN) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Observable<?>> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add((Observable) it.next());
        }
        return just(arrayList.toArray(new Observable[arrayList.size()])).lift(new OperatorZip(funcN));
    }

    public static <T1, T2, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Func2<? super T1, ? super T2, ? extends R> func2) {
        return just(new Observable[]{observable, observable2}).lift(new OperatorZip(func2));
    }

    public final Observable<List<T>> buffer(int i) {
        return buffer(i, i);
    }

    public final Observable<List<T>> buffer(int i, int i2) {
        return (Observable<List<T>>) lift(new OperatorBufferWithSize(i, i2));
    }

    public final <R> Observable<R> concatMap(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarFlatMap(func1) : unsafeCreate(new OnSubscribeConcatMap(this, func1, 2, 0));
    }

    public final Observable<T> debounce(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> debounce(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorDebounceWithTime(j, timeUnit, scheduler));
    }

    public final Observable<T> doAfterTerminate(Action0 action0) {
        return (Observable<T>) lift(new OperatorDoAfterTerminate(action0));
    }

    public final Observable<T> filter(Func1<? super T, Boolean> func1) {
        return unsafeCreate(new OnSubscribeFilter(this, func1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) this).scalarFlatMap(func1) : merge(map(func1));
    }

    public final void forEach(Action1<? super T> action1) {
        subscribe(action1);
    }

    public final <R> Observable<R> lift(Operator<? extends R, ? super T> operator) {
        return unsafeCreate(new OnSubscribeLift(this.onSubscribe, operator));
    }

    public final <R> Observable<R> map(Func1<? super T, ? extends R> func1) {
        return unsafeCreate(new OnSubscribeMap(this, func1));
    }

    public final Observable<T> observeOn(Scheduler scheduler) {
        return observeOn(scheduler, RxRingBuffer.SIZE);
    }

    public final Observable<T> observeOn(Scheduler scheduler, int i) {
        return observeOn(scheduler, false, i);
    }

    public final Observable<T> observeOn(Scheduler scheduler, boolean z, int i) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarScheduleOn(scheduler) : (Observable<T>) lift(new OperatorObserveOn(scheduler, z, i));
    }

    public final Subscription subscribe() {
        return subscribe((Subscriber) new ActionSubscriber(Actions.empty(), InternalObservableUtils.ERROR_NOT_IMPLEMENTED, Actions.empty()));
    }

    public final Subscription subscribe(Observer<? super T> observer) {
        if (observer instanceof Subscriber) {
            return subscribe((Subscriber) ((Subscriber) observer));
        }
        if (observer != null) {
            return subscribe((Subscriber) new ObserverSubscriber(observer));
        }
        throw new NullPointerException("observer is null");
    }

    public final Subscription subscribe(Subscriber<? super T> subscriber) {
        return subscribe(subscriber, this);
    }

    public final Subscription subscribe(Action1<? super T> action1) {
        if (action1 != null) {
            return subscribe((Subscriber) new ActionSubscriber(action1, InternalObservableUtils.ERROR_NOT_IMPLEMENTED, Actions.empty()));
        }
        throw new IllegalArgumentException("onNext can not be null");
    }

    public final Subscription subscribe(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        } else if (action12 != null) {
            return subscribe((Subscriber) new ActionSubscriber(action1, action12, Actions.empty()));
        } else {
            throw new IllegalArgumentException("onError can not be null");
        }
    }

    public final Subscription subscribe(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        } else if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        } else if (action0 != null) {
            return subscribe((Subscriber) new ActionSubscriber(action1, action12, action0));
        } else {
            throw new IllegalArgumentException("onComplete can not be null");
        }
    }

    public final Observable<T> subscribeOn(Scheduler scheduler) {
        return subscribeOn(scheduler, true);
    }

    public final Observable<T> subscribeOn(Scheduler scheduler, boolean z) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarScheduleOn(scheduler) : unsafeCreate(new OperatorSubscribeOn(this, scheduler, z));
    }

    public final Observable<T> take(int i) {
        return (Observable<T>) lift(new OperatorTake(i));
    }

    public final Observable<T> takeFirst(Func1<? super T, Boolean> func1) {
        return filter(func1).take(1);
    }

    public final Observable<T> timeout(long j, TimeUnit timeUnit, Observable<? extends T> observable) {
        return timeout(j, timeUnit, observable, Schedulers.computation());
    }

    public final Observable<T> timeout(long j, TimeUnit timeUnit, Observable<? extends T> observable, Scheduler scheduler) {
        return unsafeCreate(new OnSubscribeTimeoutTimedWithFallback(this, j, timeUnit, scheduler, observable));
    }

    public final Subscription unsafeSubscribe(Subscriber<? super T> subscriber) {
        try {
            subscriber.onStart();
            RxJavaHooks.onObservableStart(this, this.onSubscribe).call(subscriber);
            return RxJavaHooks.onObservableReturn(subscriber);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            try {
                subscriber.onError(RxJavaHooks.onObservableError(th));
                return Subscriptions.unsubscribed();
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                OnErrorFailedException onErrorFailedException = new OnErrorFailedException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2);
                RxJavaHooks.onObservableError(onErrorFailedException);
                throw onErrorFailedException;
            }
        }
    }

    public final <T2, R> Observable<R> zipWith(Observable<? extends T2> observable, Func2<? super T, ? super T2, ? extends R> func2) {
        return zip(this, observable, func2);
    }
}
