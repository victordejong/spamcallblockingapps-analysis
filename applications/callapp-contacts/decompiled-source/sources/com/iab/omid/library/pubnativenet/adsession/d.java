package com.iab.omid.library.pubnativenet.adsession;

import com.mopub.common.AdType;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/d.class */
public enum d {
    HTML(AdType.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");
    
    private final String typeString;

    d(String str) {
        this.typeString = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.typeString;
    }
}
