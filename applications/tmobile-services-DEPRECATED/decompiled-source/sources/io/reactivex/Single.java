package io.reactivex;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.internal.observers.BlockingMultiObserver;
import io.reactivex.internal.observers.ConsumerSingleObserver;
import io.reactivex.internal.operators.single.SingleCreate;
import io.reactivex.internal.operators.single.SingleDoOnSuccess;
import io.reactivex.internal.operators.single.SingleFromCallable;
import io.reactivex.internal.operators.single.SingleMap;
import io.reactivex.internal.operators.single.SingleObserveOn;
import io.reactivex.internal.operators.single.SingleSubscribeOn;
import io.reactivex.internal.operators.single.SingleTimer;
import io.reactivex.internal.operators.single.SingleToObservable;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:io/reactivex/Single.class */
public abstract class Single<T> implements SingleSource<T> {
    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: d */
    public static <T> Single<T> m4470d(SingleOnSubscribe<T> singleOnSubscribe) {
        ObjectHelper.m4363e(singleOnSubscribe, "source is null");
        return RxJavaPlugins.m3359o(new SingleCreate(singleOnSubscribe));
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: f */
    public static <T> Single<T> m4468f(Callable<? extends T> callable) {
        ObjectHelper.m4363e(callable, "callable is null");
        return RxJavaPlugins.m3359o(new SingleFromCallable(callable));
    }

    @SchedulerSupport
    @CheckReturnValue
    /* renamed from: m */
    public static Single<Long> m4462m(long j, TimeUnit timeUnit) {
        return m4461n(j, timeUnit, Schedulers.m3240a());
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: n */
    public static Single<Long> m4461n(long j, TimeUnit timeUnit, Scheduler scheduler) {
        ObjectHelper.m4363e(timeUnit, "unit is null");
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return RxJavaPlugins.m3359o(new SingleTimer(j, timeUnit, scheduler));
    }

    @Override // io.reactivex.SingleSource
    @SchedulerSupport
    /* renamed from: b */
    public final void mo4457b(SingleObserver<? super T> singleObserver) {
        ObjectHelper.m4363e(singleObserver, "observer is null");
        SingleObserver<? super T> A = RxJavaPlugins.m3376A(this, singleObserver);
        ObjectHelper.m4363e(A, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            mo3189k(A);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @SchedulerSupport
    @CheckReturnValue
    /* renamed from: c */
    public final T m4471c() {
        BlockingMultiObserver blockingMultiObserver = new BlockingMultiObserver();
        mo4457b(blockingMultiObserver);
        return (T) blockingMultiObserver.m4354a();
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: e */
    public final Single<T> m4469e(Consumer<? super T> consumer) {
        ObjectHelper.m4363e(consumer, "onSuccess is null");
        return RxJavaPlugins.m3359o(new SingleDoOnSuccess(this, consumer));
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: g */
    public final <R> Single<R> m4467g(Function<? super T, ? extends R> function) {
        ObjectHelper.m4363e(function, "mapper is null");
        return RxJavaPlugins.m3359o(new SingleMap(this, function));
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: h */
    public final Single<T> m4466h(Scheduler scheduler) {
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return RxJavaPlugins.m3359o(new SingleObserveOn(this, scheduler));
    }

    @SchedulerSupport
    /* renamed from: i */
    public final Disposable m4465i() {
        return m4464j(Functions.m4408g(), Functions.f15133e);
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: j */
    public final Disposable m4464j(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        ObjectHelper.m4363e(consumer, "onSuccess is null");
        ObjectHelper.m4363e(consumer2, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(consumer, consumer2);
        mo4457b(consumerSingleObserver);
        return consumerSingleObserver;
    }

    /* renamed from: k */
    protected abstract void mo3189k(@NonNull SingleObserver<? super T> singleObserver);

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: l */
    public final Single<T> m4463l(Scheduler scheduler) {
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return RxJavaPlugins.m3359o(new SingleSubscribeOn(this, scheduler));
    }

    @SchedulerSupport
    @CheckReturnValue
    /* renamed from: o */
    public final Observable<T> m4460o() {
        return this instanceof FuseToObservable ? ((FuseToObservable) this).mo3663a() : RxJavaPlugins.m3360n(new SingleToObservable(this));
    }
}
