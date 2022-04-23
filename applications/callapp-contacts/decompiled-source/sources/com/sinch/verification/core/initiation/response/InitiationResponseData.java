package com.sinch.verification.core.initiation.response;

import com.sinch.verification.core.internal.VerificationMethodType;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "", "id", "", "getId", "()Ljava/lang/String;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/response/InitiationResponseData.class */
public interface InitiationResponseData {
    String getId();

    VerificationMethodType getMethod();
}
