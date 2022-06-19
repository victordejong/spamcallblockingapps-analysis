package com.iab.omid.library.pubnativenet.adsession.p438a;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.a.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/a/a.class */
public enum EnumC16414a {
    CLICK("click"),
    INVITATION_ACCEPTED("invitationAccept");
    
    String interactionType;

    EnumC16414a(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.interactionType;
    }
}
