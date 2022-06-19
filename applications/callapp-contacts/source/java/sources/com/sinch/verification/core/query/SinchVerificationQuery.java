package com.sinch.verification.core.query;

import com.sinch.verification.core.config.general.GlobalConfig;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.internal.utils.CallExtensionsKt;
import com.sinch.verification.core.query.callback.VerificationInfoApiCallback;
import com.sinch.verification.core.query.callback.VerificationInfoCallback;
import com.sinch.verification.core.verification.response.VerificationResponseData;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Call;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u001a2\u00020\u0001:\u0001\u001aB\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0017\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u001b"}, m4298d2 = {"Lcom/sinch/verification/core/query/SinchVerificationQuery;", "Lcom/sinch/verification/core/query/VerificationQuery;", "globalConfig", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "(Lcom/sinch/verification/core/config/general/GlobalConfig;)V", "verificationQueryService", "Lcom/sinch/verification/core/query/VerificationQueryService;", "getVerificationQueryService", "()Lcom/sinch/verification/core/query/VerificationQueryService;", "verificationQueryService$delegate", "Lkotlin/Lazy;", "queryByEndpoint", "", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "number", "", "callback", "Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;", "queryById", "id", "queryByReference", "reference", "enqueueVerificationInfo", "Lretrofit2/Call;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "Companion", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/query/SinchVerificationQuery.class */
public final class SinchVerificationQuery implements VerificationQuery {
    public static final Companion Companion = new Companion(null);
    private final GlobalConfig globalConfig;
    private final Lazy verificationQueryService$delegate = C18399h.m3897a(new SinchVerificationQuery$verificationQueryService$2(this));

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m4298d2 = {"Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;", "", "()V", "withGlobalConfig", "Lcom/sinch/verification/core/query/VerificationQuery;", "globalConfig", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/query/SinchVerificationQuery$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final VerificationQuery withGlobalConfig(GlobalConfig globalConfig) {
            C18524p.m3841c(globalConfig, "globalConfig");
            return new SinchVerificationQuery(globalConfig);
        }
    }

    public SinchVerificationQuery(GlobalConfig globalConfig) {
        C18524p.m3841c(globalConfig, "globalConfig");
        this.globalConfig = globalConfig;
    }

    private final void enqueueVerificationInfo(Call<VerificationResponseData> call, VerificationInfoCallback verificationInfoCallback) {
        CallExtensionsKt.enqueue(call, this.globalConfig.getRetrofit(), new VerificationInfoApiCallback(verificationInfoCallback));
    }

    private final VerificationQueryService getVerificationQueryService() {
        return (VerificationQueryService) this.verificationQueryService$delegate.mo1102a();
    }

    public static final VerificationQuery withGlobalConfig(GlobalConfig globalConfig) {
        return Companion.withGlobalConfig(globalConfig);
    }

    @Override // com.sinch.verification.core.query.VerificationQuery
    public final void queryByEndpoint(VerificationMethodType method, String number, VerificationInfoCallback callback) {
        C18524p.m3841c(method, "method");
        C18524p.m3841c(number, "number");
        C18524p.m3841c(callback, "callback");
        enqueueVerificationInfo(getVerificationQueryService().queryByEndpoint(method, number), callback);
    }

    @Override // com.sinch.verification.core.query.VerificationQuery
    public final void queryById(String id, VerificationInfoCallback callback) {
        C18524p.m3841c(id, "id");
        C18524p.m3841c(callback, "callback");
        enqueueVerificationInfo(getVerificationQueryService().queryById(id), callback);
    }

    @Override // com.sinch.verification.core.query.VerificationQuery
    public final void queryByReference(String reference, VerificationInfoCallback callback) {
        C18524p.m3841c(reference, "reference");
        C18524p.m3841c(callback, "callback");
        enqueueVerificationInfo(getVerificationQueryService().queryByReference(reference), callback);
    }
}
