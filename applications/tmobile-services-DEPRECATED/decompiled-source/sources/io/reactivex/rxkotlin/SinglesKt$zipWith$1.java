package io.reactivex.rxkotlin;

import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0005\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003\"\b\b\u0002\u0010\u0001*\u00020\u00032\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u0002H\u0004H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", "R", "T", "", "U", "t", "u", "apply", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SinglesKt$zipWith$1.class */
public final class SinglesKt$zipWith$1<T1, T2, R> implements BiFunction<T, U, R> {

    /* renamed from: f */
    final /* synthetic */ Function2 f19662f;

    @Override // io.reactivex.functions.BiFunction
    @NotNull
    public final R apply(@NotNull T t, @NotNull U u) {
        Intrinsics.m1829f(t, "t");
        Intrinsics.m1829f(u, "u");
        return (R) this.f19662f.mo422o(t, u);
    }
}
