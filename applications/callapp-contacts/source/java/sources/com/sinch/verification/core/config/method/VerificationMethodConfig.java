package com.sinch.verification.core.config.method;

import com.mopub.common.AdType;
import com.sinch.metadata.model.PhoneMetadata;
import com.sinch.verification.core.config.general.GlobalConfig;
import com.sinch.verification.core.verification.VerificationLanguage;
import com.sinch.verification.utils.Factory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002BY\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\f\u001a\u00028��\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0010\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012¢\u0006\u0002\u0010\u0013J\b\u0010#\u001a\u00020\u0004H\u0016R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\f\u001a\u00028��¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010\u000f\u001a\f\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b!\u0010\u001aR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\"\u0010\u001a¨\u0006$"}, m4298d2 = {"Lcom/sinch/verification/core/config/method/VerificationMethodConfig;", "ApiService", "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;", "number", "", AdType.CUSTOM, "reference", "honourEarlyReject", "", "acceptedLanguages", "", "Lcom/sinch/verification/core/verification/VerificationLanguage;", "apiService", "globalConfig", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "metadataFactory", "Lcom/sinch/verification/utils/Factory;", "Lcom/sinch/metadata/model/PhoneMetadata;", "Lcom/sinch/metadata/model/PhoneMetadataFactory;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/Object;Lcom/sinch/verification/core/config/general/GlobalConfig;Lcom/sinch/verification/utils/Factory;)V", "getAcceptedLanguages", "()Ljava/util/List;", "getApiService", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getCustom", "()Ljava/lang/String;", "getGlobalConfig", "()Lcom/sinch/verification/core/config/general/GlobalConfig;", "getHonourEarlyReject", "()Z", "getMetadataFactory", "()Lcom/sinch/verification/utils/Factory;", "getNumber", "getReference", "toString", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/method/VerificationMethodConfig.class */
public abstract class VerificationMethodConfig<ApiService> implements VerificationMethodProperties {
    private final List<VerificationLanguage> acceptedLanguages;
    private final ApiService apiService;
    private final String custom;
    private final GlobalConfig globalConfig;
    private final boolean honourEarlyReject;
    private final Factory<PhoneMetadata> metadataFactory;
    private final String number;
    private final String reference;

    public VerificationMethodConfig(String number, String str, String str2, boolean z, List<VerificationLanguage> acceptedLanguages, ApiService apiservice, GlobalConfig globalConfig, Factory<PhoneMetadata> metadataFactory) {
        C18524p.m3841c(number, "number");
        C18524p.m3841c(acceptedLanguages, "acceptedLanguages");
        C18524p.m3841c(globalConfig, "globalConfig");
        C18524p.m3841c(metadataFactory, "metadataFactory");
        this.number = number;
        this.custom = str;
        this.reference = str2;
        this.honourEarlyReject = z;
        this.acceptedLanguages = acceptedLanguages;
        this.apiService = apiservice;
        this.globalConfig = globalConfig;
        this.metadataFactory = metadataFactory;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public List<VerificationLanguage> getAcceptedLanguages() {
        return this.acceptedLanguages;
    }

    public final ApiService getApiService() {
        return this.apiService;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public String getCustom() {
        return this.custom;
    }

    public final GlobalConfig getGlobalConfig() {
        return this.globalConfig;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public boolean getHonourEarlyReject() {
        return this.honourEarlyReject;
    }

    public final Factory<PhoneMetadata> getMetadataFactory() {
        return this.metadataFactory;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public String getNumber() {
        return this.number;
    }

    @Override // com.sinch.verification.core.config.method.VerificationMethodProperties
    public String getReference() {
        return this.reference;
    }

    public String toString() {
        return "Number: " + getNumber() + " custom: " + getCustom() + " reference: " + getReference() + " honourEarlyReject: " + getHonourEarlyReject() + " acceptedLanguages: " + getAcceptedLanguages();
    }
}
