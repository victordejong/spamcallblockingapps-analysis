package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Date;
import java.util.List;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Request.class */
public class Request {
    public List<Long> collaboratorIds;
    public EndUserComment comment;
    public Integer commentCount;
    public Date createdAt;
    public List<CustomField> customFields;
    public String description;
    public Date dueAt;
    public Comment firstComment;

    /* renamed from: id */
    public String f33480id;
    public Comment lastComment;
    public List<User> lastCommentingAgents;
    public List<Long> lastCommentingAgentsIds;
    public Long organizationId;
    public String priority;
    public Date publicUpdatedAt;
    public Long requesterId;
    public RequestStatus status;
    public String subject;
    public String type;
    public Date updatedAt;
    public String url;

    public Request() {
    }

    @VisibleForTesting
    public Request(String str, RequestStatus requestStatus) {
        this.f33480id = str;
        this.status = requestStatus;
    }

    @NonNull
    public List<Long> getCollaboratorIds() {
        return C10858a.m10404a((List) this.collaboratorIds);
    }

    @Nullable
    public Integer getCommentCount() {
        return this.commentCount;
    }

    @Nullable
    public Date getCreatedAt() {
        Date date = this.createdAt;
        return date == null ? null : new Date(date.getTime());
    }

    @Nullable
    public List<CustomField> getCustomFields() {
        return this.customFields;
    }

    @Nullable
    public String getDescription() {
        return this.description;
    }

    @Nullable
    public Date getDueAt() {
        Date date = this.dueAt;
        return date == null ? null : new Date(date.getTime());
    }

    @Nullable
    public Comment getFirstComment() {
        return this.firstComment;
    }

    @Nullable
    public String getId() {
        return this.f33480id;
    }

    @Nullable
    public Comment getLastComment() {
        return this.lastComment;
    }

    public List<User> getLastCommentingAgents() {
        return C10858a.m10404a((List) this.lastCommentingAgents);
    }

    public List<Long> getLastCommentingAgentsIds() {
        return C10858a.m10404a((List) this.lastCommentingAgentsIds);
    }

    @Nullable
    public Long getOrganizationId() {
        return this.organizationId;
    }

    @Nullable
    public String getPriority() {
        return this.priority;
    }

    @Nullable
    public Date getPublicUpdatedAt() {
        Date date = this.publicUpdatedAt;
        return date == null ? getUpdatedAt() : new Date(date.getTime());
    }

    @Nullable
    public Long getRequesterId() {
        return this.requesterId;
    }

    @Nullable
    public RequestStatus getStatus() {
        return this.status;
    }

    @Nullable
    public String getSubject() {
        return this.subject;
    }

    @Nullable
    public String getType() {
        return this.type;
    }

    @Nullable
    public Date getUpdatedAt() {
        Date date = this.updatedAt;
        return date == null ? null : new Date(date.getTime());
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }

    public void setComment(EndUserComment endUserComment) {
        this.comment = endUserComment;
    }

    public void setLastCommentingAgents(List<User> list) {
        this.lastCommentingAgents = list;
    }
}
