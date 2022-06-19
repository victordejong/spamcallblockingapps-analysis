package com.iab.omid.library.mopub.adsession.p429a;
/* renamed from: com.iab.omid.library.mopub.adsession.a.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/a.class */
public enum EnumC16346a {
    CLICK("click"),
    INVITATION_ACCEPTED("invitationAccept");
    
    String interactionType;

    EnumC16346a(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.interactionType;
    }
}
