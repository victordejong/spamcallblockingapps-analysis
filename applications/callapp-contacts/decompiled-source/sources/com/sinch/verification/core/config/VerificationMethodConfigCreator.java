package com.sinch.verification.core.config;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003J\r\u0010\u0004\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;", "Creator", "Config", "Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "()Ljava/lang/Object;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/VerificationMethodConfigCreator.class */
public interface VerificationMethodConfigCreator<Creator, Config> extends VerificationMethodConfigCreatorParameters<Creator> {
    Config build();
}
