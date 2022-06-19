package com.sinch.verification.core.internal;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0007H&J\u001c\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000e"}, m4298d2 = {"Lcom/sinch/verification/core/internal/Verification;", "", "verificationState", "Lcom/sinch/verification/core/internal/VerificationState;", "getVerificationState", "()Lcom/sinch/verification/core/internal/VerificationState;", "initiate", "", "stop", "verify", "verificationCode", "", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/Verification.class */
public interface Verification {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/Verification$DefaultImpls.class */
    public static final class DefaultImpls {
        public static /* synthetic */ void verify$default(Verification verification, String str, VerificationMethodType verificationMethodType, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    verificationMethodType = null;
                }
                verification.verify(str, verificationMethodType);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: verify");
        }
    }

    VerificationState getVerificationState();

    void initiate();

    void stop();

    void verify(String str, VerificationMethodType verificationMethodType);
}
