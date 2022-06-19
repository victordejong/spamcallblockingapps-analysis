package com.sinch.verification.core.internal;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m4298d2 = {"Lcom/sinch/verification/core/internal/VerificationStateStatus;", "", "(Ljava/lang/String;I)V", "isFinished", "", "()Z", "ONGOING", "SUCCESS", "ERROR", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationStateStatus.class */
public enum VerificationStateStatus {
    ONGOING,
    SUCCESS,
    ERROR;

    public final boolean isFinished() {
        return this != ONGOING;
    }
}
