package com.sinch.verification.core.verification.interceptor;

import com.sinch.verification.core.internal.error.CodeInterceptionException;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionTimeoutException;", "Lcom/sinch/verification/core/internal/error/CodeInterceptionException;", "()V", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/interceptor/CodeInterceptionTimeoutException.class */
public final class CodeInterceptionTimeoutException extends CodeInterceptionException {
    public CodeInterceptionTimeoutException() {
        super("Interception timed out");
    }
}
