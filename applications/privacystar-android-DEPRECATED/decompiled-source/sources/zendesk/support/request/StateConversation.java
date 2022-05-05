package zendesk.support.request;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import zendesk.suas.State;
import zendesk.support.RequestStatus;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateConversation.class */
public class StateConversation implements Serializable {
    private final StateIdMapper attachmentIdMapper;
    private final boolean hasAgentReplies;
    private final String localId;
    private final StateIdMapper messageIdMapper;
    private final List<StateMessage> messages;
    private final String remoteId;
    private final RequestStatus status;
    private final List<StateRequestUser> users;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateConversation$Builder.class */
    static class Builder {
        private StateIdMapper attachmentIdMapper;
        private boolean hasAgentReplies;
        private String localId;
        private StateIdMapper messageIdMapper;
        private List<StateMessage> messages;
        private String remoteId;
        private RequestStatus status;
        private List<StateRequestUser> users;

        private Builder(String str, String str2, RequestStatus requestStatus, boolean z, List<StateMessage> list, List<StateRequestUser> list2, StateIdMapper stateIdMapper, StateIdMapper stateIdMapper2) {
            this.localId = str;
            this.remoteId = str2;
            this.status = requestStatus;
            this.hasAgentReplies = z;
            this.messages = list;
            this.users = list2;
            this.attachmentIdMapper = stateIdMapper;
            this.messageIdMapper = stateIdMapper2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public StateConversation build() {
            return new StateConversation(this.localId, this.remoteId, this.status, this.hasAgentReplies, this.messages, this.users, this.attachmentIdMapper, this.messageIdMapper);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setAttachmentIdMapper(StateIdMapper stateIdMapper) {
            this.attachmentIdMapper = stateIdMapper;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setHasAgentReplies(boolean z) {
            this.hasAgentReplies = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setLocalId(String str) {
            this.localId = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setMessageIdMapper(StateIdMapper stateIdMapper) {
            this.messageIdMapper = stateIdMapper;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setMessages(List<StateMessage> list) {
            this.messages = list;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setRemoteId(String str) {
            this.remoteId = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setStatus(RequestStatus requestStatus) {
            this.status = requestStatus;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setUsers(List<StateRequestUser> list) {
            this.users = list;
            if (!this.hasAgentReplies) {
                this.hasAgentReplies = StateRequestUser.containsAgent(list);
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateConversation() {
        this.localId = "";
        this.remoteId = "";
        this.status = null;
        this.hasAgentReplies = false;
        this.messages = new ArrayList();
        this.users = new ArrayList();
        this.attachmentIdMapper = new StateIdMapper();
        this.messageIdMapper = new StateIdMapper();
    }

    private StateConversation(String str, String str2, RequestStatus requestStatus, boolean z, List<StateMessage> list, List<StateRequestUser> list2, StateIdMapper stateIdMapper, StateIdMapper stateIdMapper2) {
        this.localId = str;
        this.remoteId = str2;
        this.status = requestStatus;
        this.hasAgentReplies = z;
        this.messages = list;
        this.users = list2;
        this.attachmentIdMapper = stateIdMapper;
        this.messageIdMapper = stateIdMapper2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateConversation fromState(State state) {
        StateConversation stateConversation = (StateConversation) state.getState(StateConversation.class);
        return stateConversation != null ? stateConversation : new StateConversation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateIdMapper getAttachmentIdMapper() {
        return this.attachmentIdMapper;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getLocalId() {
        return this.localId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateIdMapper getMessageIdMapper() {
        return this.messageIdMapper;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<StateMessage> getMessages() {
        return this.messages;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getRemoteId() {
        return this.remoteId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestStatus getStatus() {
        return this.status;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<StateRequestUser> getUsers() {
        return this.users;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasAgentReplies() {
        return this.hasAgentReplies;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Builder newBuilder() {
        return new Builder(this.localId, this.remoteId, this.status, this.hasAgentReplies, this.messages, this.users, this.attachmentIdMapper, this.messageIdMapper);
    }

    public String toString() {
        return "Conversation{localId='" + this.localId + "', remoteId='" + this.remoteId + "', messages=" + this.messages + ", users=" + this.users + ", attachmentIdMapper=" + this.attachmentIdMapper + ", messageIdMapper=" + this.messageIdMapper + '}';
    }
}
