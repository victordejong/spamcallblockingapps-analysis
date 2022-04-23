package io.reactivex.rxkotlin;

import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\r\u0012\u0004\u0012\u0002H\u00020\u0001¢\u0006\u0002\b\u0003\"\b\b��\u0010\u0002*\u00020\u00042\u0011\u0010\u0005\u001a\r\u0012\u0004\u0012\u0002H\u00020\u0001¢\u0006\u0002\b\u0003H\n¢\u0006\u0002\b\u0006"}, m254d2 = {"<anonymous>", "Lio/reactivex/Single;", "T", "Lio/reactivex/annotations/NonNull;", "", "it", "apply"}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SingleKt$mergeAllSingles$2.class */
final class SingleKt$mergeAllSingles$2<T, R> implements Function<T, SingleSource<? extends R>> {
    public static final SingleKt$mergeAllSingles$2 INSTANCE = new SingleKt$mergeAllSingles$2();

    SingleKt$mergeAllSingles$2() {
    }

    @NotNull
    public final Single<T> apply(@NotNull Single<T> it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        return it;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Single) ((Single) obj));
    }
}
