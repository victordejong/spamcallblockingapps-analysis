package com.truecaller.messaging.messaginglist;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0002\u001a\u00020��¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/truecaller/messaging/messaginglist/MarkAsReadBannerState;", "", "toggle", "()Lcom/truecaller/messaging/messaginglist/MarkAsReadBannerState;", "<init>", "(Ljava/lang/String;I)V", "ALL", "UNREAD", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/messaginglist/MarkAsReadBannerState.class */
public enum MarkAsReadBannerState {
    ALL,
    UNREAD;

    public final MarkAsReadBannerState toggle() {
        MarkAsReadBannerState markAsReadBannerState = ALL;
        MarkAsReadBannerState markAsReadBannerState2 = markAsReadBannerState;
        if (this == markAsReadBannerState) {
            markAsReadBannerState2 = UNREAD;
        }
        return markAsReadBannerState2;
    }
}
