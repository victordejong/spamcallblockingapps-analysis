package zendesk.support.requestlist;

import android.support.annotation.RestrictTo;
import java.util.Date;
import java.util.List;
import java.util.Set;
import zendesk.support.RequestStatus;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfo.class */
public class RequestInfo {
    private final List<AgentInfo> agentInfos;
    private final Set<String> failedMessageIds;
    private final MessageInfo firstMessageInfo;
    private final MessageInfo lastMessageInfo;
    private final Date lastUpdated;
    private final String localId;
    private final String remoteId;
    private final RequestStatus requestStatus;
    private final boolean unread;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfo$AgentInfo.class */
    public static class AgentInfo {
        private final String avatar;

        /* renamed from: id */
        private final String f1900id;
        private final String name;

        public AgentInfo(String str, String str2, String str3) {
            this.f1900id = str;
            this.name = str2;
            this.avatar = str3;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AgentInfo agentInfo = (AgentInfo) obj;
            if (this.f1900id != null) {
                if (!this.f1900id.equals(agentInfo.f1900id)) {
                    return false;
                }
            } else if (agentInfo.f1900id != null) {
                return false;
            }
            if (this.name != null) {
                if (!this.name.equals(agentInfo.name)) {
                    return false;
                }
            } else if (agentInfo.name != null) {
                return false;
            }
            if (this.avatar != null) {
                z = this.avatar.equals(agentInfo.avatar);
            } else if (agentInfo.avatar != null) {
                z = false;
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getAvatar() {
            return this.avatar;
        }

        String getId() {
            return this.f1900id;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getName() {
            return this.name;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.f1900id != null ? this.f1900id.hashCode() : 0;
            int hashCode2 = this.name != null ? this.name.hashCode() : 0;
            if (this.avatar != null) {
                i = this.avatar.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestInfo$MessageInfo.class */
    public static class MessageInfo {
        private final String body;
        private final Date date;

        /* renamed from: id */
        private final String f1901id;

        public MessageInfo(String str, Date date, String str2) {
            this.f1901id = str;
            this.date = date;
            this.body = str2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            MessageInfo messageInfo = (MessageInfo) obj;
            if (this.f1901id != null) {
                if (!this.f1901id.equals(messageInfo.f1901id)) {
                    return false;
                }
            } else if (messageInfo.f1901id != null) {
                return false;
            }
            if (this.date != null) {
                if (!this.date.equals(messageInfo.date)) {
                    return false;
                }
            } else if (messageInfo.date != null) {
                return false;
            }
            if (this.body != null) {
                z = this.body.equals(messageInfo.body);
            } else if (messageInfo.body != null) {
                z = false;
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getBody() {
            return this.body;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Date getDate() {
            return this.date;
        }

        String getId() {
            return this.f1901id;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.f1901id != null ? this.f1901id.hashCode() : 0;
            int hashCode2 = this.date != null ? this.date.hashCode() : 0;
            if (this.body != null) {
                i = this.body.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }
    }

    public RequestInfo(String str, String str2, RequestStatus requestStatus, boolean z, Date date, List<AgentInfo> list, MessageInfo messageInfo, MessageInfo messageInfo2, Set<String> set) {
        this.localId = str;
        this.remoteId = str2;
        this.requestStatus = requestStatus;
        this.unread = z;
        this.lastUpdated = date;
        this.agentInfos = list;
        this.firstMessageInfo = messageInfo;
        this.lastMessageInfo = messageInfo2;
        this.failedMessageIds = set;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RequestInfo requestInfo = (RequestInfo) obj;
        if (this.unread != requestInfo.unread) {
            return false;
        }
        if (this.localId != null) {
            if (!this.localId.equals(requestInfo.localId)) {
                return false;
            }
        } else if (requestInfo.localId != null) {
            return false;
        }
        if (this.remoteId != null) {
            if (!this.remoteId.equals(requestInfo.remoteId)) {
                return false;
            }
        } else if (requestInfo.remoteId != null) {
            return false;
        }
        if (this.requestStatus != requestInfo.requestStatus) {
            return false;
        }
        if (this.lastUpdated != null) {
            if (!this.lastUpdated.equals(requestInfo.lastUpdated)) {
                return false;
            }
        } else if (requestInfo.lastUpdated != null) {
            return false;
        }
        if (this.agentInfos != null) {
            if (!this.agentInfos.equals(requestInfo.agentInfos)) {
                return false;
            }
        } else if (requestInfo.agentInfos != null) {
            return false;
        }
        if (this.firstMessageInfo != null) {
            if (!this.firstMessageInfo.equals(requestInfo.firstMessageInfo)) {
                return false;
            }
        } else if (requestInfo.firstMessageInfo != null) {
            return false;
        }
        if (this.lastMessageInfo != null) {
            if (!this.lastMessageInfo.equals(requestInfo.lastMessageInfo)) {
                return false;
            }
        } else if (requestInfo.lastMessageInfo != null) {
            return false;
        }
        if (this.failedMessageIds != null) {
            z = this.failedMessageIds.equals(requestInfo.failedMessageIds);
        } else if (requestInfo.failedMessageIds != null) {
            z = false;
        }
        return z;
    }

    public List<AgentInfo> getAgentInfos() {
        return this.agentInfos;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> getFailedMessageIds() {
        return this.failedMessageIds;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageInfo getFirstMessageInfo() {
        return this.firstMessageInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageInfo getLastMessageInfo() {
        return this.lastMessageInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Date getLastUpdated() {
        return this.lastUpdated;
    }

    public String getLocalId() {
        return this.localId;
    }

    public String getRemoteId() {
        return this.remoteId;
    }

    public RequestStatus getRequestStatus() {
        return this.requestStatus;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.localId != null ? this.localId.hashCode() : 0;
        int hashCode2 = this.remoteId != null ? this.remoteId.hashCode() : 0;
        int hashCode3 = this.requestStatus != null ? this.requestStatus.hashCode() : 0;
        boolean z = this.unread;
        int hashCode4 = this.lastUpdated != null ? this.lastUpdated.hashCode() : 0;
        int hashCode5 = this.agentInfos != null ? this.agentInfos.hashCode() : 0;
        int hashCode6 = this.firstMessageInfo != null ? this.firstMessageInfo.hashCode() : 0;
        int hashCode7 = this.lastMessageInfo != null ? this.lastMessageInfo.hashCode() : 0;
        if (this.failedMessageIds != null) {
            i = this.failedMessageIds.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + (z ? 1 : 0)) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isClosed() {
        return RequestStatus.Closed.equals(this.requestStatus);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUnread() {
        return this.unread;
    }
}
