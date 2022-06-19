package com.iab.omid.library.verizonmedia.adsession;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.h */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/h.class */
public enum EnumC16489h {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE("none");
    
    private final String owner;

    EnumC16489h(String str) {
        this.owner = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.owner;
    }
}
