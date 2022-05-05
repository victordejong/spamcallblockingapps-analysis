package zendesk.support.request;

import android.support.p001v4.util.Pair;
import com.zendesk.service.ErrorResponse;
import com.zendesk.util.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import zendesk.support.Attachment;
import zendesk.support.CommentResponse;
import zendesk.support.IdUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateMessage.class */
public class StateMessage implements Serializable {
    private final List<StateRequestAttachment> attachments;
    private final Date date;
    private final String htmlBody;

    /* renamed from: id */
    private final long f1895id;
    private final String plainBody;
    private final StateMessageStatus state;
    private final long userId;

    StateMessage(String str, String str2, Date date, long j, long j2, StateMessageStatus stateMessageStatus, List<StateRequestAttachment> list) {
        this.htmlBody = str;
        this.plainBody = str2;
        this.date = date;
        this.f1895id = j;
        this.userId = j2;
        this.state = stateMessageStatus;
        this.attachments = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMessage(String str, List<StateRequestAttachment> list) {
        this.htmlBody = null;
        this.plainBody = str;
        this.date = new Date();
        this.f1895id = IdUtil.newLongId();
        this.userId = -1L;
        this.state = StateMessageStatus.pending();
        this.attachments = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair<List<StateMessage>, StateIdMapper> convert(List<CommentResponse> list, StateIdMapper stateIdMapper, Map<Long, StateRequestAttachment> map) {
        long j;
        ArrayList arrayList = new ArrayList(list.size());
        StateIdMapper stateIdMapper2 = stateIdMapper;
        for (CommentResponse commentResponse : list) {
            Long id = commentResponse.getId();
            Long authorId = commentResponse.getAuthorId();
            if (!(id == null || authorId == null)) {
                ArrayList arrayList2 = new ArrayList();
                for (Attachment attachment : commentResponse.getAttachments()) {
                    if (map.containsKey(attachment.getId())) {
                        arrayList2.add(map.get(attachment.getId()));
                    }
                }
                if (stateIdMapper2.hasLocalId(id)) {
                    j = stateIdMapper2.getLocalId(id).longValue();
                } else {
                    j = IdUtil.newLongId();
                    stateIdMapper2 = stateIdMapper2.addIdMapping(id, Long.valueOf(j));
                }
                arrayList.add(new StateMessage(commentResponse.getHtmlBody(), commentResponse.getBody(), commentResponse.getCreatedAt(), j, authorId.longValue(), StateMessageStatus.delivered(), arrayList2));
            }
        }
        return Pair.create(arrayList, stateIdMapper2.copy());
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StateMessage stateMessage = (StateMessage) obj;
        if (this.f1895id != stateMessage.f1895id || this.userId != stateMessage.userId) {
            return false;
        }
        if (this.htmlBody != null) {
            if (!this.htmlBody.equals(stateMessage.htmlBody)) {
                return false;
            }
        } else if (stateMessage.htmlBody != null) {
            return false;
        }
        if (this.plainBody != null) {
            if (!this.plainBody.equals(stateMessage.plainBody)) {
                return false;
            }
        } else if (stateMessage.plainBody != null) {
            return false;
        }
        if (this.date != null) {
            if (!this.date.equals(stateMessage.date)) {
                return false;
            }
        } else if (stateMessage.date != null) {
            return false;
        }
        if (this.state != null) {
            if (!this.state.equals(stateMessage.state)) {
                return false;
            }
        } else if (stateMessage.state != null) {
            return false;
        }
        if (this.attachments != null) {
            z = this.attachments.equals(stateMessage.attachments);
        } else if (stateMessage.attachments != null) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<StateRequestAttachment> getAttachments() {
        return this.attachments;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getBody() {
        return StringUtils.hasLength(this.plainBody) ? this.plainBody : UtilsAttachment.getMessageBodyForAttachments(getAttachments());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Date getDate() {
        return this.date;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getHtmlBody() {
        return this.htmlBody;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getId() {
        return this.f1895id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getPlainBody() {
        return this.plainBody;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMessageStatus getState() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.htmlBody, this.plainBody, this.date, Long.valueOf(this.f1895id), Long.valueOf(this.userId), this.state, this.attachments});
    }

    public String toString() {
        return "Message{htmlBody='" + this.htmlBody + "', plainBody='" + this.plainBody + "', date=" + this.date + ", id=" + this.f1895id + ", userId=" + this.userId + ", state=" + this.state + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMessage withAttachments(List<StateRequestAttachment> list) {
        return new StateMessage(this.htmlBody, this.plainBody, this.date, this.f1895id, this.userId, this.state, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMessage withDelivered() {
        return new StateMessage(this.htmlBody, this.plainBody, this.date, this.f1895id, this.userId, StateMessageStatus.delivered(), this.attachments);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMessage withError(ErrorResponse errorResponse) {
        return new StateMessage(this.htmlBody, this.plainBody, this.date, this.f1895id, this.userId, StateMessageStatus.error(errorResponse.getReason()), this.attachments);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMessage withPending() {
        return new StateMessage(this.htmlBody, this.plainBody, this.date, this.f1895id, this.userId, StateMessageStatus.pending(), this.attachments);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMessage withUpdatedAttachment(StateRequestAttachment stateRequestAttachment) {
        ArrayList arrayList = new ArrayList(this.attachments.size());
        for (StateRequestAttachment stateRequestAttachment2 : this.attachments) {
            StateRequestAttachment stateRequestAttachment3 = stateRequestAttachment2;
            if (stateRequestAttachment2.getId() == stateRequestAttachment.getId()) {
                stateRequestAttachment3 = stateRequestAttachment;
            }
            arrayList.add(stateRequestAttachment3);
        }
        return new StateMessage(this.htmlBody, this.plainBody, this.date, this.f1895id, this.userId, this.state, arrayList);
    }
}
