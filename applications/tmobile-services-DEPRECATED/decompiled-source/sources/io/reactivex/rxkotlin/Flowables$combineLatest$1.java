package io.reactivex.rxkotlin;

import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0005\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003\"\b\b\u0002\u0010\u0001*\u00020\u00032\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u0002H\u0004H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", "R", "T1", "", "T2", "t1", "t2", "apply", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/Flowables$combineLatest$1.class */
public final class Flowables$combineLatest$1<T1, T2, R> implements BiFunction<T1, T2, R> {

    /* renamed from: f */
    final /* synthetic */ Function2 f19597f;

    @Override // io.reactivex.functions.BiFunction
    @NotNull
    public final R apply(@NotNull T1 t1, @NotNull T2 t2) {
        Intrinsics.m1829f(t1, "t1");
        Intrinsics.m1829f(t2, "t2");
        return (R) this.f19597f.mo422o(t1, t2);
    }
}
