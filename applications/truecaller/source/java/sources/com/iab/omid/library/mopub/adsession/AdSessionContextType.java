package com.iab.omid.library.mopub.adsession;

import com.mopub.common.AdType;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/AdSessionContextType.class */
public enum AdSessionContextType {
    HTML(AdType.HTML),
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
