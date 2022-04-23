package zendesk.support;

import android.support.annotation.Nullable;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterAttachment.class */
public class HelpCenterAttachment {
    private Long articleId;
    private String contentType;
    private String contentUrl;
    private Date createdAt;
    private String fileName;

    /* renamed from: id */
    private Long f1843id;
    private Long size;
    private Date updatedAt;
    private String url;

    @Nullable
    public Long getArticleId() {
        return this.articleId;
    }

    @Nullable
    public String getContentType() {
        return this.contentType;
    }

    @Nullable
    public String getContentUrl() {
        return this.contentUrl;
    }

    @Nullable
    public Date getCreatedAt() {
        return this.createdAt == null ? null : new Date(this.createdAt.getTime());
    }

    @Nullable
    public String getFileName() {
        return this.fileName;
    }

    @Nullable
    public Long getId() {
        return this.f1843id;
    }

    @Nullable
    public Long getSize() {
        return this.size;
    }

    @Nullable
    public Date getUpdatedAt() {
        return this.updatedAt == null ? null : new Date(this.updatedAt.getTime());
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }
}
