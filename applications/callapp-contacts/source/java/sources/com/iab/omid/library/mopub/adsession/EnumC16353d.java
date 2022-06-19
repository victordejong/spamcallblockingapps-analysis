package com.iab.omid.library.mopub.adsession;

import com.mopub.common.AdType;
/* renamed from: com.iab.omid.library.mopub.adsession.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/d.class */
public enum EnumC16353d {
    HTML(AdType.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");
    
    private final String typeString;

    EnumC16353d(String str) {
        this.typeString = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.typeString;
    }
}
