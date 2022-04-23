package io.reactivex.rxkotlin;

import io.reactivex.functions.Action;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 1}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SubscribersKt$sam$Action$fd62537c.class */
final class SubscribersKt$sam$Action$fd62537c implements Action {
    private final /* synthetic */ Function0 function;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubscribersKt$sam$Action$fd62537c(Function0 function0) {
        this.function = function0;
    }

    @Override // io.reactivex.functions.Action
    public final /* synthetic */ void run() {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(), "invoke(...)");
    }
}
