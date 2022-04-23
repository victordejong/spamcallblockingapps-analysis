package io.reactivex.rxkotlin;

import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.functions.Action;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��(\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u0018\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0003\u001a\u0018\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0004\u001a\u0010\u0010\u0005\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00070\u0006\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\b\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\n\u0012\u0006\b\u0001\u0012\u00020\u00070\t\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\n\u0012\u0006\b\u0001\u0012\u00020\u00070\n¨\u0006\u000b"}, m254d2 = {"mergeAllCompletables", "Lio/reactivex/Completable;", "kotlin.jvm.PlatformType", "Lio/reactivex/Flowable;", "Lio/reactivex/Observable;", "toCompletable", "Lkotlin/Function0;", "", "Lio/reactivex/functions/Action;", "Ljava/util/concurrent/Callable;", "Ljava/util/concurrent/Future;", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/CompletableKt.class */
public final class CompletableKt {
    public static final Completable mergeAllCompletables(@NotNull Flowable<Completable> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return receiver.flatMapCompletable(CompletableKt$mergeAllCompletables$2.INSTANCE);
    }

    public static final Completable mergeAllCompletables(@NotNull Observable<Completable> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return receiver.flatMapCompletable(CompletableKt$mergeAllCompletables$1.INSTANCE);
    }

    @NotNull
    public static final Completable toCompletable(@NotNull Action receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Completable fromAction = Completable.fromAction(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromAction, "Completable.fromAction(this)");
        return fromAction;
    }

    @NotNull
    public static final Completable toCompletable(@NotNull Callable<? extends Object> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Completable fromCallable = Completable.fromCallable(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromCallable, "Completable.fromCallable(this)");
        return fromCallable;
    }

    @NotNull
    public static final Completable toCompletable(@NotNull Future<? extends Object> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Completable fromFuture = Completable.fromFuture(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromFuture, "Completable.fromFuture(this)");
        return fromFuture;
    }

    @NotNull
    public static final Completable toCompletable(@NotNull final Function0<? extends Object> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Completable fromCallable = Completable.fromCallable(new Callable() { // from class: io.reactivex.rxkotlin.CompletableKt$sam$Callable$d0cf4346
            /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ V call() {
                return Function0.this.invoke();
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(fromCallable, "Completable.fromCallable(this)");
        return fromCallable;
    }
}
