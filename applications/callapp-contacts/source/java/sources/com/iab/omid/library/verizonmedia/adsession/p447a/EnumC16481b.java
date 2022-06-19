package com.iab.omid.library.verizonmedia.adsession.p447a;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.a.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a/b.class */
public enum EnumC16481b {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE("standalone");
    
    private final String position;

    EnumC16481b(String str) {
        this.position = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.position;
    }
}
