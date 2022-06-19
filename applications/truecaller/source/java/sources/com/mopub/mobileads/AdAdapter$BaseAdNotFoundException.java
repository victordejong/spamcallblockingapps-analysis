package com.mopub.mobileads;

import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdAdapter$BaseAdNotFoundException.class */
public class AdAdapter$BaseAdNotFoundException extends Exception {
    public AdAdapter$BaseAdNotFoundException(Exception exc) {
        exc.getMessage();
        exc.getCause();
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "AdAdapter.create() failed with exception", exc);
    }
}
