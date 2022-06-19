package com.sinch.verification.core;

import com.mopub.common.AdType;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.core.config.GlobalConfigSetter;
import com.sinch.verification.core.config.InitialSetter;
import com.sinch.verification.core.config.VerificationMethodConfigCreator;
import com.sinch.verification.core.config.VerificationMethodConfigCreatorParameters;
import com.sinch.verification.core.config.method.VerificationMethodProperties;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018��*\u0012\b��\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005¢\u0006\u0002\u0010\u0006R \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u000fX\u0084.¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u0011\"\u0004\b \u0010\u0013R\u001c\u0010!\u001a\u0004\u0018\u00010\u000fX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013¨\u0006$"}, m4298d2 = {"Lcom/sinch/verification/core/BaseVerificationMethodConfigBuilder;", "T", "Lcom/sinch/verification/core/config/VerificationMethodConfigCreator;", "Lcom/sinch/verification/core/config/GlobalConfigSetter;", "Lcom/sinch/verification/core/config/InitialSetter;", "Lcom/sinch/verification/core/config/VerificationMethodConfigCreatorParameters;", "()V", "acceptedLanguages", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", "getAcceptedLanguages", "()Ljava/util/List;", "setAcceptedLanguages", "(Ljava/util/List;)V", AdType.CUSTOM, "", "getCustom", "()Ljava/lang/String;", "setCustom", "(Ljava/lang/String;)V", "honourEarlyReject", "", "getHonourEarlyReject", "()Z", "setHonourEarlyReject", "(Z)V", "logger", "Lcom/sinch/logging/Logger;", "getLogger", "()Lcom/sinch/logging/Logger;", "number", "getNumber", "setNumber", "reference", "getReference", "setReference", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/BaseVerificationMethodConfigBuilder.class */
public abstract class BaseVerificationMethodConfigBuilder<T extends VerificationMethodConfigCreator<T, ?>> implements GlobalConfigSetter<T>, InitialSetter<T>, VerificationMethodConfigCreatorParameters<T> {
    private String custom;
    protected String number;
    private String reference;
    private final Logger logger = LogKt.logger(this);
    private boolean honourEarlyReject = true;
    private List<VerificationLanguage> acceptedLanguages = C18297z.f63400a;

    protected final List<VerificationLanguage> getAcceptedLanguages() {
        return this.acceptedLanguages;
    }

    public final String getCustom() {
        return this.custom;
    }

    public final boolean getHonourEarlyReject() {
        return this.honourEarlyReject;
    }

    public final Logger getLogger() {
        return this.logger;
    }

    public final String getNumber() {
        String str = this.number;
        if (str == null) {
            C18524p.m3848a("number");
        }
        return str;
    }

    public final String getReference() {
        return this.reference;
    }

    protected final void setAcceptedLanguages(List<VerificationLanguage> list) {
        C18524p.m3841c(list, "<set-?>");
        this.acceptedLanguages = list;
    }

    public final void setCustom(String str) {
        this.custom = str;
    }

    public final void setHonourEarlyReject(boolean z) {
        this.honourEarlyReject = z;
    }

    public final void setNumber(String str) {
        C18524p.m3841c(str, "<set-?>");
        this.number = str;
    }

    public final void setReference(String str) {
        this.reference = str;
    }

    @Override // com.sinch.verification.core.config.InitialSetter
    public T withVerificationProperties(VerificationMethodProperties verificationMethodProperties) {
        C18524p.m3841c(verificationMethodProperties, "verificationMethodProperties");
        return (T) InitialSetter.DefaultImpls.withVerificationProperties(this, verificationMethodProperties);
    }
}
