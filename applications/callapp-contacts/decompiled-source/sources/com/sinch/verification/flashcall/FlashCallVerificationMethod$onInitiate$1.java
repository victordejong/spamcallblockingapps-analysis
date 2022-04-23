package com.sinch.verification.flashcall;

import com.sinch.verification.flashcall.initialization.FlashCallInitializationResponseData;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1.class */
final class FlashCallVerificationMethod$onInitiate$1 extends r implements Function1<FlashCallInitializationResponseData, v> {
    final /* synthetic */ FlashCallVerificationMethod this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallVerificationMethod$onInitiate$1(FlashCallVerificationMethod flashCallVerificationMethod) {
        super(1);
        this.this$0 = flashCallVerificationMethod;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ v invoke(FlashCallInitializationResponseData flashCallInitializationResponseData) {
        invoke2(flashCallInitializationResponseData);
        return v.f38654a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(FlashCallInitializationResponseData it2) {
        p.c(it2, "it");
        this.this$0.initializeInterceptor(it2);
    }
}
