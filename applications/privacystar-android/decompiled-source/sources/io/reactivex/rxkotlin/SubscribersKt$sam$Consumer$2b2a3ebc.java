package io.reactivex.rxkotlin;

import io.reactivex.annotations.NonNull;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 1}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SubscribersKt$sam$Consumer$2b2a3ebc.class */
final class SubscribersKt$sam$Consumer$2b2a3ebc implements Consumer {
    private final /* synthetic */ Function1 function;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubscribersKt$sam$Consumer$2b2a3ebc(Function1 function1) {
        this.function = function1;
    }

    @Override // io.reactivex.functions.Consumer
    public final /* synthetic */ void accept(@NonNull T t) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(t), "invoke(...)");
    }
}
