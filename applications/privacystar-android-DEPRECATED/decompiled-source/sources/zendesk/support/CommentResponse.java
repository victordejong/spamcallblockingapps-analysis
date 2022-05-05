package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.zendesk.util.CollectionUtils;
import java.util.Date;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/CommentResponse.class */
public class CommentResponse {
    private List<Attachment> attachments;
    private Long authorId;
    private String body;
    private Date createdAt;
    private String htmlBody;

    /* renamed from: id */
    private Long f1840id;
    @SerializedName("public")
    private boolean isPublic = true;
    private String requestId;
    private String url;

    @NonNull
    public List<Attachment> getAttachments() {
        return CollectionUtils.copyOf(this.attachments);
    }

    @Nullable
    public Long getAuthorId() {
        return this.authorId;
    }

    @Nullable
    public String getBody() {
        return this.body;
    }

    @Nullable
    public Date getCreatedAt() {
        return this.createdAt == null ? null : new Date(this.createdAt.getTime());
    }

    @Nullable
    public String getHtmlBody() {
        return this.htmlBody;
    }

    @Nullable
    public Long getId() {
        return this.f1840id;
    }

    @Nullable
    public String getRequestId() {
        return this.requestId;
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public void setAttachments(List<Attachment> list) {
        this.attachments = list;
    }

    public void setAuthorId(Long l) {
        this.authorId = l;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void setCreatedAt(Date date) {
        this.createdAt = date;
    }

    public void setId(Long l) {
        this.f1840id = l;
    }
}
