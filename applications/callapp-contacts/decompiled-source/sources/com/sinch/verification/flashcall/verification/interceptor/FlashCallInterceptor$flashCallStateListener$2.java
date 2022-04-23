package com.sinch.verification.flashcall.verification.interceptor;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$flashCallStateListener$2.class */
final class FlashCallInterceptor$flashCallStateListener$2 extends r implements Function0<FlashCallStateListener> {
    final /* synthetic */ FlashCallInterceptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallInterceptor$flashCallStateListener$2(FlashCallInterceptor flashCallInterceptor) {
        super(0);
        this.this$0 = flashCallInterceptor;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FlashCallStateListener invoke() {
        return new FlashCallStateListener(this.this$0);
    }
}
