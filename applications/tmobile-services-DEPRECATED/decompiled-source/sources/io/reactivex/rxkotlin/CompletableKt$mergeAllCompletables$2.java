package io.reactivex.rxkotlin;

import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lio/reactivex/Completable;", "it", "apply"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/CompletableKt$mergeAllCompletables$2.class */
final class CompletableKt$mergeAllCompletables$2<T, R> implements Function<Completable, CompletableSource> {
    CompletableKt$mergeAllCompletables$2() {
    }

    @NotNull
    /* renamed from: a */
    public final Completable m3303a(@NotNull Completable it) {
        Intrinsics.m1829f(it, "it");
        return it;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ CompletableSource apply(Completable completable) {
        Completable completable2 = completable;
        m3303a(completable2);
        return completable2;
    }
}
