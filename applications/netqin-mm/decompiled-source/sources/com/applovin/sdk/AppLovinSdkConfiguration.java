package com.applovin.sdk;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdkConfiguration.class */
public interface AppLovinSdkConfiguration {

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdkConfiguration$ConsentDialogState.class */
    public enum ConsentDialogState {
        UNKNOWN,
        APPLIES,
        DOES_NOT_APPLY
    }

    ConsentDialogState getConsentDialogState();
}
