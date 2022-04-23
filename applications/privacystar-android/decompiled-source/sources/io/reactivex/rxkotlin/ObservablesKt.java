package io.reactivex.rxkotlin;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��:\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aY\u0010��\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00020\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0007H\u0086\b\u001ao\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005\"\u0004\b\u0003\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072 \b\u0004\u0010\n\u001a\u001a\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\t0\u000bH\u0086\b\u001a\u0089\u0001\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005\"\u0004\b\u0003\u0010\f\"\u0004\b\u0004\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\f0\u00072&\b\u0004\u0010\n\u001a \u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\t0\u000eH\u0086\b\u001a£\u0001\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005\"\u0004\b\u0003\u0010\f\"\u0004\b\u0004\u0010\u000f\"\u0004\b\u0005\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\f0\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00072,\b\u0004\u0010\n\u001a&\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\t0\u0011H\u0086\b\u001aE\u0010��\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00130\u00120\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013\"\u0004\b\u0002\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0007H\u0086\b\u001aU\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013\"\u0004\b\u0002\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00072\u001a\b\u0004\u0010\n\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\t0\u0015H\u0086\b\u001a?\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00130\u00120\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0007H\u0086\b\u001aU\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013\"\u0004\b\u0002\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00072\u001a\b\u0004\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\t0\u0015H\u0086\b¨\u0006\u0018"}, m254d2 = {"withLatestFrom", "Lio/reactivex/Observable;", "Lkotlin/Triple;", "T", "T1", "T2", "o1", "Lio/reactivex/ObservableSource;", "o2", "R", "combiner", "Lkotlin/Function3;", "T3", "o3", "Lkotlin/Function4;", "T4", "o4", "Lkotlin/Function5;", "Lkotlin/Pair;", "U", "other", "Lkotlin/Function2;", "zipWith", "zipper", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/ObservablesKt.class */
public final class ObservablesKt {
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U, R> Observable<Pair<T, U>> withLatestFrom(@NotNull Observable<T> receiver, @NotNull ObservableSource<U> other) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Observable observable = (Observable<R>) receiver.withLatestFrom(other, ObservablesKt$withLatestFrom$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(observable, "withLatestFrom(other, Bi…on{ t, u -> Pair(t,u)  })");
        return observable;
    }

    @NotNull
    public static final <T, T1, T2> Observable<Triple<T, T1, T2>> withLatestFrom(@NotNull Observable<T> receiver, @NotNull ObservableSource<T1> o1, @NotNull ObservableSource<T2> o2) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Observable<Triple<T, T1, T2>> observable = (Observable<Triple<T, T1, T2>>) receiver.withLatestFrom(o1, o2, ObservablesKt$withLatestFrom$4.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(observable, "withLatestFrom(o1, o2, F…2 -> Triple(t, t1, t2) })");
        return observable;
    }

    @NotNull
    public static final <T, T1, T2, T3, T4, R> Observable<R> withLatestFrom(@NotNull Observable<T> receiver, @NotNull ObservableSource<T1> o1, @NotNull ObservableSource<T2> o2, @NotNull ObservableSource<T3> o3, @NotNull ObservableSource<T4> o4, @NotNull final Function5<? super T, ? super T1, ? super T2, ? super T3, ? super T4, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Intrinsics.checkParameterIsNotNull(o3, "o3");
        Intrinsics.checkParameterIsNotNull(o4, "o4");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Observable<R> withLatestFrom = receiver.withLatestFrom(o1, o2, o3, o4, (io.reactivex.functions.Function5) ((io.reactivex.functions.Function5<T, T1, T2, T3, T4, R>) new io.reactivex.functions.Function5<T, T1, T2, T3, T4, R>() { // from class: io.reactivex.rxkotlin.ObservablesKt$withLatestFrom$6
            @Override // io.reactivex.functions.Function5
            public final R apply(T t, T1 t1, T2 t2, T3 t3, T4 t4) {
                return (R) Function5.this.invoke(t, t1, t2, t3, t4);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(o1, o2, o…oke(t, t1, t2, t3, t4) })");
        return withLatestFrom;
    }

    @NotNull
    public static final <T, T1, T2, T3, R> Observable<R> withLatestFrom(@NotNull Observable<T> receiver, @NotNull ObservableSource<T1> o1, @NotNull ObservableSource<T2> o2, @NotNull ObservableSource<T3> o3, @NotNull final Function4<? super T, ? super T1, ? super T2, ? super T3, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Intrinsics.checkParameterIsNotNull(o3, "o3");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Observable<R> withLatestFrom = receiver.withLatestFrom(o1, o2, o3, (io.reactivex.functions.Function4) ((io.reactivex.functions.Function4<T, T1, T2, T3, R>) new io.reactivex.functions.Function4<T, T1, T2, T3, R>() { // from class: io.reactivex.rxkotlin.ObservablesKt$withLatestFrom$5
            @Override // io.reactivex.functions.Function4
            public final R apply(T t, T1 t1, T2 t2, T3 t3) {
                return (R) Function4.this.invoke(t, t1, t2, t3);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(o1, o2, o….invoke(t, t1, t2, t3) })");
        return withLatestFrom;
    }

    @NotNull
    public static final <T, T1, T2, R> Observable<R> withLatestFrom(@NotNull Observable<T> receiver, @NotNull ObservableSource<T1> o1, @NotNull ObservableSource<T2> o2, @NotNull final Function3<? super T, ? super T1, ? super T2, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Observable<R> withLatestFrom = receiver.withLatestFrom(o1, o2, (io.reactivex.functions.Function3) ((io.reactivex.functions.Function3<T, T1, T2, R>) new io.reactivex.functions.Function3<T, T1, T2, R>() { // from class: io.reactivex.rxkotlin.ObservablesKt$withLatestFrom$3
            @Override // io.reactivex.functions.Function3
            public final R apply(T t, T1 t1, T2 t2) {
                return (R) Function3.this.invoke(t, t1, t2);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(o1, o2, F…iner.invoke(t, t1, t2) })");
        return withLatestFrom;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U, R> Observable<R> withLatestFrom(@NotNull Observable<T> receiver, @NotNull ObservableSource<U> other, @NotNull final Function2<? super T, ? super U, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Observable<R> withLatestFrom = receiver.withLatestFrom(other, (BiFunction) ((BiFunction<T, U, R>) new BiFunction<T, U, R>() { // from class: io.reactivex.rxkotlin.ObservablesKt$withLatestFrom$1
            @Override // io.reactivex.functions.BiFunction
            public final R apply(T t, U u) {
                return (R) Function2.this.invoke(t, u);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(other, Bi…combiner.invoke(t, u)  })");
        return withLatestFrom;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U> Observable<Pair<T, U>> zipWith(@NotNull Observable<T> receiver, @NotNull ObservableSource<U> other) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Observable<Pair<T, U>> observable = (Observable<Pair<T, U>>) receiver.zipWith(other, ObservablesKt$zipWith$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(observable, "zipWith(other, BiFunction { t, u -> Pair(t,u) })");
        return observable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U, R> Observable<R> zipWith(@NotNull Observable<T> receiver, @NotNull ObservableSource<U> other, @NotNull final Function2<? super T, ? super U, ? extends R> zipper) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Intrinsics.checkParameterIsNotNull(zipper, "zipper");
        Observable<R> zipWith = receiver.zipWith(other, (BiFunction) ((BiFunction<T, U, R>) new BiFunction<T, U, R>() { // from class: io.reactivex.rxkotlin.ObservablesKt$zipWith$1
            @Override // io.reactivex.functions.BiFunction
            public final R apply(T t, U u) {
                return (R) Function2.this.invoke(t, u);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(zipWith, "zipWith(other, BiFunctio…-> zipper.invoke(t, u) })");
        return zipWith;
    }
}
