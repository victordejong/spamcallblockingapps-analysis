package com.sinch.verification.core.query;

import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.query.callback.VerificationInfoCallback;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000e"}, m4298d2 = {"Lcom/sinch/verification/core/query/VerificationQuery;", "", "queryByEndpoint", "", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "number", "", "callback", "Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;", "queryById", "id", "queryByReference", "reference", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/query/VerificationQuery.class */
public interface VerificationQuery {
    void queryByEndpoint(VerificationMethodType verificationMethodType, String str, VerificationInfoCallback verificationInfoCallback);

    void queryById(String str, VerificationInfoCallback verificationInfoCallback);

    void queryByReference(String str, VerificationInfoCallback verificationInfoCallback);
}
