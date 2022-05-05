package com.mopub.common.privacy;

import androidx.annotation.NonNull;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogListener.class */
public interface ConsentDialogListener {
    void onConsentDialogLoadFailed(@NonNull MoPubErrorCode moPubErrorCode);

    void onConsentDialogLoaded();
}
