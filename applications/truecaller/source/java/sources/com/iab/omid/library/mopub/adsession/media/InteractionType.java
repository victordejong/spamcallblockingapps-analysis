package com.iab.omid.library.mopub.adsession.media;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/media/InteractionType.class */
public enum InteractionType {
    CLICK("click"),
    INVITATION_ACCEPTED("invitationAccept");
    
    public String interactionType;

    InteractionType(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.interactionType;
    }
}
