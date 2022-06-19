package com.truecaller.android.sdk.models;

import e.m.e.d0.b;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/models/VerifyInstallationModel.class */
public class VerifyInstallationModel {
    @b("countryCodeName")
    private final String mCountryCodeName;
    @b("phoneNumber")
    private final String mPhoneNumber;
    @b("secretToken")
    public final String mSecretToken;
    @b("verificationToken")
    private final String mVerificationToken;

    public VerifyInstallationModel(String str, String str2, String str3, String str4) {
        this.mVerificationToken = str;
        this.mPhoneNumber = str2;
        this.mCountryCodeName = str3;
        this.mSecretToken = str4;
    }
}
