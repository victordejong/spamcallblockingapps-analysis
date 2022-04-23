package com.sinch.verification.core.config.method;

import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.core.config.general.GlobalConfig;
import com.sinch.verification.core.initiation.response.InitiationResponseData;
import com.sinch.verification.core.internal.Verification;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.internal.VerificationState;
import com.sinch.verification.core.internal.VerificationStateListener;
import com.sinch.verification.core.internal.VerificationStateStatus;
import com.sinch.verification.core.verification.interceptor.CodeInterceptionListener;
import com.sinch.verification.core.verification.model.VerificationSourceType;
import com.sinch.verification.core.verification.response.EmptyVerificationListener;
import com.sinch.verification.core.verification.response.VerificationListener;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import retrofit2.Retrofit;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0006\u0010(\u001a\u00020)J\b\u0010*\u001a\u00020)H\u0016J\b\u0010+\u001a\u00020)H$J\b\u0010,\u001a\u00020-H\u0014J\"\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u000103H$J\b\u00104\u001a\u00020)H\u0014J\b\u00105\u001a\u00020)H\u0016J\u0010\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020#H\u0016J\u0018\u00108\u001a\u00020)2\u0006\u0010/\u001a\u00020\u000f2\b\u00102\u001a\u0004\u0018\u000103J\"\u00108\u001a\u00020)2\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u000103R\u0014\u0010\n\u001a\u00020\u000bX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0014\u001a\u00020\u0015X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\bX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00028��X\u0084\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001f\u0010 R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u00069"}, d2 = {"Lcom/sinch/verification/core/config/method/VerificationMethod;", "Service", "Lcom/sinch/verification/core/internal/Verification;", "Lcom/sinch/verification/core/internal/VerificationStateListener;", "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;", "verificationServiceConfig", "Lcom/sinch/verification/core/config/method/VerificationMethodConfig;", "verificationListener", "Lcom/sinch/verification/core/verification/response/VerificationListener;", "(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V", "globalConfig", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "getGlobalConfig", "()Lcom/sinch/verification/core/config/general/GlobalConfig;", "id", "", "getId", "()Ljava/lang/String;", "initResponseData", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "logger", "Lcom/sinch/logging/Logger;", "getLogger", "()Lcom/sinch/logging/Logger;", "retrofit", "Lretrofit2/Retrofit;", "getRetrofit", "()Lretrofit2/Retrofit;", "getVerificationListener", "()Lcom/sinch/verification/core/verification/response/VerificationListener;", "verificationService", "getVerificationService", "()Ljava/lang/Object;", "Ljava/lang/Object;", "verificationState", "Lcom/sinch/verification/core/internal/VerificationState;", "getVerificationState", "()Lcom/sinch/verification/core/internal/VerificationState;", "setVerificationState", "(Lcom/sinch/verification/core/internal/VerificationState;)V", "initiate", "", "onCodeInterceptionStopped", "onInitiate", "onPreInitiate", "", "onVerify", "verificationCode", "sourceType", "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "report", "stop", "update", "newState", "verify", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/method/VerificationMethod.class */
public abstract class VerificationMethod<Service> implements Verification, VerificationStateListener, CodeInterceptionListener {
    private final GlobalConfig globalConfig;
    private InitiationResponseData initResponseData;
    private final Logger logger;
    private final VerificationListener verificationListener;
    private final Service verificationService;
    private VerificationState verificationState;

    public VerificationMethod(VerificationMethodConfig<Service> verificationServiceConfig, VerificationListener verificationListener) {
        p.c(verificationServiceConfig, "verificationServiceConfig");
        p.c(verificationListener, "verificationListener");
        this.verificationListener = verificationListener;
        this.logger = LogKt.logger(this);
        this.globalConfig = verificationServiceConfig.getGlobalConfig();
        this.verificationService = verificationServiceConfig.getApiService();
        this.verificationState = VerificationState.IDLE.INSTANCE;
    }

    public /* synthetic */ VerificationMethod(VerificationMethodConfig verificationMethodConfig, EmptyVerificationListener emptyVerificationListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(verificationMethodConfig, (i & 2) != 0 ? new EmptyVerificationListener() : emptyVerificationListener);
    }

    public static /* synthetic */ void verify$default(VerificationMethod verificationMethod, String str, VerificationSourceType verificationSourceType, VerificationMethodType verificationMethodType, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                verificationMethodType = null;
            }
            verificationMethod.verify(str, verificationSourceType, verificationMethodType);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: verify");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final GlobalConfig getGlobalConfig() {
        return this.globalConfig;
    }

    protected final String getId() {
        InitiationResponseData initiationResponseData = this.initResponseData;
        if (initiationResponseData != null) {
            return initiationResponseData.getId();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Logger getLogger() {
        return this.logger;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Retrofit getRetrofit() {
        return this.globalConfig.getRetrofit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final VerificationListener getVerificationListener() {
        return this.verificationListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Service getVerificationService() {
        return this.verificationService;
    }

    @Override // com.sinch.verification.core.internal.Verification, com.sinch.verification.core.internal.VerificationStateListener
    public final VerificationState getVerificationState() {
        return this.verificationState;
    }

    @Override // com.sinch.verification.core.internal.Verification
    public final void initiate() {
        if (!onPreInitiate() || !this.verificationState.getCanInitiate()) {
            Logger.DefaultImpls.debug$default(this.logger, "Initiate called however onPreInitiate or verificationState.canInitiate returned false", null, 2, null);
            return;
        }
        Logger.DefaultImpls.debug$default(this.logger, "Initiating verification", null, 2, null);
        update(new VerificationState.Initialization(VerificationStateStatus.ONGOING));
        onInitiate();
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptionListener
    public void onCodeInterceptionStopped() {
        if (!p.a(this.verificationState, VerificationState.ManuallyStopped.INSTANCE)) {
            report();
        }
    }

    protected abstract void onInitiate();

    protected boolean onPreInitiate() {
        return true;
    }

    protected abstract void onVerify(String str, VerificationSourceType verificationSourceType, VerificationMethodType verificationMethodType);

    public void report() {
    }

    public final void setVerificationState(VerificationState verificationState) {
        p.c(verificationState, "<set-?>");
        this.verificationState = verificationState;
    }

    @Override // com.sinch.verification.core.internal.Verification
    public void stop() {
        if (this.verificationState.isVerificationProcessFinished()) {
            Logger logger = this.logger;
            Logger.DefaultImpls.info$default(logger, "Verification process already finished with state " + this.verificationState, null, 2, null);
            return;
        }
        Logger.DefaultImpls.debug$default(this.logger, "Stop called", null, 2, null);
        update(VerificationState.ManuallyStopped.INSTANCE);
    }

    @Override // com.sinch.verification.core.internal.VerificationStateListener
    public void update(VerificationState newState) {
        p.c(newState, "newState");
        Logger logger = this.logger;
        Logger.DefaultImpls.debug$default(logger, "Verification state update " + this.verificationState + " -> " + newState, null, 2, null);
        this.verificationState = newState;
    }

    @Override // com.sinch.verification.core.internal.Verification
    public final void verify(String verificationCode, VerificationMethodType verificationMethodType) {
        p.c(verificationCode, "verificationCode");
        verify(verificationCode, VerificationSourceType.MANUAL, verificationMethodType);
    }

    public final void verify(String verificationCode, VerificationSourceType sourceType, VerificationMethodType verificationMethodType) {
        p.c(verificationCode, "verificationCode");
        p.c(sourceType, "sourceType");
        if (this.verificationState.getCanVerify()) {
            Logger logger = this.logger;
            Logger.DefaultImpls.debug$default(logger, "Verifying " + verificationCode + " from source: " + sourceType, null, 2, null);
            update(new VerificationState.Verification(VerificationStateStatus.ONGOING));
            onVerify(verificationCode, sourceType, verificationMethodType);
            return;
        }
        Logger.DefaultImpls.debug$default(this.logger, "Verify called however verificationState.canVerify returned false", null, 2, null);
    }
}
