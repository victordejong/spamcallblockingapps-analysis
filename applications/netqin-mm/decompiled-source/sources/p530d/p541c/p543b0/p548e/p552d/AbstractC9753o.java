package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableReplay$InnerDisposable;
/* renamed from: d.c.b0.e.d.o */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/o.class */
public interface AbstractC9753o<T> {
    void complete();

    void error(Throwable th);

    void next(T t);

    void replay(ObservableReplay$InnerDisposable<T> observableReplay$InnerDisposable);
}
