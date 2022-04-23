package zendesk.support;

import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/AttachmentResponse.class */
class AttachmentResponse {
    private List<HelpCenterAttachment> articleAttachments;

    AttachmentResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<HelpCenterAttachment> getArticleAttachments() {
        return CollectionUtils.copyOf(this.articleAttachments);
    }
}
