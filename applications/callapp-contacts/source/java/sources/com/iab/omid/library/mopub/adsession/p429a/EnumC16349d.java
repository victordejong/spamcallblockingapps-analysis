package com.iab.omid.library.mopub.adsession.p429a;
/* renamed from: com.iab.omid.library.mopub.adsession.a.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/d.class */
public enum EnumC16349d {
    PREROLL("preroll"),
    MIDROLL("midroll"),
    POSTROLL("postroll"),
    STANDALONE("standalone");
    
    private final String position;

    EnumC16349d(String str) {
        this.position = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.position;
    }
}
