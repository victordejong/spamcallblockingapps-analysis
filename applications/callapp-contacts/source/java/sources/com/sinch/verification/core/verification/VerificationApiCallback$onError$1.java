package com.sinch.verification.core.verification;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationApiCallback$onError$1.class */
final class VerificationApiCallback$onError$1 extends AbstractC18526r implements Function0<C20128v> {

    /* renamed from: $t */
    final /* synthetic */ Throwable f60697$t;
    final /* synthetic */ VerificationApiCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerificationApiCallback$onError$1(VerificationApiCallback verificationApiCallback, Throwable th) {
        super(0);
        this.this$0 = verificationApiCallback;
        this.f60697$t = th;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke */
    public final void invoke2() {
        this.this$0.handleError(this.f60697$t);
    }
}
