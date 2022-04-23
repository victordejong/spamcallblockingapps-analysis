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
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import retrofit2.Response;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\tH\u0002J\u0016\u0010\u0011\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lcom/sinch/verification/core/verification/VerificationApiCallback;", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "Lcom/sinch/verification/core/verification/response/VerificationResponseData;", "listener", "Lcom/sinch/verification/core/verification/response/VerificationListener;", "verificationStateListener", "Lcom/sinch/verification/core/internal/VerificationStateListener;", "beforeResultHandledCallback", "Lkotlin/Function0;", "", "(Lcom/sinch/verification/core/verification/response/VerificationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function0;)V", "logger", "Lcom/sinch/logging/Logger;", "handleError", "t", "", "handleSuccessfulVerification", "ifNotAlreadyVerified", "f", "onError", "onSuccess", "data", Payload.RESPONSE, "Lretrofit2/Response;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationApiCallback.class */
public final class VerificationApiCallback implements ApiCallback<VerificationResponseData> {
    private final Function0<v> beforeResultHandledCallback;
    private final VerificationListener listener;
    private final Logger logger;
    private final VerificationStateListener verificationStateListener;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: com.sinch.verification.core.verification.VerificationApiCallback$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/verification/VerificationApiCallback$1.class */
    static final class AnonymousClass1 extends r implements Function0<v> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }
    }

    public VerificationApiCallback(VerificationListener listener, VerificationStateListener verificationStateListener, Function0<v> beforeResultHandledCallback) {
        p.c(listener, "listener");
        p.c(verificationStateListener, "verificationStateListener");
        p.c(beforeResultHandledCallback, "beforeResultHandledCallback");
        this.listener = listener;
        this.verificationStateListener = verificationStateListener;
        this.beforeResultHandledCallback = beforeResultHandledCallback;
        this.logger = LogKt.logger(this);
    }

    public /* synthetic */ VerificationApiCallback(VerificationListener verificationListener, VerificationStateListener verificationStateListener, AnonymousClass1 r8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(verificationListener, verificationStateListener, (i & 4) != 0 ? AnonymousClass1.INSTANCE : r8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleError(Throwable th) {
        Logger.DefaultImpls.debug$default(this.logger, "Verification call failed with error ".concat(String.valueOf(th)), null, 2, null);
        this.verificationStateListener.update(new VerificationState.Verification(VerificationStateStatus.ERROR));
        this.listener.onVerificationFailed(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSuccessfulVerification() {
        Logger.DefaultImpls.debug$default(this.logger, "Verification call successful!", null, 2, null);
        this.verificationStateListener.update(new VerificationState.Verification(VerificationStateStatus.SUCCESS));
        this.listener.onVerified();
    }

    private final void ifNotAlreadyVerified(Function0<v> function0) {
        if (!this.verificationStateListener.getVerificationState().isVerified()) {
            function0.invoke();
        }
    }

    @Override // com.sinch.verification.core.internal.utils.ApiCallback
    public final void onError(Throwable t) {
        p.c(t, "t");
        this.beforeResultHandledCallback.invoke();
        ifNotAlreadyVerified(new VerificationApiCallback$onError$1(this, t));
    }

    public final void onSuccess(VerificationResponseData data, Response<VerificationResponseData> response) {
        p.c(data, "data");
        p.c(response, "response");
        this.beforeResultHandledCallback.invoke();
        ifNotAlreadyVerified(new VerificationApiCallback$onSuccess$1(this, data));
    }
}
