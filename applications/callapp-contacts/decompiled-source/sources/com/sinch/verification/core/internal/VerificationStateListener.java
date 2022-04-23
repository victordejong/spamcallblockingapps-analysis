package com.sinch.verification.core.internal;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/sinch/verification/core/internal/VerificationStateListener;", "", "verificationState", "Lcom/sinch/verification/core/internal/VerificationState;", "getVerificationState", "()Lcom/sinch/verification/core/internal/VerificationState;", "update", "", "newState", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/VerificationStateListener.class */
public interface VerificationStateListener {
    VerificationState getVerificationState();

    void update(VerificationState verificationState);
}
