package com.applovin.impl.sdk;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.sdk.AppLovinSdkConfiguration;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/SdkConfigurationImpl.class */
public class SdkConfigurationImpl implements AppLovinSdkConfiguration {

    /* renamed from: a */
    private final C1408l f4489a;

    public SdkConfigurationImpl(C1408l c1408l) {
        this.f4489a = c1408l;
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    public AppLovinSdkConfiguration.ConsentDialogState getConsentDialogState() {
        String str = (String) this.f4489a.m5511a(C1314b.f4944eQ);
        return "applies".equalsIgnoreCase(str) ? AppLovinSdkConfiguration.ConsentDialogState.APPLIES : "does_not_apply".equalsIgnoreCase(str) ? AppLovinSdkConfiguration.ConsentDialogState.DOES_NOT_APPLY : AppLovinSdkConfiguration.ConsentDialogState.UNKNOWN;
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    public String getCountryCode() {
        return (String) this.f4489a.m5511a(C1314b.f4945eR);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinSdkConfiguration{consentDialogState=");
        m8752j.append(getConsentDialogState());
        m8752j.append(", countryCode=");
        m8752j.append(getCountryCode());
        m8752j.append('}');
        return m8752j.toString();
    }
}
