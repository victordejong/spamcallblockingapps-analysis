package io.reactivex.rxkotlin;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.Single;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��,\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a%\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\b\u001aD\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00050\u0005\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0005\u001aD\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\b0\b\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\b\u001a \u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\n\u001a\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u0002H\u0006¢\u0006\u0002\u0010\u000b\u001a \u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\f\u001a \u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\r¨\u0006\u000e"}, m254d2 = {"cast", "Lio/reactivex/Single;", "R", "", "mergeAllSingles", "Lio/reactivex/Flowable;", "T", "kotlin.jvm.PlatformType", "Lio/reactivex/Observable;", "toSingle", "Lkotlin/Function0;", "(Ljava/lang/Object;)Lio/reactivex/Single;", "Ljava/util/concurrent/Callable;", "Ljava/util/concurrent/Future;", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SingleKt.class */
public final class SingleKt {
    private static final <R> Single<R> cast(@NotNull Single<Object> single) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Single<R> single2 = (Single<R>) single.cast(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(single2, "cast(R::class.java)");
        return single2;
    }

    public static final <T> Flowable<T> mergeAllSingles(@NotNull Flowable<Single<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Flowable<T>) receiver.flatMapSingle(SingleKt$mergeAllSingles$2.INSTANCE);
    }

    public static final <T> Observable<T> mergeAllSingles(@NotNull Observable<Single<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Observable<T>) receiver.flatMapSingle(SingleKt$mergeAllSingles$1.INSTANCE);
    }

    @NotNull
    public static final <T> Single<T> toSingle(@NotNull T receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Single<T> just = Single.just(receiver);
        Intrinsics.checkExpressionValueIsNotNull(just, "Single.just(this)");
        return just;
    }

    @NotNull
    public static final <T> Single<T> toSingle(@NotNull Callable<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Single<T> fromCallable = Single.fromCallable(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromCallable, "Single.fromCallable(this)");
        return fromCallable;
    }

    @NotNull
    public static final <T> Single<T> toSingle(@NotNull Future<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Single<T> fromFuture = Single.fromFuture(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromFuture, "Single.fromFuture(this)");
        return fromFuture;
    }

    @NotNull
    public static final <T> Single<T> toSingle(@NotNull final Function0<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Single<T> fromCallable = Single.fromCallable(new Callable() { // from class: io.reactivex.rxkotlin.SingleKt$sam$Callable$7c4459b8
            /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ V call() {
                return Function0.this.invoke();
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(fromCallable, "Single.fromCallable(this)");
        return fromCallable;
    }
}
