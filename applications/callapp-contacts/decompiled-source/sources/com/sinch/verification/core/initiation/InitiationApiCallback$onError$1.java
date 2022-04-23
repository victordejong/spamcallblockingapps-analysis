package com.sinch.verification.core.initiation;

import com.sinch.logging.Logger;
import com.sinch.verification.core.initiation.response.InitiationListener;
import com.sinch.verification.core.internal.VerificationState;
import com.sinch.verification.core.internal.VerificationStateListener;
import com.sinch.verification.core.internal.VerificationStateStatus;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "T", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/InitiationApiCallback$onError$1.class */
final class InitiationApiCallback$onError$1 extends r implements Function0<v> {
    final /* synthetic */ Throwable $t;
    final /* synthetic */ InitiationApiCallback this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitiationApiCallback$onError$1(InitiationApiCallback initiationApiCallback, Throwable th) {
        super(0);
        this.this$0 = initiationApiCallback;
        this.$t = th;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Logger logger;
        VerificationStateListener verificationStateListener;
        InitiationListener initiationListener;
        logger = this.this$0.logger;
        Logger.DefaultImpls.debug$default(logger, "Verification initiation failed error is is " + this.$t, null, 2, null);
        verificationStateListener = this.this$0.statusListener;
        verificationStateListener.update(new VerificationState.Initialization(VerificationStateStatus.ERROR));
        initiationListener = this.this$0.listener;
        initiationListener.onInitializationFailed(this.$t);
    }
}
