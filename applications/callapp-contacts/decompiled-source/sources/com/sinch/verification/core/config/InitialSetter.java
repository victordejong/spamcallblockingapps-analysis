package com.sinch.verification.core.config;

import com.sinch.verification.core.config.VerificationMethodConfigCreator;
import com.sinch.verification.core.config.method.VerificationMethodProperties;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��*\u0012\b��\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\u00020\u0003J\u0015\u0010\u0004\u001a\u00028��2\u0006\u0010\u0004\u001a\u00020\u0005H&¢\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00028��2\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/sinch/verification/core/config/InitialSetter;", "LastSetter", "Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;", "", "number", "", "(Ljava/lang/String;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;", "withVerificationProperties", "verificationMethodProperties", "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;", "(Lcom/sinch/verification/core/config/method/VerificationMethodProperties;)Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/InitialSetter.class */
public interface InitialSetter<LastSetter extends VerificationMethodConfigCreator<LastSetter, ?>> {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/InitialSetter$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <LastSetter extends VerificationMethodConfigCreator<LastSetter, ?>> LastSetter withVerificationProperties(InitialSetter<LastSetter> initialSetter, VerificationMethodProperties verificationMethodProperties) {
            p.c(verificationMethodProperties, "verificationMethodProperties");
            return (LastSetter) ((VerificationMethodConfigCreator) ((VerificationMethodConfigCreator) ((VerificationMethodConfigCreator) ((VerificationMethodConfigCreator) initialSetter.number(verificationMethodProperties.getNumber()).custom(verificationMethodProperties.getCustom())).honourEarlyReject(verificationMethodProperties.getHonourEarlyReject())).acceptedLanguages(verificationMethodProperties.getAcceptedLanguages())).reference(verificationMethodProperties.getReference()));
        }
    }

    LastSetter number(String str);

    LastSetter withVerificationProperties(VerificationMethodProperties verificationMethodProperties);
}
