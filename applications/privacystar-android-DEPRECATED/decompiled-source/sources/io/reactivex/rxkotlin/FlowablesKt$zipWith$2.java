package io.reactivex.rxkotlin;

import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010��\u001a\u0018\u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0003\u0012\t\u0012\u0007H\u0004¢\u0006\u0002\b\u00030\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u00042\u000b\u0010\u0005\u001a\u0007H\u0002¢\u0006\u0002\b\u00032\u000b\u0010\u0006\u001a\u0007H\u0004¢\u0006\u0002\b\u0003H\n¢\u0006\u0004\b\u0007\u0010\b"}, m254d2 = {"<anonymous>", "Lkotlin/Pair;", "T", "Lio/reactivex/annotations/NonNull;", "U", "t", "u", "apply", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;"}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/FlowablesKt$zipWith$2.class */
public final class FlowablesKt$zipWith$2<T1, T2, R> implements BiFunction<T, U, Pair<? extends T, ? extends U>> {
    public static final FlowablesKt$zipWith$2 INSTANCE = new FlowablesKt$zipWith$2();

    @Override // io.reactivex.functions.BiFunction
    @NotNull
    public final Pair<T, U> apply(T t, U u) {
        return new Pair<>(t, u);
    }
}
