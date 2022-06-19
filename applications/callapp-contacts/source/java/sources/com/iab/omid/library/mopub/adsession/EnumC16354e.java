package com.iab.omid.library.mopub.adsession;
/* renamed from: com.iab.omid.library.mopub.adsession.e */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/e.class */
public enum EnumC16354e {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    HTML_DISPLAY("htmlDisplay"),
    NATIVE_DISPLAY("nativeDisplay"),
    VIDEO("video"),
    AUDIO("audio");
    
    private final String creativeType;

    EnumC16354e(String str) {
        this.creativeType = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.creativeType;
    }
}
