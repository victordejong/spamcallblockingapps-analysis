package com.sinch.verification.core.verification;

import com.sinch.logging.Logger;
import com.sinch.verification.core.internal.VerificationStatus;
import com.sinch.verification.core.internal.error.VerificationException;
import com.sinch.verification.core.verification.response.VerificationResponseData;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationApiCallback$onSuccess$1.class */
public final class VerificationApiCallback$onSuccess$1 extends AbstractC18526r implements Function0<C20128v> {
    final /* synthetic */ VerificationResponseData $data;
    final /* synthetic */ VerificationApiCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerificationApiCallback$onSuccess$1(VerificationApiCallback verificationApiCallback, VerificationResponseData verificationResponseData) {
        super(0);
        this.this$0 = verificationApiCallback;
        this.$data = verificationResponseData;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke */
    public final void invoke2() {
        Logger logger;
        if (this.$data.getStatus() == VerificationStatus.SUCCESSFUL) {
            logger = this.this$0.logger;
            Logger.DefaultImpls.info$default(logger, "Successfully verified with " + this.$data.getMethod(), null, 2, null);
            this.this$0.handleSuccessfulVerification();
            return;
        }
        VerificationApiCallback verificationApiCallback = this.this$0;
        String errorReason = this.$data.getErrorReason();
        String str = errorReason;
        if (errorReason == null) {
            str = "";
        }
        verificationApiCallback.handleError(new VerificationException(str));
    }
}
