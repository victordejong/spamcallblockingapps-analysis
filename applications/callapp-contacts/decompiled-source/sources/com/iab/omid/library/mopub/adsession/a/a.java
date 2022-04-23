package com.iab.omid.library.mopub.adsession.a;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/a.class */
public enum a {
    CLICK("click"),
    INVITATION_ACCEPTED("invitationAccept");
    
    String interactionType;

    a(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.interactionType;
    }
}
