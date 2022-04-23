package com.sinch.verification.core.verification.interceptor;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.verification.model.VerificationSourceType;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\u0003H&¨\u0006\f"}, d2 = {"Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;", "", "onCodeIntercepted", "", "code", "", Payload.SOURCE, "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "onCodeInterceptionError", "e", "", "onCodeInterceptionStopped", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/interceptor/CodeInterceptionListener.class */
public interface CodeInterceptionListener {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/interceptor/CodeInterceptionListener$DefaultImpls.class */
    public static final class DefaultImpls {
        public static /* synthetic */ void onCodeIntercepted$default(CodeInterceptionListener codeInterceptionListener, String str, VerificationSourceType verificationSourceType, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    verificationSourceType = VerificationSourceType.INTERCEPTION;
                }
                codeInterceptionListener.onCodeIntercepted(str, verificationSourceType);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onCodeIntercepted");
        }
    }

    void onCodeIntercepted(String str, VerificationSourceType verificationSourceType);

    void onCodeInterceptionError(Throwable th);

    void onCodeInterceptionStopped();
}
