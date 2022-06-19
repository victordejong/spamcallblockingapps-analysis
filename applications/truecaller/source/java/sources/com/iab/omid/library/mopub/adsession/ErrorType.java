package com.iab.omid.library.mopub.adsession;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/ErrorType.class */
public enum ErrorType {
    GENERIC("generic"),
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
