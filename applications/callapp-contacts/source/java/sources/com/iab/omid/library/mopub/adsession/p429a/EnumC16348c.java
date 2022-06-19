package com.iab.omid.library.mopub.adsession.p429a;
/* renamed from: com.iab.omid.library.mopub.adsession.a.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/c.class */
public enum EnumC16348c {
    MINIMIZED("minimized"),
    COLLAPSED("collapsed"),
    NORMAL("normal"),
    EXPANDED("expanded"),
    FULLSCREEN("fullscreen");
    
    private final String playerState;

    EnumC16348c(String str) {
        this.playerState = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.playerState;
    }
}
