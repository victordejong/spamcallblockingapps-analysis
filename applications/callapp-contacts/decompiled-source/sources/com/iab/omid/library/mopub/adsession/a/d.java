package com.iab.omid.library.mopub.adsession.a;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/d.class */
public enum d {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE("standalone");
    
    private final String position;

    d(String str) {
        this.position = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.position;
    }
}
