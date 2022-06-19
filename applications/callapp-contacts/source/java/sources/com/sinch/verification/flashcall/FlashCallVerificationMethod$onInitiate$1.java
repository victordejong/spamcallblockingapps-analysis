package com.sinch.verification.flashcall;

import com.sinch.verification.flashcall.initialization.FlashCallInitializationResponseData;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1.class */
final class FlashCallVerificationMethod$onInitiate$1 extends AbstractC18526r implements Function1<FlashCallInitializationResponseData, C20128v> {
    final /* synthetic */ FlashCallVerificationMethod this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallVerificationMethod$onInitiate$1(FlashCallVerificationMethod flashCallVerificationMethod) {
        super(1);
        this.this$0 = flashCallVerificationMethod;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(FlashCallInitializationResponseData flashCallInitializationResponseData) {
        invoke2(flashCallInitializationResponseData);
        return C20128v.f66529a;
    }

    /* renamed from: invoke */
    public final void invoke2(FlashCallInitializationResponseData it2) {
        C18524p.m3841c(it2, "it");
        this.this$0.initializeInterceptor(it2);
    }
}
