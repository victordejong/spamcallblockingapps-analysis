package com.sinch.verification.core.verification.response;

import com.sinch.verification.core.verification.VerificationEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\u0003H&¨\u0006\n"}, m4298d2 = {"Lcom/sinch/verification/core/verification/response/VerificationListener;", "", "onVerificationEvent", "", "event", "Lcom/sinch/verification/core/verification/VerificationEvent;", "onVerificationFailed", "t", "", "onVerified", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/response/VerificationListener.class */
public interface VerificationListener {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/response/VerificationListener$DefaultImpls.class */
    public static final class DefaultImpls {
        public static void onVerificationEvent(VerificationListener verificationListener, VerificationEvent event) {
            C18524p.m3841c(event, "event");
        }
    }

    void onVerificationEvent(VerificationEvent verificationEvent);

    void onVerificationFailed(Throwable th);

    void onVerified();
}
