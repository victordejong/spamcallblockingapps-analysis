package com.mopub.common.privacy;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentData.class */
public interface ConsentData {
    @Nullable
    String getConsentedPrivacyPolicyVersion();

    @Nullable
    String getConsentedVendorListIabFormat();

    @Nullable
    String getConsentedVendorListVersion();

    @NonNull
    String getCurrentPrivacyPolicyLink();

    @NonNull
    String getCurrentPrivacyPolicyLink(@Nullable String str);

    @Nullable
    String getCurrentPrivacyPolicyVersion();

    @Nullable
    String getCurrentVendorListIabFormat();

    @NonNull
    String getCurrentVendorListLink();

    @NonNull
    String getCurrentVendorListLink(@Nullable String str);

    @Nullable
    String getCurrentVendorListVersion();

    boolean isForceGdprApplies();
}
