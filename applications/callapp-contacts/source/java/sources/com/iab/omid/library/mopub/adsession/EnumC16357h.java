package com.iab.omid.library.mopub.adsession;
/* renamed from: com.iab.omid.library.mopub.adsession.h */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/h.class */
public enum EnumC16357h {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE("none");
    
    private final String owner;

    EnumC16357h(String str) {
        this.owner = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.owner;
    }
}
