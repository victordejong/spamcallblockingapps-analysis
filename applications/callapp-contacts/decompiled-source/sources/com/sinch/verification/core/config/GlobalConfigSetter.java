package com.sinch.verification.core.config;

import com.sinch.verification.core.config.VerificationMethodConfigCreator;
import com.sinch.verification.core.config.general.GlobalConfig;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\bf\u0018��*\u0012\b��\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\u00020\u0003J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\u0006\u0010\u0004\u001a\u00020\u0006H&¨\u0006\u0007"}, d2 = {"Lcom/sinch/verification/core/config/GlobalConfigSetter;", "LastSetter", "Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;", "", "globalConfig", "Lcom/sinch/verification/core/config/InitialSetter;", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/GlobalConfigSetter.class */
public interface GlobalConfigSetter<LastSetter extends VerificationMethodConfigCreator<LastSetter, ?>> {
    InitialSetter<LastSetter> globalConfig(GlobalConfig globalConfig);
}
