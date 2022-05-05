package zendesk.support;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/support/CreateRequest.class */
public class CreateRequest {
    public static final transient String METADATA_SDK_KEY = "sdk";
    public Comment comment;
    public List<CustomField> customFields;

    /* renamed from: id */
    public String f33479id;
    public Map<String, Map<String, String>> metadata;
    public String subject;
    public List<String> tags;
    public Long ticketFormId;

    public List<CustomField> getCustomFields() {
        return this.customFields;
    }

    @Nullable
    public String getDescription() {
        Comment comment = this.comment;
        return comment == null ? null : comment.getBody();
    }

    @Nullable
    public String getId() {
        return this.f33479id;
    }

    @Nullable
    public String getSubject() {
        return this.subject;
    }

    @Nullable
    public List<String> getTags() {
        return this.tags;
    }

    public Long getTicketFormId() {
        return this.ticketFormId;
    }

    public void setAttachments(List<String> list) {
        if (this.comment == null) {
            this.comment = new Comment();
        }
        this.comment.setAttachments(list);
    }

    public void setCustomFields(List<CustomField> list) {
        this.customFields = list;
    }

    public void setDescription(String str) {
        if (this.comment == null) {
            this.comment = new Comment();
        }
        this.comment.setBody(str);
    }

    public void setId(String str) {
        this.f33479id = str;
    }

    public void setMetadata(Map<String, String> map) {
        this.metadata = new HashMap();
        this.metadata.put(METADATA_SDK_KEY, map);
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void setTicketFormId(Long l) {
        this.ticketFormId = l;
    }
}
