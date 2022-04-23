package io.reactivex;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.CallbackCompletableObserver;
import io.reactivex.internal.operators.completable.CompletableTimer;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:io/reactivex/Completable.class */
public abstract class Completable implements CompletableSource {
    @SchedulerSupport
    @CheckReturnValue
    /* renamed from: e */
    public static Completable m4519e(long j, TimeUnit timeUnit) {
        return m4518f(j, timeUnit, Schedulers.m3240a());
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: f */
    public static Completable m4518f(long j, TimeUnit timeUnit, Scheduler scheduler) {
        ObjectHelper.m4363e(timeUnit, "unit is null");
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return RxJavaPlugins.m3363k(new CompletableTimer(j, timeUnit, scheduler));
    }

    /* renamed from: g */
    private static NullPointerException m4517g(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    @Override // io.reactivex.CompletableSource
    @SchedulerSupport
    /* renamed from: b */
    public final void mo4514b(CompletableObserver completableObserver) {
        ObjectHelper.m4363e(completableObserver, "observer is null");
        try {
            CompletableObserver x = RxJavaPlugins.m3350x(this, completableObserver);
            ObjectHelper.m4363e(x, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            mo3214d(x);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
            throw m4517g(th);
        }
    }

    @SchedulerSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: c */
    public final Disposable m4520c(Action action) {
        ObjectHelper.m4363e(action, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(action);
        mo4514b(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    /* renamed from: d */
    protected abstract void mo3214d(CompletableObserver completableObserver);
}
