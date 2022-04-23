package io.bidmachine.models;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/IUserRestrictionsParams.class */
public interface IUserRestrictionsParams<SelfType> {
    SelfType setConsentConfig(boolean z, String str);

    SelfType setCoppa(Boolean bool);

    SelfType setSubjectToGDPR(Boolean bool);

    SelfType setUSPrivacyString(String str);
}
