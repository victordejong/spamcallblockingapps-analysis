package com.iab.omid.library.pubmatic.adsession.media;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/media/Position.class */
public enum Position {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE("standalone");
    
    private final String position;

    Position(String str) {
        this.position = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.position;
    }
}
