package com.sinch.verification.core.query.callback;

import com.sinch.verification.core.verification.response.VerificationResponseData;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, m4298d2 = {"Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;", "", "onError", "", "t", "", "onSuccess", "verificationInfo", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/query/callback/VerificationInfoCallback.class */
public interface VerificationInfoCallback {
    void onError(Throwable th);

    void onSuccess(VerificationResponseData verificationResponseData);
}
