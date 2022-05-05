package zendesk.support;

import android.support.annotation.Nullable;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/support/UploadResponse.class */
public class UploadResponse {
    private Attachment attachment;
    private Date expiresAt;
    private String token;

    @Nullable
    public Attachment getAttachment() {
        return this.attachment;
    }

    @Nullable
    public Date getExpiresAt() {
        return this.expiresAt == null ? null : new Date(this.expiresAt.getTime());
    }

    @Nullable
    public String getToken() {
        return this.token;
    }
}
