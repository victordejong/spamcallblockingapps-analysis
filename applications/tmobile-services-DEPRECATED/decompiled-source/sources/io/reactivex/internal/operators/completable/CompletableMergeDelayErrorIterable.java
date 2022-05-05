package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.completable.CompletableMergeDelayErrorArray;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMergeDelayErrorIterable.class */
public final class CompletableMergeDelayErrorIterable extends Completable {

    /* renamed from: f */
    final Iterable<? extends CompletableSource> f15337f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        completableObserver.onSubscribe(compositeDisposable);
        try {
            Iterator<? extends CompletableSource> it = this.f15337f.iterator();
            ObjectHelper.m4363e(it, "The source iterator returned is null");
            Iterator<? extends CompletableSource> it2 = it;
            AtomicInteger atomicInteger = new AtomicInteger(1);
            AtomicThrowable atomicThrowable = new AtomicThrowable();
            while (!compositeDisposable.isDisposed()) {
                try {
                    if (it2.hasNext()) {
                        if (!compositeDisposable.isDisposed()) {
                            try {
                                Object next = it2.next();
                                ObjectHelper.m4363e(next, "The iterator returned a null CompletableSource");
                                CompletableSource completableSource = (CompletableSource) next;
                                if (!compositeDisposable.isDisposed()) {
                                    atomicInteger.getAndIncrement();
                                    completableSource.mo4514b(new CompletableMergeDelayErrorArray.MergeInnerCompletableObserver(completableObserver, compositeDisposable, atomicThrowable, atomicInteger));
                                } else {
                                    return;
                                }
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                atomicThrowable.m3456a(th);
                            }
                        } else {
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    atomicThrowable.m3456a(th2);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    Throwable b = atomicThrowable.m3455b();
                    if (b == null) {
                        completableObserver.onComplete();
                        return;
                    } else {
                        completableObserver.onError(b);
                        return;
                    }
                } else {
                    return;
                }
            }
        } catch (Throwable th3) {
            Exceptions.m4428b(th3);
            completableObserver.onError(th3);
        }
    }
}
