package io.reactivex.internal.operators.mixed;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeSource;
import io.reactivex.Observer;
import io.reactivex.SingleSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.maybe.MaybeToObservable;
import io.reactivex.internal.operators.single.SingleToObservable;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ScalarXMapZHelper.class */
final class ScalarXMapZHelper {
    private ScalarXMapZHelper() {
        throw new IllegalStateException("No instances!");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> boolean m3916a(Object obj, Function<? super T, ? extends CompletableSource> function, CompletableObserver completableObserver) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        Callable callable = (Callable) obj;
        CompletableSource completableSource = null;
        try {
            Object obj2 = (Object) callable.call();
            if (obj2 != 0) {
                Object apply = function.apply(obj2);
                ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                completableSource = (CompletableSource) apply;
            }
            if (completableSource == null) {
                EmptyDisposable.complete(completableObserver);
                return true;
            }
            completableSource.mo4514b(completableObserver);
            return true;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, completableObserver);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T, R> boolean m3915b(Object obj, Function<? super T, ? extends MaybeSource<? extends R>> function, Observer<? super R> observer) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        Callable callable = (Callable) obj;
        MaybeSource maybeSource = null;
        try {
            Object obj2 = (Object) callable.call();
            if (obj2 != 0) {
                Object apply = function.apply(obj2);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                maybeSource = (MaybeSource) apply;
            }
            if (maybeSource == null) {
                EmptyDisposable.complete(observer);
                return true;
            }
            maybeSource.mo4485b(MaybeToObservable.m3975d(observer));
            return true;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static <T, R> boolean m3914c(Object obj, Function<? super T, ? extends SingleSource<? extends R>> function, Observer<? super R> observer) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        Callable callable = (Callable) obj;
        SingleSource singleSource = null;
        try {
            Object obj2 = (Object) callable.call();
            if (obj2 != 0) {
                Object apply = function.apply(obj2);
                ObjectHelper.m4363e(apply, "The mapper returned a null SingleSource");
                singleSource = (SingleSource) apply;
            }
            if (singleSource == null) {
                EmptyDisposable.complete(observer);
                return true;
            }
            singleSource.mo4457b(SingleToObservable.m3578d(observer));
            return true;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
            return true;
        }
    }
}
