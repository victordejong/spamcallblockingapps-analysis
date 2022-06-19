package com.sinch.verification.core.verification.response;

import com.sinch.verification.core.verification.VerificationEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0016\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, m4298d2 = {"Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;", "Lcom/sinch/verification/core/verification/response/VerificationListener;", "()V", "onVerificationEvent", "", "event", "Lcom/sinch/verification/core/verification/VerificationEvent;", "onVerificationFailed", "t", "", "onVerified", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/response/EmptyVerificationListener.class */
public class EmptyVerificationListener implements VerificationListener {
    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerificationEvent(VerificationEvent event) {
        C18524p.m3841c(event, "event");
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerificationFailed(Throwable t) {
        C18524p.m3841c(t, "t");
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerified() {
    }
}
