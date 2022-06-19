package com.iab.omid.library.applovin.adsession;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/ErrorType.class */
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
