package com.mopub.common.privacy;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentData.class */
public interface ConsentData {
    String chooseAdUnit();

    String getConsentedPrivacyPolicyVersion();

    String getConsentedVendorListIabFormat();

    String getConsentedVendorListVersion();

    String getCurrentPrivacyPolicyLink();

    String getCurrentPrivacyPolicyLink(String str);

    String getCurrentPrivacyPolicyVersion();

    String getCurrentVendorListIabFormat();

    String getCurrentVendorListLink();

    String getCurrentVendorListLink(String str);

    String getCurrentVendorListVersion();

    boolean isForceGdprApplies();
}
