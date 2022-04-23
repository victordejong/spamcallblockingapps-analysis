package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.maybe.MaybeMap;
import io.reactivex.internal.operators.maybe.MaybeZipArray;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipIterable.class */
public final class MaybeZipIterable<T, R> extends Maybe<R> {

    /* renamed from: f */
    final Iterable<? extends MaybeSource<? extends T>> f17279f;

    /* renamed from: g */
    final Function<? super Object[], ? extends R> f17280g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            R r = (R) MaybeZipIterable.this.f17280g.apply(new Object[]{t});
            ObjectHelper.m4363e(r, "The zipper returned a null value");
            return r;
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        MaybeSource[] maybeSourceArr = new MaybeSource[8];
        try {
            Iterator<? extends MaybeSource<? extends T>> it = this.f17279f.iterator();
            int i = 0;
            while (it.hasNext()) {
                MaybeSource maybeSource = (MaybeSource) it.next();
                if (maybeSource == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), maybeObserver);
                    return;
                }
                MaybeSource[] maybeSourceArr2 = maybeSourceArr;
                if (i == maybeSourceArr.length) {
                    maybeSourceArr2 = (MaybeSource[]) Arrays.copyOf(maybeSourceArr, (i >> 2) + i);
                }
                maybeSourceArr2[i] = maybeSource;
                i++;
                maybeSourceArr = maybeSourceArr2;
            }
            if (i == 0) {
                EmptyDisposable.complete(maybeObserver);
            } else if (i == 1) {
                maybeSourceArr[0].mo4485b(new MaybeMap.MapMaybeObserver(maybeObserver, new SingletonArrayFunc()));
            } else {
                MaybeZipArray.ZipCoordinator zipCoordinator = new MaybeZipArray.ZipCoordinator(maybeObserver, i, this.f17280g);
                maybeObserver.onSubscribe(zipCoordinator);
                for (int i2 = 0; i2 < i && !zipCoordinator.isDisposed(); i2++) {
                    maybeSourceArr[i2].mo4485b(zipCoordinator.f17275h[i2]);
                }
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, maybeObserver);
        }
    }
}
