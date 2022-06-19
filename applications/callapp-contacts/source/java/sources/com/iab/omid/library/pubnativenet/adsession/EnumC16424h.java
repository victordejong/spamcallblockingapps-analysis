package com.iab.omid.library.pubnativenet.adsession;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.h */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/h.class */
public enum EnumC16424h {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE("none");
    
    private final String owner;

    EnumC16424h(String str) {
        this.owner = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.owner;
    }
}
