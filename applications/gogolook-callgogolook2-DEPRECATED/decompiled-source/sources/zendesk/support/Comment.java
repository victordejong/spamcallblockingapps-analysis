package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Comment.class */
public class Comment {
    @AbstractC10120c("uploads")
    public List<String> attachments;
    public Long authorId;
    public String body;
    public Date createdAt;
    public String htmlBody;

    /* renamed from: id */
    public Long f33478id;
    @AbstractC10120c("public")
    public boolean isPublic = true;
    public String requestId;
    public String url;

    @NonNull
    public List<String> getAttachments() {
        return C10858a.m10404a((List) this.attachments);
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
        Date date = this.createdAt;
        return date == null ? null : new Date(date.getTime());
    }

    @Nullable
    public String getHtmlBody() {
        return this.htmlBody;
    }

    @Nullable
    public Long getId() {
        return this.f33478id;
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

    public void setAttachments(List<String> list) {
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
}
