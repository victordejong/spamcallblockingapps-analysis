package com.sinch.verification.core.verification.interceptor;

import com.sinch.verification.core.internal.error.CodeInterceptionException;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m4298d2 = {"Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionTimeoutException;", "Lcom/sinch/verification/core/internal/error/CodeInterceptionException;", "()V", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/interceptor/CodeInterceptionTimeoutException.class */
public final class CodeInterceptionTimeoutException extends CodeInterceptionException {
    public CodeInterceptionTimeoutException() {
        super("Interception timed out");
    }
}
