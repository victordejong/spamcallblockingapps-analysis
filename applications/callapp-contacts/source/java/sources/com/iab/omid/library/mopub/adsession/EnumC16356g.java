package com.iab.omid.library.mopub.adsession;

import com.mopub.volley.BuildConfig;
/* renamed from: com.iab.omid.library.mopub.adsession.g */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/g.class */
public enum EnumC16356g {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    UNSPECIFIED(BuildConfig.VERSION_NAME),
    LOADED("loaded"),
    BEGIN_TO_RENDER("beginToRender"),
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    AUDIBLE("audible"),
    OTHER("other");
    
    private final String impressionType;

    EnumC16356g(String str) {
        this.impressionType = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.impressionType;
    }
}
