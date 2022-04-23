package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.single.SingleMap;
import io.reactivex.internal.operators.single.SingleZipArray;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipIterable.class */
public final class SingleZipIterable<T, R> extends Single<R> {

    /* renamed from: f */
    final Iterable<? extends SingleSource<? extends T>> f19202f;

    /* renamed from: g */
    final Function<? super Object[], ? extends R> f19203g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipIterable$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            R r = (R) SingleZipIterable.this.f19203g.apply(new Object[]{t});
            ObjectHelper.m4363e(r, "The zipper returned a null value");
            return r;
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        SingleSource[] singleSourceArr = new SingleSource[8];
        try {
            Iterator<? extends SingleSource<? extends T>> it = this.f19202f.iterator();
            int i = 0;
            while (it.hasNext()) {
                SingleSource singleSource = (SingleSource) it.next();
                if (singleSource == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), singleObserver);
                    return;
                }
                SingleSource[] singleSourceArr2 = singleSourceArr;
                if (i == singleSourceArr.length) {
                    singleSourceArr2 = (SingleSource[]) Arrays.copyOf(singleSourceArr, (i >> 2) + i);
                }
                singleSourceArr2[i] = singleSource;
                i++;
                singleSourceArr = singleSourceArr2;
            }
            if (i == 0) {
                EmptyDisposable.error(new NoSuchElementException(), singleObserver);
            } else if (i == 1) {
                singleSourceArr[0].mo4457b(new SingleMap.MapSingleObserver(singleObserver, new SingletonArrayFunc()));
            } else {
                SingleZipArray.ZipCoordinator zipCoordinator = new SingleZipArray.ZipCoordinator(singleObserver, i, this.f19203g);
                singleObserver.onSubscribe(zipCoordinator);
                for (int i2 = 0; i2 < i && !zipCoordinator.isDisposed(); i2++) {
                    singleSourceArr[i2].mo4457b(zipCoordinator.f19198h[i2]);
                }
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
