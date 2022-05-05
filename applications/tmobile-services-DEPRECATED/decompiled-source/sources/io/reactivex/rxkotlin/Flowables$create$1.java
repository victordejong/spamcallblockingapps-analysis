package io.reactivex.rxkotlin;

import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0006*\u0004\u0018\u0001H\u0002H\u00020\u0005H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "T", "", "it", "Lio/reactivex/FlowableEmitter;", "kotlin.jvm.PlatformType", "subscribe"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/Flowables$create$1.class */
public final class Flowables$create$1<T> implements FlowableOnSubscribe<T> {

    /* renamed from: a */
    final /* synthetic */ Function1 f19605a;

    @Override // io.reactivex.FlowableOnSubscribe
    /* renamed from: a */
    public final void mo2507a(@NotNull FlowableEmitter<T> it) {
        Intrinsics.m1829f(it, "it");
        this.f19605a.invoke(it);
    }
}
