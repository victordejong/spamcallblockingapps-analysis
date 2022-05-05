package io.reactivex.plugins;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.Flowable;
import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observables.ConnectableObservable;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/plugins/RxJavaPlugins.class */
public final class RxJavaPlugins {
    @Nullable

    /* renamed from: a */
    static volatile Consumer<? super Throwable> f19470a;
    @Nullable

    /* renamed from: b */
    static volatile Function<? super Runnable, ? extends Runnable> f19471b;
    @Nullable

    /* renamed from: c */
    static volatile Function<? super Callable<Scheduler>, ? extends Scheduler> f19472c;
    @Nullable

    /* renamed from: d */
    static volatile Function<? super Callable<Scheduler>, ? extends Scheduler> f19473d;
    @Nullable

    /* renamed from: e */
    static volatile Function<? super Callable<Scheduler>, ? extends Scheduler> f19474e;
    @Nullable

    /* renamed from: f */
    static volatile Function<? super Callable<Scheduler>, ? extends Scheduler> f19475f;
    @Nullable

    /* renamed from: g */
    static volatile Function<? super Scheduler, ? extends Scheduler> f19476g;
    @Nullable

    /* renamed from: h */
    static volatile Function<? super Scheduler, ? extends Scheduler> f19477h;
    @Nullable

    /* renamed from: i */
    static volatile Function<? super Scheduler, ? extends Scheduler> f19478i;
    @Nullable

    /* renamed from: j */
    static volatile Function<? super Flowable, ? extends Flowable> f19479j;
    @Nullable

    /* renamed from: k */
    static volatile Function<? super ConnectableFlowable, ? extends ConnectableFlowable> f19480k;
    @Nullable

    /* renamed from: l */
    static volatile Function<? super Observable, ? extends Observable> f19481l;
    @Nullable

    /* renamed from: m */
    static volatile Function<? super ConnectableObservable, ? extends ConnectableObservable> f19482m;
    @Nullable

    /* renamed from: n */
    static volatile Function<? super Maybe, ? extends Maybe> f19483n;
    @Nullable

    /* renamed from: o */
    static volatile Function<? super Single, ? extends Single> f19484o;
    @Nullable

    /* renamed from: p */
    static volatile Function<? super Completable, ? extends Completable> f19485p;
    @Nullable

    /* renamed from: q */
    static volatile BiFunction<? super Flowable, ? super Subscriber, ? extends Subscriber> f19486q;
    @Nullable

    /* renamed from: r */
    static volatile BiFunction<? super Maybe, ? super MaybeObserver, ? extends MaybeObserver> f19487r;
    @Nullable

    /* renamed from: s */
    static volatile BiFunction<? super Observable, ? super Observer, ? extends Observer> f19488s;
    @Nullable

    /* renamed from: t */
    static volatile BiFunction<? super Single, ? super SingleObserver, ? extends SingleObserver> f19489t;
    @Nullable

    /* renamed from: u */
    static volatile BiFunction<? super Completable, ? super CompletableObserver, ? extends CompletableObserver> f19490u;
    @Nullable

    /* renamed from: v */
    static volatile BooleanSupplier f19491v;

    /* renamed from: w */
    static volatile boolean f19492w;

    private RxJavaPlugins() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    /* renamed from: A */
    public static <T> SingleObserver<? super T> m3376A(@NonNull Single<T> single, @NonNull SingleObserver<? super T> singleObserver) {
        BiFunction<? super Single, ? super SingleObserver, ? extends SingleObserver> biFunction = f19489t;
        return biFunction != null ? (SingleObserver) m3373a(biFunction, single, singleObserver) : singleObserver;
    }

    @NonNull
    /* renamed from: B */
    public static <T> Subscriber<? super T> m3375B(@NonNull Flowable<T> flowable, @NonNull Subscriber<? super T> subscriber) {
        BiFunction<? super Flowable, ? super Subscriber, ? extends Subscriber> biFunction = f19486q;
        return biFunction != null ? (Subscriber) m3373a(biFunction, flowable, subscriber) : subscriber;
    }

    /* renamed from: C */
    static void m3374C(@NonNull Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    @NonNull
    /* renamed from: a */
    static <T, U, R> R m3373a(@NonNull BiFunction<T, U, R> biFunction, @NonNull T t, @NonNull U u) {
        try {
            return biFunction.apply(t, u);
        } catch (Throwable th) {
            throw ExceptionHelper.m3434e(th);
        }
    }

    @NonNull
    /* renamed from: b */
    static <T, R> R m3372b(@NonNull Function<T, R> function, @NonNull T t) {
        try {
            return function.apply(t);
        } catch (Throwable th) {
            throw ExceptionHelper.m3434e(th);
        }
    }

    @NonNull
    /* renamed from: c */
    static Scheduler m3371c(@NonNull Function<? super Callable<Scheduler>, ? extends Scheduler> function, Callable<Scheduler> callable) {
        Object b = m3372b(function, callable);
        ObjectHelper.m4363e(b, "Scheduler Callable result can't be null");
        return (Scheduler) b;
    }

    @NonNull
    /* renamed from: d */
    static Scheduler m3370d(@NonNull Callable<Scheduler> callable) {
        try {
            Scheduler call = callable.call();
            ObjectHelper.m4363e(call, "Scheduler Callable result can't be null");
            return call;
        } catch (Throwable th) {
            throw ExceptionHelper.m3434e(th);
        }
    }

    @NonNull
    /* renamed from: e */
    public static Scheduler m3369e(@NonNull Callable<Scheduler> callable) {
        ObjectHelper.m4363e(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Scheduler>, ? extends Scheduler> function = f19472c;
        return function == null ? m3370d(callable) : m3371c(function, callable);
    }

    @NonNull
    /* renamed from: f */
    public static Scheduler m3368f(@NonNull Callable<Scheduler> callable) {
        ObjectHelper.m4363e(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Scheduler>, ? extends Scheduler> function = f19474e;
        return function == null ? m3370d(callable) : m3371c(function, callable);
    }

    @NonNull
    /* renamed from: g */
    public static Scheduler m3367g(@NonNull Callable<Scheduler> callable) {
        ObjectHelper.m4363e(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Scheduler>, ? extends Scheduler> function = f19475f;
        return function == null ? m3370d(callable) : m3371c(function, callable);
    }

    @NonNull
    /* renamed from: h */
    public static Scheduler m3366h(@NonNull Callable<Scheduler> callable) {
        ObjectHelper.m4363e(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Scheduler>, ? extends Scheduler> function = f19473d;
        return function == null ? m3370d(callable) : m3371c(function, callable);
    }

    /* renamed from: i */
    static boolean m3365i(Throwable th) {
        return (th instanceof OnErrorNotImplementedException) || (th instanceof MissingBackpressureException) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof CompositeException);
    }

    /* renamed from: j */
    public static boolean m3364j() {
        return f19492w;
    }

    @NonNull
    /* renamed from: k */
    public static Completable m3363k(@NonNull Completable completable) {
        Function<? super Completable, ? extends Completable> function = f19485p;
        Completable completable2 = completable;
        if (function != null) {
            completable2 = (Completable) m3372b(function, completable);
        }
        return completable2;
    }

    @NonNull
    /* renamed from: l */
    public static <T> Flowable<T> m3362l(@NonNull Flowable<T> flowable) {
        Function<? super Flowable, ? extends Flowable> function = f19479j;
        Flowable<T> flowable2 = flowable;
        if (function != null) {
            flowable2 = (Flowable) m3372b(function, flowable);
        }
        return flowable2;
    }

    @NonNull
    /* renamed from: m */
    public static <T> Maybe<T> m3361m(@NonNull Maybe<T> maybe) {
        Function<? super Maybe, ? extends Maybe> function = f19483n;
        Maybe<T> maybe2 = maybe;
        if (function != null) {
            maybe2 = (Maybe) m3372b(function, maybe);
        }
        return maybe2;
    }

    @NonNull
    /* renamed from: n */
    public static <T> Observable<T> m3360n(@NonNull Observable<T> observable) {
        Function<? super Observable, ? extends Observable> function = f19481l;
        Observable<T> observable2 = observable;
        if (function != null) {
            observable2 = (Observable) m3372b(function, observable);
        }
        return observable2;
    }

    @NonNull
    /* renamed from: o */
    public static <T> Single<T> m3359o(@NonNull Single<T> single) {
        Function<? super Single, ? extends Single> function = f19484o;
        Single<T> single2 = single;
        if (function != null) {
            single2 = (Single) m3372b(function, single);
        }
        return single2;
    }

    @NonNull
    /* renamed from: p */
    public static <T> ConnectableFlowable<T> m3358p(@NonNull ConnectableFlowable<T> connectableFlowable) {
        Function<? super ConnectableFlowable, ? extends ConnectableFlowable> function = f19480k;
        ConnectableFlowable<T> connectableFlowable2 = connectableFlowable;
        if (function != null) {
            connectableFlowable2 = (ConnectableFlowable) m3372b(function, connectableFlowable);
        }
        return connectableFlowable2;
    }

    @NonNull
    /* renamed from: q */
    public static <T> ConnectableObservable<T> m3357q(@NonNull ConnectableObservable<T> connectableObservable) {
        Function<? super ConnectableObservable, ? extends ConnectableObservable> function = f19482m;
        ConnectableObservable<T> connectableObservable2 = connectableObservable;
        if (function != null) {
            connectableObservable2 = (ConnectableObservable) m3372b(function, connectableObservable);
        }
        return connectableObservable2;
    }

    /* renamed from: r */
    public static boolean m3356r() {
        BooleanSupplier booleanSupplier = f19491v;
        if (booleanSupplier == null) {
            return false;
        }
        try {
            return booleanSupplier.mo4309a();
        } catch (Throwable th) {
            throw ExceptionHelper.m3434e(th);
        }
    }

    @NonNull
    /* renamed from: s */
    public static Scheduler m3355s(@NonNull Scheduler scheduler) {
        Function<? super Scheduler, ? extends Scheduler> function = f19476g;
        return function == null ? scheduler : (Scheduler) m3372b(function, scheduler);
    }

    /* renamed from: t */
    public static void m3354t(@NonNull Throwable th) {
        Throwable th2;
        Consumer<? super Throwable> consumer = f19470a;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else {
            th2 = th;
            if (!m3365i(th)) {
                th2 = new UndeliverableException(th);
            }
        }
        if (consumer != null) {
            try {
                consumer.accept(th2);
                return;
            } catch (Throwable th3) {
                th3.printStackTrace();
                m3374C(th3);
            }
        }
        th2.printStackTrace();
        m3374C(th2);
    }

    @NonNull
    /* renamed from: u */
    public static Scheduler m3353u(@NonNull Scheduler scheduler) {
        Function<? super Scheduler, ? extends Scheduler> function = f19478i;
        return function == null ? scheduler : (Scheduler) m3372b(function, scheduler);
    }

    @NonNull
    /* renamed from: v */
    public static Runnable m3352v(@NonNull Runnable runnable) {
        ObjectHelper.m4363e(runnable, "run is null");
        Function<? super Runnable, ? extends Runnable> function = f19471b;
        return function == null ? runnable : (Runnable) m3372b(function, runnable);
    }

    @NonNull
    /* renamed from: w */
    public static Scheduler m3351w(@NonNull Scheduler scheduler) {
        Function<? super Scheduler, ? extends Scheduler> function = f19477h;
        return function == null ? scheduler : (Scheduler) m3372b(function, scheduler);
    }

    @NonNull
    /* renamed from: x */
    public static CompletableObserver m3350x(@NonNull Completable completable, @NonNull CompletableObserver completableObserver) {
        BiFunction<? super Completable, ? super CompletableObserver, ? extends CompletableObserver> biFunction = f19490u;
        return biFunction != null ? (CompletableObserver) m3373a(biFunction, completable, completableObserver) : completableObserver;
    }

    @NonNull
    /* renamed from: y */
    public static <T> MaybeObserver<? super T> m3349y(@NonNull Maybe<T> maybe, @NonNull MaybeObserver<? super T> maybeObserver) {
        BiFunction<? super Maybe, ? super MaybeObserver, ? extends MaybeObserver> biFunction = f19487r;
        return biFunction != null ? (MaybeObserver) m3373a(biFunction, maybe, maybeObserver) : maybeObserver;
    }

    @NonNull
    /* renamed from: z */
    public static <T> Observer<? super T> m3348z(@NonNull Observable<T> observable, @NonNull Observer<? super T> observer) {
        BiFunction<? super Observable, ? super Observer, ? extends Observer> biFunction = f19488s;
        return biFunction != null ? (Observer) m3373a(biFunction, observable, observer) : observer;
    }
}
