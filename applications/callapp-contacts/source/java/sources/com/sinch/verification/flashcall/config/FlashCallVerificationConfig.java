package com.sinch.verification.flashcall.config;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.AdType;
import com.sinch.logging.Logger;
import com.sinch.verification.core.BaseVerificationMethodConfigBuilder;
import com.sinch.verification.core.config.GlobalConfigSetter;
import com.sinch.verification.core.config.InitialSetter;
import com.sinch.verification.core.config.general.GlobalConfig;
import com.sinch.verification.core.config.method.VerificationMethodConfig;
import com.sinch.verification.core.verification.VerificationLanguage;
import com.sinch.verification.flashcall.FlashCallVerificationService;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB9\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000b¨\u0006\r"}, m4298d2 = {"Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;", "Lcom/sinch/verification/core/config/method/VerificationMethodConfig;", "Lcom/sinch/verification/flashcall/FlashCallVerificationService;", "globalConfig", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "number", "", "honourEarlyReject", "", AdType.CUSTOM, "reference", "(Lcom/sinch/verification/core/config/general/GlobalConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "Builder", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/config/FlashCallVerificationConfig.class */
public final class FlashCallVerificationConfig extends VerificationMethodConfig<FlashCallVerificationService> {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018�� \u00122\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020��2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020��2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\fH\u0016J\u0012\u0010\u0011\u001a\u00020��2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��¨\u0006\u0013"}, m4298d2 = {"Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;", "Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;", "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;", "()V", "globalConfig", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "acceptedLanguages", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;", AdType.CUSTOM, "", "Lcom/sinch/verification/core/config/InitialSetter;", "honourEarlyReject", "", "number", "reference", "Companion", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder.class */
    public static final class Builder extends BaseVerificationMethodConfigBuilder<FlashCallVerificationConfigCreator> implements FlashCallVerificationConfigCreator {
        public static final Companion Companion = new Companion(null);
        private GlobalConfig globalConfig;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, m4298d2 = {"Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion;", "", "()V", "instance", "Lcom/sinch/verification/core/config/GlobalConfigSetter;", "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfigCreator;", "instance$annotations", "getInstance", "()Lcom/sinch/verification/core/config/GlobalConfigSetter;", "invoke", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ void instance$annotations() {
            }

            public final GlobalConfigSetter<FlashCallVerificationConfigCreator> getInstance() {
                return new Builder(null);
            }

            public final GlobalConfigSetter<FlashCallVerificationConfigCreator> invoke() {
                return getInstance();
            }
        }

        private Builder() {
        }

        public /* synthetic */ Builder(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final GlobalConfigSetter<FlashCallVerificationConfigCreator> getInstance() {
            return Companion.getInstance();
        }

        @Override // com.sinch.verification.core.config.VerificationMethodConfigCreatorParameters
        public final Builder acceptedLanguages(List<VerificationLanguage> acceptedLanguages) {
            C18524p.m3841c(acceptedLanguages, "acceptedLanguages");
            Logger.DefaultImpls.debug$default(getLogger(), "This verification method currently does not support accepted languages", null, 2, null);
            return this;
        }

        @Override // com.sinch.verification.core.config.VerificationMethodConfigCreator
        public final FlashCallVerificationConfig build() {
            GlobalConfig globalConfig = this.globalConfig;
            if (globalConfig == null) {
                C18524p.m3848a("globalConfig");
            }
            return new FlashCallVerificationConfig(globalConfig, getNumber(), getHonourEarlyReject(), getCustom(), getReference());
        }

        @Override // com.sinch.verification.core.config.VerificationMethodConfigCreatorParameters
        public final Builder custom(String str) {
            Builder builder = this;
            builder.setCustom(str);
            return builder;
        }

        @Override // com.sinch.verification.core.config.GlobalConfigSetter
        public final InitialSetter<FlashCallVerificationConfigCreator> globalConfig(GlobalConfig globalConfig) {
            C18524p.m3841c(globalConfig, "globalConfig");
            this.globalConfig = globalConfig;
            return this;
        }

        @Override // com.sinch.verification.core.config.VerificationMethodConfigCreatorParameters
        public final Builder honourEarlyReject(boolean z) {
            Builder builder = this;
            builder.setHonourEarlyReject(z);
            return builder;
        }

        @Override // com.sinch.verification.core.config.InitialSetter
        public final FlashCallVerificationConfigCreator number(String number) {
            C18524p.m3841c(number, "number");
            setNumber(number);
            return this;
        }

        @Override // com.sinch.verification.core.config.VerificationMethodConfigCreatorParameters
        public final Builder reference(String str) {
            Builder builder = this;
            builder.setReference(str);
            return builder;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FlashCallVerificationConfig(com.sinch.verification.core.config.general.GlobalConfig r15, java.lang.String r16, boolean r17, java.lang.String r18, java.lang.String r19) {
        /*
            r14 = this;
            r0 = r15
            java.lang.String r1 = "globalConfig"
            kotlin.jvm.internal.C18524p.m3841c(r0, r1)
            r0 = r16
            java.lang.String r1 = "number"
            kotlin.jvm.internal.C18524p.m3841c(r0, r1)
            r0 = r15
            retrofit2.Retrofit r0 = r0.getRetrofit()
            java.lang.Class<com.sinch.verification.flashcall.FlashCallVerificationService> r1 = com.sinch.verification.flashcall.FlashCallVerificationService.class
            java.lang.Object r0 = r0.m109a(r1)
            r20 = r0
            r0 = r20
            java.lang.String r1 = "globalConfig.retrofit.cr…ationService::class.java)"
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            r0 = r14
            r1 = r16
            r2 = r18
            r3 = r19
            r4 = r17
            kotlin.a.z r5 = kotlin.p518a.C18297z.f63400a
            java.util.List r5 = (java.util.List) r5
            r6 = r20
            r7 = r15
            com.sinch.metadata.AndroidMetadataFactory r8 = new com.sinch.metadata.AndroidMetadataFactory
            r9 = r8
            r10 = r15
            android.content.Context r10 = r10.getContext()
            java.lang.String r11 = "2.1.3"
            java.lang.String r12 = "production"
            r9.<init>(r10, r11, r12)
            com.sinch.verification.utils.Factory r8 = (com.sinch.verification.utils.Factory) r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sinch.verification.flashcall.config.FlashCallVerificationConfig.<init>(com.sinch.verification.core.config.general.GlobalConfig, java.lang.String, boolean, java.lang.String, java.lang.String):void");
    }

    public /* synthetic */ FlashCallVerificationConfig(GlobalConfig globalConfig, String str, boolean z, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(globalConfig, str, (i & 4) != 0 ? true : z, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3);
    }
}
