package com.iab.omid.library.mopub.adsession;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/h.class */
public enum h {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE("none");
    
    private final String owner;

    h(String str) {
        this.owner = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.owner;
    }
}
