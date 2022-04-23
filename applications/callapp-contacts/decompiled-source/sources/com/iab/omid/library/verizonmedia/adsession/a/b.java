package com.iab.omid.library.verizonmedia.adsession.a;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a/b.class */
public enum b {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE("standalone");
    
    private final String position;

    b(String str) {
        this.position = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.position;
    }
}
