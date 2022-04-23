package io.reactivex.rxkotlin;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0003*\u00020\u0004\"\b\b\u0001\u0010\u0002*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "R", "T", "", "it", "apply", "(Ljava/lang/Object;)Lio/reactivex/Observable;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/ObservableKt$flatMapSequence$1.class */
public final class ObservableKt$flatMapSequence$1<T, R> implements Function<T, ObservableSource<? extends R>> {

    /* renamed from: f */
    final /* synthetic */ Function1 f19629f;

    @NotNull
    /* renamed from: a */
    public final Observable<R> apply(@NotNull T it) {
        Intrinsics.m1829f(it, "it");
        return ObservableKt.m3275b((Sequence) this.f19629f.invoke(it));
    }
}
