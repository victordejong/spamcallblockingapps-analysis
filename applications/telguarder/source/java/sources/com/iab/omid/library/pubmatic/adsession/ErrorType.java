package com.iab.omid.library.pubmatic.adsession;

import com.facebook.share.internal.MessengerShareContentUtility;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/ErrorType.class */
public enum ErrorType {
    GENERIC(MessengerShareContentUtility.TEMPLATE_GENERIC_TYPE),
    VIDEO("video");
    
    private final String errorType;

    ErrorType(String str) {
        this.errorType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.errorType;
    }
}
