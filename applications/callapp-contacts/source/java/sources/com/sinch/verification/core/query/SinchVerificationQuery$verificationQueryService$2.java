package com.sinch.verification.core.query;

import com.sinch.verification.core.config.general.GlobalConfig;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lcom/sinch/verification/core/query/VerificationQueryService;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/query/SinchVerificationQuery$verificationQueryService$2.class */
public final class SinchVerificationQuery$verificationQueryService$2 extends AbstractC18526r implements Function0<VerificationQueryService> {
    final /* synthetic */ SinchVerificationQuery this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SinchVerificationQuery$verificationQueryService$2(SinchVerificationQuery sinchVerificationQuery) {
        super(0);
        this.this$0 = sinchVerificationQuery;
    }

    @Override // kotlin.jvm.functions.Function0
    public final VerificationQueryService invoke() {
        GlobalConfig globalConfig;
        globalConfig = this.this$0.globalConfig;
        return (VerificationQueryService) globalConfig.getRetrofit().m109a(VerificationQueryService.class);
    }
}
