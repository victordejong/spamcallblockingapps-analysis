package io.reactivex;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BlockingMultiObserver;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/Maybe.class */
public abstract class Maybe<T> implements MaybeSource<T> {
    @Override // io.reactivex.MaybeSource
    @SchedulerSupport
    /* renamed from: b */
    public final void mo4485b(MaybeObserver<? super T> maybeObserver) {
        ObjectHelper.m4363e(maybeObserver, "observer is null");
        MaybeObserver<? super T> y = RxJavaPlugins.m3349y(this, maybeObserver);
        ObjectHelper.m4363e(y, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            mo3211d(y);
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
    public final T m4488c() {
        BlockingMultiObserver blockingMultiObserver = new BlockingMultiObserver();
        mo4485b(blockingMultiObserver);
        return (T) blockingMultiObserver.m4354a();
    }

    /* renamed from: d */
    protected abstract void mo3211d(MaybeObserver<? super T> maybeObserver);
}
