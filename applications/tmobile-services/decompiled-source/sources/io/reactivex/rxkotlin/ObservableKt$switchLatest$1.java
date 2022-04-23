package io.reactivex.rxkotlin;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "T", "", "it", "apply"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/ObservableKt$switchLatest$1.class */
final class ObservableKt$switchLatest$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    ObservableKt$switchLatest$1() {
    }

    @NotNull
    /* renamed from: a */
    public final Observable<T> m3268a(@NotNull Observable<T> it) {
        Intrinsics.m1829f(it, "it");
        return it;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        Observable<T> observable = (Observable) obj;
        m3268a(observable);
        return observable;
    }
}
