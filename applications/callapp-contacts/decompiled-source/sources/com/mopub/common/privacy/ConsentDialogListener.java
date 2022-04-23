package com.mopub.common.privacy;

import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogListener.class */
public interface ConsentDialogListener {
    void onConsentDialogLoadFailed(MoPubErrorCode moPubErrorCode);

    void onConsentDialogLoaded();
}
