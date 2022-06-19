package com.sinch.verification.core.query.callback;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.internal.utils.ApiCallback;
import com.sinch.verification.core.verification.response.VerificationResponseData;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import retrofit2.Response;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u001e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "verificationInfoCallback", "Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;", "(Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V", "onError", "", "t", "", "onSuccess", "data", Payload.RESPONSE, "Lretrofit2/Response;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/query/callback/VerificationInfoApiCallback.class */
public final class VerificationInfoApiCallback implements ApiCallback<VerificationResponseData> {
    private final VerificationInfoCallback verificationInfoCallback;

    public VerificationInfoApiCallback(VerificationInfoCallback verificationInfoCallback) {
        C18524p.m3841c(verificationInfoCallback, "verificationInfoCallback");
        this.verificationInfoCallback = verificationInfoCallback;
    }

    @Override // com.sinch.verification.core.internal.utils.ApiCallback
    public final void onError(Throwable t) {
        C18524p.m3841c(t, "t");
        this.verificationInfoCallback.onError(t);
    }

    public final void onSuccess(VerificationResponseData data, Response<VerificationResponseData> response) {
        C18524p.m3841c(data, "data");
        C18524p.m3841c(response, "response");
        this.verificationInfoCallback.onSuccess(data);
    }
}
