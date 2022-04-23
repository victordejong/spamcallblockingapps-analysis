package com.sinch.verification.core.config.method;

import com.sinch.verification.core.verification.interceptor.CodeInterceptor;
import com.sinch.verification.core.verification.response.EmptyVerificationListener;
import com.sinch.verification.core.verification.response.VerificationListener;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n��\b&\u0018��*\u0004\b��\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\n\u001a\u0004\u0018\u00018\u0001X¤\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;", "Service", "Interceptor", "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;", "Lcom/sinch/verification/core/config/method/VerificationMethod;", "verificationServiceConfig", "Lcom/sinch/verification/core/config/method/VerificationMethodConfig;", "verificationListener", "Lcom/sinch/verification/core/verification/response/VerificationListener;", "(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V", "codeInterceptor", "getCodeInterceptor", "()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;", "setCodeInterceptor", "(Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;)V", "stop", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/method/AutoInterceptedVerificationMethod.class */
public abstract class AutoInterceptedVerificationMethod<Service, Interceptor extends CodeInterceptor> extends VerificationMethod<Service> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoInterceptedVerificationMethod(VerificationMethodConfig<Service> verificationServiceConfig, VerificationListener verificationListener) {
        super(verificationServiceConfig, verificationListener);
        p.c(verificationServiceConfig, "verificationServiceConfig");
        p.c(verificationListener, "verificationListener");
    }

    public /* synthetic */ AutoInterceptedVerificationMethod(VerificationMethodConfig verificationMethodConfig, EmptyVerificationListener emptyVerificationListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(verificationMethodConfig, (i & 2) != 0 ? new EmptyVerificationListener() : emptyVerificationListener);
    }

    protected abstract Interceptor getCodeInterceptor();

    protected abstract void setCodeInterceptor(Interceptor interceptor);

    @Override // com.sinch.verification.core.config.method.VerificationMethod, com.sinch.verification.core.internal.Verification
    public void stop() {
        super.stop();
        Interceptor codeInterceptor = getCodeInterceptor();
        if (codeInterceptor != null) {
            codeInterceptor.stop();
        }
    }
}
