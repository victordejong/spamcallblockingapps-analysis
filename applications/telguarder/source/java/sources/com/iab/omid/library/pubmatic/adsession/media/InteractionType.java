package com.iab.omid.library.pubmatic.adsession.media;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/media/InteractionType.class */
public enum InteractionType {
    CLICK("click"),
    INVITATION_ACCEPTED("invitationAccept");
    
    String interactionType;

    InteractionType(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.interactionType;
    }
}
