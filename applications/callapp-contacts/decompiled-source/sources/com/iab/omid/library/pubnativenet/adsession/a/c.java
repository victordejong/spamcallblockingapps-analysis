package com.iab.omid.library.pubnativenet.adsession.a;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/a/c.class */
public enum c {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE("standalone");
    
    private final String position;

    c(String str) {
        this.position = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.position;
    }
}
