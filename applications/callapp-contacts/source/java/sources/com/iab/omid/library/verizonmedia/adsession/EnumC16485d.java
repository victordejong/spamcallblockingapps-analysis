package com.iab.omid.library.verizonmedia.adsession;

import com.mopub.common.AdType;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/d.class */
public enum EnumC16485d {
    HTML(AdType.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");
    
    private final String typeString;

    EnumC16485d(String str) {
        this.typeString = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.typeString;
    }
}
