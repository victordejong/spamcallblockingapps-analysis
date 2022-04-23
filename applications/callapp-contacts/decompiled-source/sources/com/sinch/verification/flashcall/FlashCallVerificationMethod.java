package com.sinch.verification.flashcall;

import android.content.ContentResolver;
import android.content.Context;
import com.appsflyer.internal.referrer.Payload;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.core.config.method.AutoInterceptedVerificationMethod;
import com.sinch.verification.core.config.method.VerificationMethod;
import com.sinch.verification.core.config.method.VerificationMethodCreator;
import com.sinch.verification.core.initiation.InitiationApiCallback;
import com.sinch.verification.core.initiation.VerificationIdentity;
import com.sinch.verification.core.initiation.VerificationIdentityType;
import com.sinch.verification.core.initiation.response.EmptyInitializationListener;
import com.sinch.verification.core.initiation.response.InitiationListener;
import com.sinch.verification.core.internal.Verification;
import com.sinch.verification.core.internal.VerificationMethodType;
import com.sinch.verification.core.internal.error.VerificationException;
import com.sinch.verification.core.internal.utils.CallExtensionsKt;
import com.sinch.verification.core.verification.IgnoredApiCallback;
import com.sinch.verification.core.verification.VerificationApiCallback;
import com.sinch.verification.core.verification.model.VerificationSourceType;
import com.sinch.verification.core.verification.model.flashcall.FlashCallVerificationDetails;
import com.sinch.verification.core.verification.response.EmptyVerificationListener;
import com.sinch.verification.core.verification.response.VerificationListener;
import com.sinch.verification.flashcall.config.FlashCallVerificationConfig;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationResponseData;
import com.sinch.verification.flashcall.initialization.FlashCallVerificationInitializationData;
import com.sinch.verification.flashcall.report.FlashCallReportData;
import com.sinch.verification.flashcall.report.FlashCallReportDetails;
import com.sinch.verification.flashcall.verification.FlashCallVerificationData;
import com.sinch.verification.flashcall.verification.callhistory.ContentProviderCallHistoryReader;
import com.sinch.verification.flashcall.verification.interceptor.CodeInterceptionState;
import com.sinch.verification.flashcall.verification.interceptor.FlashCallInterceptor;
import com.sinch.verification.flashcall.verification.matcher.FlashCallPatternMatcher;
import com.sinch.verification.utils.permission.Permission;
import com.sinch.verification.utils.permission.PermissionUtils;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001,B-\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\bH\u0002J\u0018\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u0019H\u0014J\b\u0010$\u001a\u00020%H\u0014J\"\u0010&\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001f2\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\b\u0010+\u001a\u00020\u0019H\u0014R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0094\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0018\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0014\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006-"}, d2 = {"Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;", "Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;", "Lcom/sinch/verification/flashcall/FlashCallVerificationService;", "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;", "config", "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;", "initializationListener", "Lcom/sinch/verification/core/initiation/response/InitiationListener;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationListener;", "verificationListener", "Lcom/sinch/verification/core/verification/response/VerificationListener;", "(Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/verification/response/VerificationListener;)V", "codeInterceptor", "getCodeInterceptor", "()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;", "setCodeInterceptor", "(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V", "initiationStartDate", "Ljava/util/Date;", "requestDataData", "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;", "getRequestDataData", "()Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;", "initializeInterceptor", "", "data", "onCodeIntercepted", "code", "", Payload.SOURCE, "Lcom/sinch/verification/core/verification/model/VerificationSourceType;", "onCodeInterceptionError", "e", "", "onInitiate", "onPreInitiate", "", "onVerify", "verificationCode", "sourceType", "method", "Lcom/sinch/verification/core/internal/VerificationMethodType;", "report", "Builder", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/FlashCallVerificationMethod.class */
public final class FlashCallVerificationMethod extends AutoInterceptedVerificationMethod<FlashCallVerificationService, FlashCallInterceptor> {
    private FlashCallInterceptor codeInterceptor;
    private final FlashCallVerificationConfig config;
    private final InitiationListener<FlashCallInitializationResponseData> initializationListener;
    private Date initiationStartDate;

    @Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u00102\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u00020\u0005:\u0001\u0010B\u0007\b\u0002¢\u0006\u0002\u0010\u0006J\b\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0007\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u0006\u0010\u0007\u001a\u00020\bH\u0016J*\u0010\t\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u0010\u0010\t\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0016J \u0010\f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00012\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n��R\u0018\u0010\t\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder;", "Lcom/sinch/verification/core/config/method/VerificationMethodCreator;", "Lcom/sinch/verification/core/initiation/response/InitiationListener;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;", "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationListener;", "Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;", "()V", "config", "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;", "initializationListener", "logger", "Lcom/sinch/logging/Logger;", "verificationListener", "Lcom/sinch/verification/core/verification/response/VerificationListener;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/sinch/verification/core/internal/Verification;", "Companion", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/FlashCallVerificationMethod$Builder.class */
    public static final class Builder implements VerificationMethodCreator<InitiationListener<? super FlashCallInitializationResponseData>>, FlashCallVerificationConfigSetter {
        public static final Companion Companion = new Companion(null);
        private FlashCallVerificationConfig config;
        private InitiationListener<? super FlashCallInitializationResponseData> initializationListener;
        private final Logger logger;
        private VerificationListener verificationListener;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\b\u001a\u00020\u0004H\u0086\u0002R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion;", "", "()V", "instance", "Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;", "instance$annotations", "getInstance", "()Lcom/sinch/verification/flashcall/FlashCallVerificationConfigSetter;", "invoke", "verification-flashcall_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/FlashCallVerificationMethod$Builder$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ void instance$annotations() {
            }

            public final FlashCallVerificationConfigSetter getInstance() {
                return new Builder(null);
            }

            public final FlashCallVerificationConfigSetter invoke() {
                return getInstance();
            }
        }

        private Builder() {
            this.logger = LogKt.logger(this);
            this.initializationListener = new EmptyInitializationListener();
            this.verificationListener = new EmptyVerificationListener();
        }

        public /* synthetic */ Builder(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final FlashCallVerificationConfigSetter getInstance() {
            return Companion.getInstance();
        }

        @Override // com.sinch.verification.core.config.method.VerificationMethodCreator
        public final Verification build() {
            FlashCallVerificationConfig flashCallVerificationConfig = this.config;
            if (flashCallVerificationConfig == null) {
                p.a("config");
            }
            FlashCallVerificationMethod flashCallVerificationMethod = new FlashCallVerificationMethod(flashCallVerificationConfig, this.initializationListener, this.verificationListener, null);
            Logger logger = this.logger;
            StringBuilder sb = new StringBuilder("Created FlashCallVerificationMethod with config: ");
            FlashCallVerificationConfig flashCallVerificationConfig2 = this.config;
            if (flashCallVerificationConfig2 == null) {
                p.a("config");
            }
            sb.append(flashCallVerificationConfig2);
            Logger.DefaultImpls.debug$default(logger, sb.toString(), null, 2, null);
            return flashCallVerificationMethod;
        }

        @Override // com.sinch.verification.flashcall.FlashCallVerificationConfigSetter
        public final VerificationMethodCreator<InitiationListener<FlashCallInitializationResponseData>> config(FlashCallVerificationConfig config) {
            p.c(config, "config");
            this.config = config;
            return this;
        }

        public final VerificationMethodCreator<InitiationListener<FlashCallInitializationResponseData>> initializationListener(InitiationListener<? super FlashCallInitializationResponseData> initializationListener) {
            p.c(initializationListener, "initializationListener");
            this.initializationListener = initializationListener;
            return this;
        }

        @Override // com.sinch.verification.core.config.method.VerificationMethodCreator
        public final VerificationMethodCreator<InitiationListener<? super FlashCallInitializationResponseData>> verificationListener(VerificationListener verificationListener) {
            p.c(verificationListener, "verificationListener");
            this.verificationListener = verificationListener;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private FlashCallVerificationMethod(FlashCallVerificationConfig flashCallVerificationConfig, InitiationListener<? super FlashCallInitializationResponseData> initiationListener, VerificationListener verificationListener) {
        super(flashCallVerificationConfig, verificationListener);
        this.config = flashCallVerificationConfig;
        this.initializationListener = initiationListener;
        this.initiationStartDate = new Date();
    }

    /* synthetic */ FlashCallVerificationMethod(FlashCallVerificationConfig flashCallVerificationConfig, EmptyInitializationListener emptyInitializationListener, EmptyVerificationListener emptyVerificationListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(flashCallVerificationConfig, (i & 2) != 0 ? new EmptyInitializationListener() : emptyInitializationListener, (i & 4) != 0 ? new EmptyVerificationListener() : emptyVerificationListener);
    }

    public /* synthetic */ FlashCallVerificationMethod(FlashCallVerificationConfig flashCallVerificationConfig, InitiationListener initiationListener, VerificationListener verificationListener, DefaultConstructorMarker defaultConstructorMarker) {
        this(flashCallVerificationConfig, initiationListener, verificationListener);
    }

    private final FlashCallVerificationInitializationData getRequestDataData() {
        return new FlashCallVerificationInitializationData(new VerificationIdentity(this.config.getNumber(), (VerificationIdentityType) null, 2, (DefaultConstructorMarker) null), this.config.getHonourEarlyReject(), this.config.getCustom(), this.config.getReference(), this.config.getMetadataFactory().create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializeInterceptor(FlashCallInitializationResponseData flashCallInitializationResponseData) {
        try {
            Context context = this.config.getGlobalConfig().getContext();
            long interceptionTimeout = flashCallInitializationResponseData.getDetails().getInterceptionTimeout();
            FlashCallPatternMatcher flashCallPatternMatcher = new FlashCallPatternMatcher(flashCallInitializationResponseData.getDetails().getCliFilter());
            ContentResolver contentResolver = this.config.getGlobalConfig().getContext().getContentResolver();
            p.a((Object) contentResolver, "config.globalConfig.context.contentResolver");
            setCodeInterceptor(new FlashCallInterceptor(context, flashCallPatternMatcher, new ContentProviderCallHistoryReader(contentResolver), this.initiationStartDate, flashCallInitializationResponseData.getDetails().getReportTimeout(), interceptionTimeout, this));
            FlashCallInterceptor codeInterceptor = getCodeInterceptor();
            if (codeInterceptor != null) {
                codeInterceptor.start();
            }
        } catch (Exception e) {
            getVerificationListener().onVerificationFailed(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.sinch.verification.core.config.method.AutoInterceptedVerificationMethod
    public final FlashCallInterceptor getCodeInterceptor() {
        return this.codeInterceptor;
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptionListener
    public final void onCodeIntercepted(String code, VerificationSourceType source) {
        p.c(code, "code");
        p.c(source, "source");
        VerificationMethod.verify$default(this, code, source, null, 4, null);
    }

    @Override // com.sinch.verification.core.verification.interceptor.CodeInterceptionListener
    public final void onCodeInterceptionError(Throwable e) {
        p.c(e, "e");
        getVerificationListener().onVerificationFailed(e);
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethod
    public final void onInitiate() {
        CallExtensionsKt.enqueue(getVerificationService().initializeVerification(getRequestDataData()), getRetrofit(), new InitiationApiCallback(this.initializationListener, this, null, new FlashCallVerificationMethod$onInitiate$1(this), 4, null));
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethod
    public final boolean onPreInitiate() {
        if (!PermissionUtils.INSTANCE.isPermissionGranted(getGlobalConfig().getContext(), Permission.READ_CALL_LOG)) {
            InitiationListener<FlashCallInitializationResponseData> initiationListener = this.initializationListener;
            initiationListener.onInitializationFailed(new VerificationException("Missing " + Permission.READ_CALL_LOG));
        }
        this.initiationStartDate = new Date();
        return true;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethod
    public final void onVerify(String verificationCode, VerificationSourceType sourceType, VerificationMethodType verificationMethodType) {
        p.c(verificationCode, "verificationCode");
        p.c(sourceType, "sourceType");
        CallExtensionsKt.enqueue(getVerificationService().verifyNumber(this.config.getNumber(), new FlashCallVerificationData(sourceType, new FlashCallVerificationDetails(verificationCode))), getRetrofit(), new VerificationApiCallback(getVerificationListener(), this, null, 4, null));
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethod
    public final void report() {
        super.report();
        FlashCallInterceptor codeInterceptor = getCodeInterceptor();
        if (codeInterceptor != null) {
            FlashCallVerificationService verificationService = getVerificationService();
            String number = this.config.getNumber();
            boolean z = true;
            boolean z2 = codeInterceptor.getCodeInterceptionState() == CodeInterceptionState.LATE;
            if (codeInterceptor.getCodeInterceptionState() != CodeInterceptionState.NONE) {
                z = false;
            }
            FlashCallReportData flashCallReportData = new FlashCallReportData(new FlashCallReportDetails(z2, z));
            Logger.DefaultImpls.debug$default(getLogger(), "Reporting flashCall verification status. Data: ".concat(String.valueOf(flashCallReportData)), null, 2, null);
            CallExtensionsKt.enqueue(verificationService.reportVerification(number, flashCallReportData), getRetrofit(), new IgnoredApiCallback());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setCodeInterceptor(FlashCallInterceptor flashCallInterceptor) {
        this.codeInterceptor = flashCallInterceptor;
    }
}
