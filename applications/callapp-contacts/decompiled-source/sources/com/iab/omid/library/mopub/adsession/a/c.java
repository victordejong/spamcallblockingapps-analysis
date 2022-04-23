package com.iab.omid.library.mopub.adsession.a;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/c.class */
public enum c {
    MINIMIZED("minimized"),
    COLLAPSED("collapsed"),
    NORMAL("normal"),
    EXPANDED("expanded"),
    FULLSCREEN("fullscreen");
    
    private final String playerState;

    c(String str) {
        this.playerState = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.playerState;
    }
}
