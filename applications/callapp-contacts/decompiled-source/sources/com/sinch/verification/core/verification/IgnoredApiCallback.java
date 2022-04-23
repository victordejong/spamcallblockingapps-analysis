package com.sinch.verification.core.verification;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.core.internal.utils.ApiCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import retrofit2.Response;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J#\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00028��2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\rH\u0016¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/sinch/verification/core/verification/IgnoredApiCallback;", "Data", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "()V", "logger", "Lcom/sinch/logging/Logger;", "onError", "", "t", "", "onSuccess", "data", Payload.RESPONSE, "Lretrofit2/Response;", "(Ljava/lang/Object;Lretrofit2/Response;)V", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/IgnoredApiCallback.class */
public final class IgnoredApiCallback<Data> implements ApiCallback<Data> {
    private final Logger logger = LogKt.logger(this);

    @Override // com.sinch.verification.core.internal.utils.ApiCallback
    public final void onError(Throwable t) {
        p.c(t, "t");
        Logger.DefaultImpls.error$default(this.logger, "onError called with throwable: ".concat(String.valueOf(t)), null, 2, null);
    }

    @Override // com.sinch.verification.core.internal.utils.ApiCallback
    public final void onSuccess(Data data, Response<Data> response) {
        p.c(response, "response");
        Logger.DefaultImpls.debug$default(this.logger, "onSuccess called with data: ".concat(String.valueOf(data)), null, 2, null);
    }
}
