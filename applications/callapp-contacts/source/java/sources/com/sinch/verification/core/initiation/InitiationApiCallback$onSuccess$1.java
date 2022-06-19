package com.sinch.verification.core.initiation;

import com.sinch.logging.Logger;
import com.sinch.verification.core.initiation.response.InitiationListener;
import com.sinch.verification.core.initiation.response.InitiationResponseData;
import com.sinch.verification.core.internal.VerificationState;
import com.sinch.verification.core.internal.VerificationStateListener;
import com.sinch.verification.core.internal.VerificationStateStatus;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import retrofit2.Response;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "T", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/InitiationApiCallback$onSuccess$1.class */
public final class InitiationApiCallback$onSuccess$1 extends AbstractC18526r implements Function0<C20128v> {
    final /* synthetic */ InitiationResponseData $data;
    final /* synthetic */ Response $response;
    final /* synthetic */ InitiationApiCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitiationApiCallback$onSuccess$1(InitiationApiCallback initiationApiCallback, InitiationResponseData initiationResponseData, Response response) {
        super(0);
        this.this$0 = initiationApiCallback;
        this.$data = initiationResponseData;
        this.$response = response;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke */
    public final void invoke2() {
        Function2 function2;
        Logger logger;
        VerificationStateListener verificationStateListener;
        InitiationListener initiationListener;
        Function1 function1;
        function2 = this.this$0.dataModifier;
        InitiationResponseData initiationResponseData = (InitiationResponseData) function2.invoke(this.$data, this.$response);
        logger = this.this$0.logger;
        Logger.DefaultImpls.debug$default(logger, "Verification initiated data is " + this.$data, null, 2, null);
        verificationStateListener = this.this$0.statusListener;
        verificationStateListener.update(new VerificationState.Initialization(VerificationStateStatus.SUCCESS));
        initiationListener = this.this$0.listener;
        initiationListener.onInitiated(initiationResponseData);
        function1 = this.this$0.successCallback;
        function1.invoke(initiationResponseData);
    }
}
