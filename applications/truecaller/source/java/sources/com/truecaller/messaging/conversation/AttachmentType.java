package com.truecaller.messaging.conversation;

import com.truecaller.C2752R;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/AttachmentType.class */
public enum AttachmentType {
    IMAGE(true, 0, 0),
    GIF(true, 0, 0),
    AUDIO(true, C2752R.C2753drawable.ic_attachment_audio_20dp, C2752R.string.ConversationAttachmentAudio),
    VIDEO(true, C2752R.C2753drawable.ic_attachment_video_20dp, C2752R.string.ConversationAttachmentVideo),
    VCARD(true, C2752R.C2753drawable.ic_attachment_vcard_20dp, C2752R.string.ConversationAttachmentContact),
    PENDING_MMS(true, C2752R.C2753drawable.ic_attachment_unknown_20dp, C2752R.string.DialogSendGroupSmsButtonMms),
    DOCUMENT(true, C2752R.C2753drawable.ic_attachment_document_20dp, C2752R.string.ConversationAttachmentDocument),
    LOCATION(true, C2752R.C2753drawable.ic_location_tcx, C2752R.string.ConversationAttachmentLocation),
    UNKNOWN(false, C2752R.C2753drawable.ic_attachment_unknown_20dp, C2752R.string.ConversationAttachmentUnsupported);
    
    public final int icon;
    public final boolean supported;
    public final int title;

    AttachmentType(boolean z, int i, int i2) {
        this.supported = z;
        this.icon = i;
        this.title = i2;
    }
}
