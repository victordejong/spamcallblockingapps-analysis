package com.sinch.verification.core.verification;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationApiCallback$onError$1.class */
final class VerificationApiCallback$onError$1 extends r implements Function0<v> {
    final /* synthetic */ Throwable $t;
    final /* synthetic */ VerificationApiCallback this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerificationApiCallback$onError$1(VerificationApiCallback verificationApiCallback, Throwable th) {
        super(0);
        this.this$0 = verificationApiCallback;
        this.$t = th;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.handleError(this.$t);
    }
}
