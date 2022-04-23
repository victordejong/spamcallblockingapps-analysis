package com.sinch.verification.core.internal.error;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/sinch/verification/core/internal/error/ApiCallException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "data", "Lcom/sinch/verification/core/internal/error/ApiErrorData;", "(Lcom/sinch/verification/core/internal/error/ApiErrorData;)V", "getData", "()Lcom/sinch/verification/core/internal/error/ApiErrorData;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiCallException.class */
public final class ApiCallException extends Exception {
    private final ApiErrorData data;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiCallException(ApiErrorData data) {
        super(data.getMessage());
        p.c(data, "data");
        this.data = data;
    }

    public final ApiErrorData getData() {
        return this.data;
    }
}
