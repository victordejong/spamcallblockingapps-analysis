package com.sinch.verification.flashcall.verification.interceptor;

import com.sinch.verification.flashcall.verification.callhistory.SinchCallHistoryChangeObserver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$callHistoryContentObserver$2.class */
public final class FlashCallInterceptor$callHistoryContentObserver$2 extends AbstractC18526r implements Function0<SinchCallHistoryChangeObserver> {
    final /* synthetic */ FlashCallInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashCallInterceptor$callHistoryContentObserver$2(FlashCallInterceptor flashCallInterceptor) {
        super(0);
        this.this$0 = flashCallInterceptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SinchCallHistoryChangeObserver invoke() {
        return new SinchCallHistoryChangeObserver(this.this$0);
    }
}
