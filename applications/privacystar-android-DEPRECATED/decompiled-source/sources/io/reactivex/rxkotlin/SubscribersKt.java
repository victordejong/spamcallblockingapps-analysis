package io.reactivex.rxkotlin;

import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Maybe;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.disposables.Disposable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��@\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001aV\u0010\b\u001a\u00020\u0002\"\b\b��\u0010\t*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\t0\n2\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00020\u0004\u001aV\u0010\b\u001a\u00020\u0002\"\b\b��\u0010\t*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\t0\u000e2\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00020\u0004\u001a0\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\u001aV\u0010\u000f\u001a\u00020\u0010\"\b\b��\u0010\t*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\t0\n2\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00020\u0004\u001aV\u0010\u000f\u001a\u00020\u0010\"\b\b��\u0010\t*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\t0\u00122\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00020\u0004\u001aV\u0010\u000f\u001a\u00020\u0010\"\b\b��\u0010\t*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\t0\u000e2\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00020\u0004\u001aF\u0010\u000f\u001a\u00020\u0010\"\b\b��\u0010\t*\u00020\u0007*\b\u0012\u0004\u0012\u0002H\t0\u00142\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00020\u0004\"\u0014\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��\"\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, m254d2 = {"onCompleteStub", "Lkotlin/Function0;", "", "onErrorStub", "Lkotlin/Function1;", "", "onNextStub", "", "blockingSubscribeBy", "T", "Lio/reactivex/Flowable;", "onError", "onComplete", "onNext", "Lio/reactivex/Observable;", "subscribeBy", "Lio/reactivex/disposables/Disposable;", "Lio/reactivex/Completable;", "Lio/reactivex/Maybe;", "onSuccess", "Lio/reactivex/Single;", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SubscribersKt.class */
public final class SubscribersKt {
    private static final Function1<Object, Unit> onNextStub = SubscribersKt$onNextStub$1.INSTANCE;
    private static final Function1<Throwable, Unit> onErrorStub = SubscribersKt$onErrorStub$1.INSTANCE;
    private static final Function0<Unit> onCompleteStub = SubscribersKt$onCompleteStub$1.INSTANCE;

    public static final <T> void blockingSubscribeBy(@NotNull Flowable<T> receiver, @NotNull Function1<? super Throwable, Unit> onError, @NotNull Function0<Unit> onComplete, @NotNull Function1<? super T, Unit> onNext) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(onError, "onError");
        Intrinsics.checkParameterIsNotNull(onComplete, "onComplete");
        Intrinsics.checkParameterIsNotNull(onNext, "onNext");
        receiver.blockingSubscribe(new SubscribersKt$sam$Consumer$2b2a3ebc(onNext), new SubscribersKt$sam$Consumer$2b2a3ebc(onError), new SubscribersKt$sam$Action$fd62537c(onComplete));
    }

    public static final <T> void blockingSubscribeBy(@NotNull Observable<T> receiver, @NotNull Function1<? super Throwable, Unit> onError, @NotNull Function0<Unit> onComplete, @NotNull Function1<? super T, Unit> onNext) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(onError, "onError");
        Intrinsics.checkParameterIsNotNull(onComplete, "onComplete");
        Intrinsics.checkParameterIsNotNull(onNext, "onNext");
        receiver.blockingSubscribe(new SubscribersKt$sam$Consumer$2b2a3ebc(onNext), new SubscribersKt$sam$Consumer$2b2a3ebc(onError), new SubscribersKt$sam$Action$fd62537c(onComplete));
    }

    public static /* bridge */ /* synthetic */ void blockingSubscribeBy$default(Flowable flowable, Function1 function1, Function0 function0, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = onErrorStub;
        }
        if ((i & 2) != 0) {
            function0 = onCompleteStub;
        }
        if ((i & 4) != 0) {
            function12 = onNextStub;
        }
        blockingSubscribeBy(flowable, function1, function0, function12);
    }

    public static /* bridge */ /* synthetic */ void blockingSubscribeBy$default(Observable observable, Function1 function1, Function0 function0, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = onErrorStub;
        }
        if ((i & 2) != 0) {
            function0 = onCompleteStub;
        }
        if ((i & 4) != 0) {
            function12 = onNextStub;
        }
        blockingSubscribeBy(observable, function1, function0, function12);
    }

    @NotNull
    public static final Disposable subscribeBy(@NotNull Completable receiver, @NotNull Function1<? super Throwable, Unit> onError, @NotNull Function0<Unit> onComplete) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(onError, "onError");
        Intrinsics.checkParameterIsNotNull(onComplete, "onComplete");
        Disposable subscribe = receiver.subscribe(new SubscribersKt$sam$Action$fd62537c(onComplete), new SubscribersKt$sam$Consumer$2b2a3ebc(onError));
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "subscribe(onComplete, onError)");
        return subscribe;
    }

    @NotNull
    public static final <T> Disposable subscribeBy(@NotNull Flowable<T> receiver, @NotNull Function1<? super Throwable, Unit> onError, @NotNull Function0<Unit> onComplete, @NotNull Function1<? super T, Unit> onNext) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(onError, "onError");
        Intrinsics.checkParameterIsNotNull(onComplete, "onComplete");
        Intrinsics.checkParameterIsNotNull(onNext, "onNext");
        Disposable subscribe = receiver.subscribe(new SubscribersKt$sam$Consumer$2b2a3ebc(onNext), new SubscribersKt$sam$Consumer$2b2a3ebc(onError), new SubscribersKt$sam$Action$fd62537c(onComplete));
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "subscribe(onNext, onError, onComplete)");
        return subscribe;
    }

    @NotNull
    public static final <T> Disposable subscribeBy(@NotNull Maybe<T> receiver, @NotNull Function1<? super Throwable, Unit> onError, @NotNull Function0<Unit> onComplete, @NotNull Function1<? super T, Unit> onSuccess) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(onError, "onError");
        Intrinsics.checkParameterIsNotNull(onComplete, "onComplete");
        Intrinsics.checkParameterIsNotNull(onSuccess, "onSuccess");
        Disposable subscribe = receiver.subscribe(new SubscribersKt$sam$Consumer$2b2a3ebc(onSuccess), new SubscribersKt$sam$Consumer$2b2a3ebc(onError), new SubscribersKt$sam$Action$fd62537c(onComplete));
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "subscribe(onSuccess, onError, onComplete)");
        return subscribe;
    }

    @NotNull
    public static final <T> Disposable subscribeBy(@NotNull Observable<T> receiver, @NotNull Function1<? super Throwable, Unit> onError, @NotNull Function0<Unit> onComplete, @NotNull Function1<? super T, Unit> onNext) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(onError, "onError");
        Intrinsics.checkParameterIsNotNull(onComplete, "onComplete");
        Intrinsics.checkParameterIsNotNull(onNext, "onNext");
        Disposable subscribe = receiver.subscribe(new SubscribersKt$sam$Consumer$2b2a3ebc(onNext), new SubscribersKt$sam$Consumer$2b2a3ebc(onError), new SubscribersKt$sam$Action$fd62537c(onComplete));
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "subscribe(onNext, onError, onComplete)");
        return subscribe;
    }

    @NotNull
    public static final <T> Disposable subscribeBy(@NotNull Single<T> receiver, @NotNull Function1<? super Throwable, Unit> onError, @NotNull Function1<? super T, Unit> onSuccess) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(onError, "onError");
        Intrinsics.checkParameterIsNotNull(onSuccess, "onSuccess");
        Disposable subscribe = receiver.subscribe(new SubscribersKt$sam$Consumer$2b2a3ebc(onSuccess), new SubscribersKt$sam$Consumer$2b2a3ebc(onError));
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "subscribe(onSuccess, onError)");
        return subscribe;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Disposable subscribeBy$default(Completable completable, Function1 function1, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = onErrorStub;
        }
        if ((i & 2) != 0) {
            function0 = onCompleteStub;
        }
        return subscribeBy(completable, function1, function0);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Disposable subscribeBy$default(Flowable flowable, Function1 function1, Function0 function0, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = onErrorStub;
        }
        if ((i & 2) != 0) {
            function0 = onCompleteStub;
        }
        if ((i & 4) != 0) {
            function12 = onNextStub;
        }
        return subscribeBy(flowable, function1, function0, function12);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Disposable subscribeBy$default(Maybe maybe, Function1 function1, Function0 function0, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = onErrorStub;
        }
        if ((i & 2) != 0) {
            function0 = onCompleteStub;
        }
        if ((i & 4) != 0) {
            function12 = onNextStub;
        }
        return subscribeBy(maybe, function1, function0, function12);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Disposable subscribeBy$default(Observable observable, Function1 function1, Function0 function0, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = onErrorStub;
        }
        if ((i & 2) != 0) {
            function0 = onCompleteStub;
        }
        if ((i & 4) != 0) {
            function12 = onNextStub;
        }
        return subscribeBy(observable, function1, function0, function12);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Disposable subscribeBy$default(Single single, Function1 function1, Function1 function12, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = onErrorStub;
        }
        if ((i & 2) != 0) {
            function12 = onNextStub;
        }
        return subscribeBy(single, function1, function12);
    }
}
