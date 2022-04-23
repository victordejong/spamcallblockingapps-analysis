package com.sinch.verification.core.config.method;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.sinch.verification.core.internal.Verification;
import com.sinch.verification.core.verification.response.VerificationListener;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\u001b\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0005\u001a\u00028��H&¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/sinch/verification/core/config/method/VerificationMethodCreator;", "Listener", "", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/sinch/verification/core/internal/Verification;", "initializationListener", "(Ljava/lang/Object;)Lcom/sinch/verification/core/config/method/VerificationMethodCreator;", "verificationListener", "Lcom/sinch/verification/core/verification/response/VerificationListener;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/method/VerificationMethodCreator.class */
public interface VerificationMethodCreator<Listener> {
    Verification build();

    VerificationMethodCreator<Listener> initializationListener(Listener listener);

    VerificationMethodCreator<Listener> verificationListener(VerificationListener verificationListener);
}
