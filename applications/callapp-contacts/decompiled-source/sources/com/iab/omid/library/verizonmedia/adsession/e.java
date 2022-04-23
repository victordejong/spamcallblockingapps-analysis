package com.iab.omid.library.verizonmedia.adsession;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/e.class */
public enum e {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    HTML_DISPLAY("htmlDisplay"),
    NATIVE_DISPLAY("nativeDisplay"),
    VIDEO("video"),
    AUDIO("audio");
    
    private final String creativeType;

    e(String str) {
        this.creativeType = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.creativeType;
    }
}
