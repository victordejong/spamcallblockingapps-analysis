package com.iab.omid.library.applovin.adsession;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/AdSessionContextType.class */
public enum AdSessionContextType {
    HTML("html"),
    NATIVE("native"),
    JAVASCRIPT("javascript");
    
    private final String typeString;

    AdSessionContextType(String str) {
        this.typeString = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.typeString;
    }
}
