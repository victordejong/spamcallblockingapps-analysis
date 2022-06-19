package com.sinch.verification.core.verification.interceptor;

import com.sinch.verification.core.internal.VerificationMethodType;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0014\u001a\u00020\u0015H&J\b\u0010\u0016\u001a\u00020\u0015H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X¦\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m4298d2 = {"Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;", "", "interceptionListener", "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;", "getInterceptionListener", "()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;", "interceptionTimeout", "", "getInterceptionTimeout", "()J", "setInterceptionTimeout", "(J)V", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "getMethod", "()Lcom/sinch/verification/core/internal/VerificationMethodType;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lcom/sinch/verification/core/verification/interceptor/InterceptorState;", "getState", "()Lcom/sinch/verification/core/verification/interceptor/InterceptorState;", EventConstants.START, "", "stop", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/interceptor/CodeInterceptor.class */
public interface CodeInterceptor {
    CodeInterceptionListener getInterceptionListener();

    long getInterceptionTimeout();

    VerificationMethodType getMethod();

    InterceptorState getState();

    void setInterceptionTimeout(long j);

    void start();

    void stop();
}
