package io.reactivex.rxkotlin;

import io.reactivex.Flowable;
import io.reactivex.Maybe;
import io.reactivex.MaybeEmitter;
import io.reactivex.MaybeOnSubscribe;
import io.reactivex.Observable;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��.\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a%\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\b\u001aD\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00050\u0005\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0005\u001aD\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\b0\b\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\b\u001a%\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\b\u001a \u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u000b\u001a!\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u0004\u0018\u0001H\u0006¢\u0006\u0002\u0010\f\u001a \u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\r\u001a \u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u000e¨\u0006\u000f"}, m254d2 = {"cast", "Lio/reactivex/Maybe;", "R", "", "mergeAllMaybes", "Lio/reactivex/Flowable;", "T", "kotlin.jvm.PlatformType", "Lio/reactivex/Observable;", "ofType", "toMaybe", "Lkotlin/Function0;", "(Ljava/lang/Object;)Lio/reactivex/Maybe;", "Ljava/util/concurrent/Callable;", "Ljava/util/concurrent/Future;", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/MaybeKt.class */
public final class MaybeKt {
    private static final <R> Maybe<R> cast(@NotNull Maybe<Object> maybe) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Maybe<R> maybe2 = (Maybe<R>) maybe.cast(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "cast(R::class.java)");
        return maybe2;
    }

    public static final <T> Flowable<T> mergeAllMaybes(@NotNull Flowable<Maybe<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Flowable<T>) receiver.flatMapMaybe(MaybeKt$mergeAllMaybes$2.INSTANCE);
    }

    public static final <T> Observable<T> mergeAllMaybes(@NotNull Observable<Maybe<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Observable<T>) receiver.flatMapMaybe(MaybeKt$mergeAllMaybes$1.INSTANCE);
    }

    private static final <R> Maybe<R> ofType(@NotNull Maybe<Object> maybe) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Maybe<R> maybe2 = (Maybe<R>) maybe.ofType(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "ofType(R::class.java)");
        return maybe2;
    }

    @NotNull
    public static final <T> Maybe<T> toMaybe(@Nullable final T t) {
        Maybe<T> create = Maybe.create(new MaybeOnSubscribe<T>() { // from class: io.reactivex.rxkotlin.MaybeKt$toMaybe$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.reactivex.MaybeOnSubscribe
            public final void subscribe(@NotNull MaybeEmitter<T> s) {
                Intrinsics.checkParameterIsNotNull(s, "s");
                if (t != null) {
                    s.onSuccess(t);
                }
                s.onComplete();
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(create, "Maybe.create { s -> if (…s(this); s.onComplete() }");
        return create;
    }

    @NotNull
    public static final <T> Maybe<T> toMaybe(@NotNull Callable<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Maybe<T> fromCallable = Maybe.fromCallable(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromCallable, "Maybe.fromCallable(this)");
        return fromCallable;
    }

    @NotNull
    public static final <T> Maybe<T> toMaybe(@NotNull Future<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Maybe<T> fromFuture = Maybe.fromFuture(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromFuture, "Maybe.fromFuture(this)");
        return fromFuture;
    }

    @NotNull
    public static final <T> Maybe<T> toMaybe(@NotNull final Function0<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Maybe<T> fromCallable = Maybe.fromCallable(new Callable() { // from class: io.reactivex.rxkotlin.MaybeKt$sam$Callable$477278a8
            /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ V call() {
                return Function0.this.invoke();
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(fromCallable, "Maybe.fromCallable(this)");
        return fromCallable;
    }
}
