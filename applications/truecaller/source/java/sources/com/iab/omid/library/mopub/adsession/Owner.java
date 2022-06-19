package com.iab.omid.library.mopub.adsession;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/Owner.class */
public enum Owner {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE("none");
    
    private final String owner;

    Owner(String str) {
        this.owner = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.owner;
    }
}
