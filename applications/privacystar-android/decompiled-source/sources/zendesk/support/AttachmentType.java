package zendesk.support;

import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
/* loaded from: classes3-dex2jar.jar:zendesk/support/AttachmentType.class */
public enum AttachmentType {
    INLINE("inline"),
    BLOCK(BlockingOverlayService.EXTRA_BLOCK_IMMEDIATELY);
    
    private String attachmentType;

    AttachmentType(String str) {
        this.attachmentType = str;
    }

    public String getAttachmentType() {
        return this.attachmentType;
    }
}
