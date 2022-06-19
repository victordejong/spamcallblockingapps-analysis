package com.sinch.verification.core.verification;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.core.internal.VerificationState;
import com.sinch.verification.core.internal.VerificationStateListener;
import com.sinch.verification.core.internal.VerificationStateStatus;
import com.sinch.verification.core.internal.utils.ApiCallback;
import com.sinch.verification.core.verification.response.VerificationListener;
import com.sinch.verification.core.verification.response.VerificationResponseData;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Response;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\tH\u0002J\u0016\u0010\u0011\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"Lcom/sinch/verification/core/verification/VerificationApiCallback;", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "listener", "Lcom/sinch/verification/core/verification/response/VerificationListener;", "verificationStateListener", "Lcom/sinch/verification/core/internal/VerificationStateListener;", "beforeResultHandledCallback", "Lkotlin/Function0;", "", "(Lcom/sinch/verification/core/verification/response/VerificationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function0;)V", "logger", "Lcom/sinch/logging/Logger;", "handleError", "t", "", "handleSuccessfulVerification", "ifNotAlreadyVerified", "f", "onError", "onSuccess", "data", Payload.RESPONSE, "Lretrofit2/Response;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationApiCallback.class */
public final class VerificationApiCallback implements ApiCallback<VerificationResponseData> {
    private final Function0<C20128v> beforeResultHandledCallback;
    private final VerificationListener listener;
    private final Logger logger;
    private final VerificationStateListener verificationStateListener;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.sinch.verification.core.verification.VerificationApiCallback$1 */
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationApiCallback$1.class */
    public static final class C171181 extends AbstractC18526r implements Function0<C20128v> {
        public static final C171181 INSTANCE = new C171181();

        C171181() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    public VerificationApiCallback(VerificationListener listener, VerificationStateListener verificationStateListener, Function0<C20128v> beforeResultHandledCallback) {
        C18524p.m3841c(listener, "listener");
        C18524p.m3841c(verificationStateListener, "verificationStateListener");
        C18524p.m3841c(beforeResultHandledCallback, "beforeResultHandledCallback");
        this.listener = listener;
        this.verificationStateListener = verificationStateListener;
        this.beforeResultHandledCallback = beforeResultHandledCallback;
        this.logger = LogKt.logger(this);
    }

    public /* synthetic */ VerificationApiCallback(VerificationListener verificationListener, VerificationStateListener verificationStateListener, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(verificationListener, verificationStateListener, (i & 4) != 0 ? C171181.INSTANCE : function0);
    }

    public final void handleError(Throwable th) {
        Logger.DefaultImpls.debug$default(this.logger, "Verification call failed with error ".concat(String.valueOf(th)), null, 2, null);
        this.verificationStateListener.update(new VerificationState.Verification(VerificationStateStatus.ERROR));
        this.listener.onVerificationFailed(th);
    }

    public final void handleSuccessfulVerification() {
        Logger.DefaultImpls.debug$default(this.logger, "Verification call successful!", null, 2, null);
        this.verificationStateListener.update(new VerificationState.Verification(VerificationStateStatus.SUCCESS));
        this.listener.onVerified();
    }

    private final void ifNotAlreadyVerified(Function0<C20128v> function0) {
        if (!this.verificationStateListener.getVerificationState().isVerified()) {
            function0.invoke();
        }
    }

    @Override // com.sinch.verification.core.internal.utils.ApiCallback
    public final void onError(Throwable t) {
        C18524p.m3841c(t, "t");
        this.beforeResultHandledCallback.invoke();
        ifNotAlreadyVerified(new VerificationApiCallback$onError$1(this, t));
    }

    public final void onSuccess(VerificationResponseData data, Response<VerificationResponseData> response) {
        C18524p.m3841c(data, "data");
        C18524p.m3841c(response, "response");
        this.beforeResultHandledCallback.invoke();
        ifNotAlreadyVerified(new VerificationApiCallback$onSuccess$1(this, data));
    }
}
