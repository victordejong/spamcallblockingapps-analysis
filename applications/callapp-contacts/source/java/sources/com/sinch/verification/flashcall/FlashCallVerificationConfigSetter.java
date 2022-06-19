package com.sinch.verification.flashcall;

import com.sinch.verification.core.config.method.VerificationMethodCreator;
import com.sinch.verification.core.initiation.response.InitiationListener;
import com.sinch.verification.flashcall.config.FlashCallVerificationConfig;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationResponseData;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J \u0010\u0002\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u00060\u00032\u0006\u0010\u0002\u001a\u00020\u0007H&¨\u0006\b"}, m4298d2 = {"Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;", "", "config", "Lcom/sinch/verification/core/config/method/VerificationMethodCreator;", "Lcom/sinch/verification/core/initiation/response/InitiationListener;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationListener;", "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/FlashCallVerificationConfigSetter.class */
public interface FlashCallVerificationConfigSetter {
    VerificationMethodCreator<InitiationListener<FlashCallInitializationResponseData>> config(FlashCallVerificationConfig flashCallVerificationConfig);
}
