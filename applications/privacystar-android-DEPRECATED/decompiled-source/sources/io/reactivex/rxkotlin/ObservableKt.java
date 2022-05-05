package io.reactivex.rxkotlin;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.annotations.NonNull;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��«\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n��\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010$\n��\n\u0002\u0010\u001f\n\u0002\u0010\u001e\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\u000b\n\u0002\u0010\u0018\n\u0002\u0010\u0005\n\u0002\u0010\u0012\n\u0002\u0010\u0006\n\u0002\u0010\u0013\n\u0002\u0010\u0007\n\u0002\u0010\u0014\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0002\u0010\n\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u001f\u001a#\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0001H\u0086\b\u001aF\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00020\u00050\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001ad\u0010\u0004\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\b0\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003\"\b\b\u0002\u0010\t*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001H\u0007\u001a^\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\f2)\b\u0004\u0010\r\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00060\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\b\u001aD\u0010\u0013\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001aI\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\u001a\b\u0004\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00170\u000eH\u0086\b\u001a(\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00060\u00010\f\u001aD\u0010\u0019\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a(\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00060\u00010\f\u001a#\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0001H\u0086\b\u001aD\u0010\u001c\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a&\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a'\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u001f\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060 H\u0002¢\u0006\u0002\u0010!\u001aÅ\u0001\u0010\"\u001a\u0096\u0001\u0012D\u0012B\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H& \u0014* \u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H&\u0018\u00010'0$ \u0014*J\u0012D\u0012B\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H& \u0014* \u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H&\u0018\u00010'0$\u0018\u00010#0#\"\b\b��\u0010%*\u00020\u0003\"\b\b\u0001\u0010&*\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u0002H&0\u00050\u0001\u001a¶\u0002\u0010(\u001a\u0087\u0002\u0012|\u0012z\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H& \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H&\u0018\u00010*0) \u0014*<\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H& \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H&\u0018\u00010*0)\u0018\u00010'0$ \u0014*\u0082\u0001\u0012|\u0012z\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H& \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H&\u0018\u00010*0) \u0014*<\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H%H%\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H& \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H&H&\u0018\u00010*0)\u0018\u00010'0$\u0018\u00010#0#\"\b\b��\u0010%*\u00020\u0003\"\b\b\u0001\u0010&*\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u0002H&0\u00050\u0001\u001a%\u0010+\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060,¢\u0006\u0002\u0010-\u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u00020.0\u0001*\u00020/\u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u0002000\u0001*\u000201\u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u0002020\u0001*\u000203\u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u0002040\u0001*\u000205\u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u0002060\u0001*\u000207\u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u0002080\u0001*\u000209\u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u00020:0\u0001*\u00020;\u001a \u0010+\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\f\u001a \u0010+\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060 \u001a\u0010\u0010+\u001a\b\u0012\u0004\u0012\u0002060\u0001*\u00020<\u001a \u0010+\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u0017\u001a^\u0010=\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\f2)\b\u0004\u0010>\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00060\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\b¨\u0006?"}, m254d2 = {"cast", "Lio/reactivex/Observable;", "R", "", "combineLatest", "Lkotlin/Pair;", "T", "observable", "Lkotlin/Triple;", "U", "observable1", "observable2", "", "combineFunction", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "args", "concatAll", "kotlin.jvm.PlatformType", "flatMapSequence", "body", "Lkotlin/sequences/Sequence;", "merge", "mergeAll", "mergeDelayError", "ofType", "switchLatest", "switchOnNext", "toIterable", "io/reactivex/rxkotlin/ObservableKt$toIterable$1", "", "(Ljava/util/Iterator;)Lio/reactivex/rxkotlin/ObservableKt$toIterable$1;", "toMap", "Lio/reactivex/Single;", "", "A", "B", "", "toMultimap", "", "", "toObservable", "", "([Ljava/lang/Object;)Lio/reactivex/Observable;", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "Lkotlin/ranges/IntProgression;", "zip", "zipFunction", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/ObservableKt.class */
public final class ObservableKt {
    private static final <R> Observable<R> cast(@NotNull Observable<?> observable) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Observable<R> observable2 = (Observable<R>) observable.cast(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(observable2, "cast(R::class.java)");
        return observable2;
    }

    @Deprecated(message = "Use `Observables.combineLatest() factory")
    @NotNull
    public static final <T, R> Observable<Pair<T, R>> combineLatest(@NotNull Observable<T> receiver, @NotNull Observable<R> observable) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "observable");
        Observable<T> observable2 = receiver;
        Observable<R> observable3 = observable;
        final ObservableKt$combineLatest$2 observableKt$combineLatest$2 = ObservableKt$combineLatest$2.INSTANCE;
        Observable<Pair<T, R>> combineLatest = Observable.combineLatest(observable2, observable3, observableKt$combineLatest$2 == null ? null : new BiFunction() { // from class: io.reactivex.rxkotlin.ObservableKt$sam$BiFunction$76a140ed
            /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
            @Override // io.reactivex.functions.BiFunction
            @NonNull
            public final /* synthetic */ R apply(@NonNull T1 t1, @NonNull T2 t2) {
                return Function2.this.invoke(t1, t2);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Observable.combineLatest…able, BiFunction(::Pair))");
        return combineLatest;
    }

    @Deprecated(message = "Use `Observables.combineLatest() factory")
    @NotNull
    public static final <T, R, U> Observable<Triple<T, R, U>> combineLatest(@NotNull Observable<T> receiver, @NotNull Observable<R> observable1, @NotNull Observable<U> observable2) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable1, "observable1");
        Intrinsics.checkParameterIsNotNull(observable2, "observable2");
        Observable<T> observable = receiver;
        Observable<R> observable3 = observable1;
        Observable<U> observable4 = observable2;
        final ObservableKt$combineLatest$3 observableKt$combineLatest$3 = ObservableKt$combineLatest$3.INSTANCE;
        Observable<Triple<T, R, U>> combineLatest = Observable.combineLatest(observable, observable3, observable4, observableKt$combineLatest$3 == null ? null : new Function3() { // from class: io.reactivex.rxkotlin.ObservableKt$sam$Function3$5d5171b5
            /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
            @Override // io.reactivex.functions.Function3
            @NonNull
            public final /* synthetic */ R apply(@NonNull T1 t1, @NonNull T2 t2, @NonNull T3 t3) {
                return kotlin.jvm.functions.Function3.this.invoke(t1, t2, t3);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Observable.combineLatest…le2, Function3(::Triple))");
        return combineLatest;
    }

    @NotNull
    public static final <T, R> Observable<R> combineLatest(@NotNull Iterable<? extends Observable<T>> receiver, @NotNull final Function1<? super List<? extends T>, ? extends R> combineFunction) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(combineFunction, "combineFunction");
        Observable<R> combineLatest = Observable.combineLatest(receiver, new Function<Object[], R>() { // from class: io.reactivex.rxkotlin.ObservableKt$combineLatest$1
            @NotNull
            public final R apply(@NotNull Object[] it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                Function1 function1 = Function1.this;
                List asList = ArraysKt.asList(it);
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asList, 10));
                for (T t : asList) {
                    if (t == null) {
                        throw new TypeCastException("null cannot be cast to non-null type T");
                    }
                    arrayList.add(t);
                }
                return (R) function1.invoke(arrayList);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Observable.combineLatest…List().map { it as T }) }");
        return combineLatest;
    }

    public static final <T> Observable<T> concatAll(@NotNull Observable<Observable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Observable<T>) receiver.concatMap(ObservableKt$concatAll$1.INSTANCE);
    }

    @NotNull
    public static final <T, R> Observable<R> flatMapSequence(@NotNull Observable<T> receiver, @NotNull final Function1<? super T, ? extends Sequence<? extends R>> body) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(body, "body");
        Observable<R> flatMap = receiver.flatMap((Function) ((Function<T, ObservableSource<? extends R>>) new Function<T, ObservableSource<? extends R>>() { // from class: io.reactivex.rxkotlin.ObservableKt$flatMapSequence$1
            @Override // io.reactivex.functions.Function
            @NotNull
            public final Observable<R> apply(@NotNull T it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                Function1 function1 = Function1.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                return ObservableKt.toObservable((Sequence) function1.invoke(it));
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "flatMap { body(it).toObservable() }");
        return flatMap;
    }

    @NotNull
    public static final <T> Observable<T> merge(@NotNull Iterable<? extends Observable<? extends T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<T> merge = Observable.merge(toObservable(receiver));
        Intrinsics.checkExpressionValueIsNotNull(merge, "Observable.merge(this.toObservable())");
        return merge;
    }

    public static final <T> Observable<T> mergeAll(@NotNull Observable<Observable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Observable<T>) receiver.flatMap(ObservableKt$mergeAll$1.INSTANCE);
    }

    @NotNull
    public static final <T> Observable<T> mergeDelayError(@NotNull Iterable<? extends Observable<? extends T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<T> mergeDelayError = Observable.mergeDelayError(toObservable(receiver));
        Intrinsics.checkExpressionValueIsNotNull(mergeDelayError, "Observable.mergeDelayError(this.toObservable())");
        return mergeDelayError;
    }

    private static final <R> Observable<R> ofType(@NotNull Observable<?> observable) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Observable<R> observable2 = (Observable<R>) observable.ofType(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(observable2, "ofType(R::class.java)");
        return observable2;
    }

    public static final <T> Observable<T> switchLatest(@NotNull Observable<Observable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Observable<T>) receiver.switchMap(ObservableKt$switchLatest$1.INSTANCE);
    }

    @NotNull
    public static final <T> Observable<T> switchOnNext(@NotNull Observable<Observable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<T> switchOnNext = Observable.switchOnNext(receiver);
        Intrinsics.checkExpressionValueIsNotNull(switchOnNext, "Observable.switchOnNext(this)");
        return switchOnNext;
    }

    private static final <T> ObservableKt$toIterable$1 toIterable(@NotNull Iterator<? extends T> it) {
        return new ObservableKt$toIterable$1(it);
    }

    public static final <A, B> Single<Map<A, B>> toMap(@NotNull Observable<Pair<A, B>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Single<Map<A, B>>) receiver.toMap(ObservableKt$toMap$1.INSTANCE, ObservableKt$toMap$2.INSTANCE);
    }

    public static final <A, B> Single<Map<A, Collection<B>>> toMultimap(@NotNull Observable<Pair<A, B>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Single<Map<A, Collection<B>>>) receiver.toMultimap(ObservableKt$toMultimap$1.INSTANCE, ObservableKt$toMultimap$2.INSTANCE);
    }

    @NotNull
    public static final <T> Observable<T> toObservable(@NotNull Iterable<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<T> fromIterable = Observable.fromIterable(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromIterable, "Observable.fromIterable(this)");
        return fromIterable;
    }

    @NotNull
    public static final <T> Observable<T> toObservable(@NotNull Iterator<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(toIterable(receiver));
    }

    @NotNull
    public static final Observable<Integer> toObservable(@NotNull IntProgression receiver) {
        Observable<Integer> observable;
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        if (receiver.getStep() != 1 || receiver.getLast() - receiver.getFirst() >= Integer.MAX_VALUE) {
            observable = Observable.fromIterable(receiver);
            Intrinsics.checkExpressionValueIsNotNull(observable, "Observable.fromIterable(this)");
        } else {
            observable = Observable.range(receiver.getFirst(), Math.max(0, (receiver.getLast() - receiver.getFirst()) + 1));
            Intrinsics.checkExpressionValueIsNotNull(observable, "Observable.range(first, …max(0, last - first + 1))");
        }
        return observable;
    }

    @NotNull
    public static final <T> Observable<T> toObservable(@NotNull Sequence<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(SequencesKt.asIterable(receiver));
    }

    @NotNull
    public static final Observable<Byte> toObservable(@NotNull byte[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Observable<Double> toObservable(@NotNull double[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Observable<Float> toObservable(@NotNull float[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Observable<Integer> toObservable(@NotNull int[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Observable<Long> toObservable(@NotNull long[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final <T> Observable<T> toObservable(@NotNull T[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<T> fromArray = Observable.fromArray(Arrays.copyOf(receiver, receiver.length));
        Intrinsics.checkExpressionValueIsNotNull(fromArray, "Observable.fromArray(*this)");
        return fromArray;
    }

    @NotNull
    public static final Observable<Short> toObservable(@NotNull short[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Observable<Boolean> toObservable(@NotNull boolean[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toObservable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final <T, R> Observable<R> zip(@NotNull Iterable<? extends Observable<T>> receiver, @NotNull final Function1<? super List<? extends T>, ? extends R> zipFunction) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(zipFunction, "zipFunction");
        Observable<R> zip = Observable.zip(receiver, new Function<Object[], R>() { // from class: io.reactivex.rxkotlin.ObservableKt$zip$1
            @NotNull
            public final R apply(@NotNull Object[] it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                Function1 function1 = Function1.this;
                List asList = ArraysKt.asList(it);
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asList, 10));
                for (T t : asList) {
                    if (t == null) {
                        throw new TypeCastException("null cannot be cast to non-null type T");
                    }
                    arrayList.add(t);
                }
                return (R) function1.invoke(arrayList);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(zip, "Observable.zip(this) { z…List().map { it as T }) }");
        return zip;
    }
}
