package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.huawei.hms.api.ConnectionResult;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Message.class */
public class Message {
    public static final int DO_NOT_DISPLAY = -1;
    public static final int DO_NOT_TRANSLATE = 0;
    public static final int MESSAGE_READ = 1;
    public static final int MESSAGE_UNREAD = 0;
    public static final int MUST_TRANSLATE = 1;
    public static final int MUST_TRANSLATE_BUT_TRANSLATION_FAILED = 2;
    public static final int RESPONSE_GIVEN = 1;
    public static final int RESPONSE_PENDING = 0;
    public static final int SHOULD_DELETE = 1;
    public static final int SHOULD_NOT_DELETE = 0;
    public static final int SOURCE_MOBILE = 2;
    public static final int UPLOAD_STATE_PENDING = 0;
    public static final int UPLOAD_STATE_UPLOADED = 1;
    private String alias;
    private long channelId;
    private long conversationId;
    private long createdMillis;
    private String flowStepId;
    @b("messageId")

    /* renamed from: id */
    private long f4102id;
    private MessageInternalMeta internalMeta;
    private boolean isResponded;
    private long marketingId;
    private List<MessageFragment> messageFragments;
    private int messageType;
    private String messageUserAlias;
    private String messageUserName;
    private String messageUserProfilePic;
    private int messageUserType;
    @b("readByUser")
    private boolean read;
    private List<MessageFragment> replyFragments;
    private ReplyTo replyTo;
    private int shouldTranslate;
    private int source = 2;
    private List<TriggeredRuleId> triggeredRuleIds;
    private transient int uploadState;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Message$Builder.class */
    public static class Builder {
        private String alias;
        private long channelId;
        private long createdMillis;
        private String flowStepId;
        private long hostConversationId;

        /* renamed from: id */
        private long f4103id;
        private MessageInternalMeta internalMeta;
        private boolean isResponded;
        private long marketingId;
        private int messageType;
        private String messageUserAlias;
        private String messageUserName;
        private String messageUserProfilePic;
        private int messageUserType;
        private boolean read;
        private List<MessageFragment> replyFragments;
        private ReplyTo replyTo;
        private int shouldTranslate;
        private int source = 2;
        private int uploadState;

        public Builder alias(String str) {
            this.alias = str;
            return this;
        }

        public Message build() {
            Message message = new Message();
            message.f4102id = this.f4103id;
            message.alias = this.alias;
            message.channelId = this.channelId;
            message.marketingId = this.marketingId;
            message.messageType = this.messageType;
            message.conversationId = this.hostConversationId;
            message.messageUserType = this.messageUserType;
            message.messageUserAlias = this.messageUserAlias;
            message.source = this.source;
            message.read = this.read;
            message.createdMillis = this.createdMillis;
            message.uploadState = this.uploadState;
            message.replyFragments = this.replyFragments;
            message.internalMeta = this.internalMeta;
            message.replyTo = this.replyTo;
            message.isResponded = this.isResponded;
            message.shouldTranslate = this.shouldTranslate;
            message.flowStepId = this.flowStepId;
            message.messageUserName = this.messageUserName;
            message.messageUserProfilePic = this.messageUserProfilePic;
            return message;
        }

        public Builder channelId(long j) {
            this.channelId = j;
            return this;
        }

        public Builder createdMillis(long j) {
            this.createdMillis = j;
            return this;
        }

        public Builder hostConversationId(long j) {
            this.hostConversationId = j;
            return this;
        }

        /* renamed from: id */
        public Builder m40823id(long j) {
            this.f4103id = j;
            return this;
        }

        public Builder internalMeta(MessageInternalMeta messageInternalMeta) {
            this.internalMeta = messageInternalMeta;
            return this;
        }

        public Builder isResponded(boolean z) {
            this.isResponded = z;
            return this;
        }

        public Builder marketingId(long j) {
            this.marketingId = j;
            return this;
        }

        public Builder messageType(int i) {
            this.messageType = i;
            return this;
        }

        public Builder messageUserAlias(String str) {
            this.messageUserAlias = str;
            return this;
        }

        public Builder messageUserType(int i) {
            this.messageUserType = i;
            return this;
        }

        public Builder read(boolean z) {
            this.read = z;
            return this;
        }

        public Builder replyFragments(List<MessageFragment> list) {
            this.replyFragments = list;
            return this;
        }

        public Builder replyTo(ReplyTo replyTo) {
            this.replyTo = replyTo;
            return this;
        }

        public Builder setFlowStepId(String str) {
            this.flowStepId = str;
            return this;
        }

        public Builder setMessageUserName(String str) {
            this.messageUserName = str;
            return this;
        }

        public Builder setMessageUserProfilePic(String str) {
            this.messageUserProfilePic = str;
            return this;
        }

        public Builder setShouldTranslate(int i) {
            this.shouldTranslate = i;
            return this;
        }

        public Builder uploadState(int i) {
            this.uploadState = i;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Message$MessageType.class */
    public enum MessageType {
        MESSAGE_TYPE_UNKNOWN(-1),
        MESSAGE_TYPE_NORMAL(1),
        BOT(2),
        FREDDY_BOT(3),
        POSTBACK_MESSAGE(1001),
        MESSAGE_TYPE_CALENDER_INVITE_SENT_BY_AGENT(9001),
        MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED),
        MESSAGE_TYPE_CALENDER_BOOKING_SUCCESS(ConnectionResult.RESTRICTED_PROFILE),
        MESSAGE_TYPE_CALENDER_BOOKING_FAILURE(ConnectionResult.SERVICE_UPDATING);
        
        private final int intValue;

        MessageType(int i) {
            this.intValue = i;
        }

        public static MessageType getMessageTypeFromIntValue(int i) {
            MessageType[] values = values();
            for (int i2 = 0; i2 < 9; i2++) {
                MessageType messageType = values[i2];
                if (messageType.getIntValue() == i) {
                    return messageType;
                }
            }
            return MESSAGE_TYPE_UNKNOWN;
        }

        public int getIntValue() {
            return this.intValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Message$ReplyTo.class */
    public static class ReplyTo {
        private long originalMessageId;

        public long getOriginalMessageId() {
            return this.originalMessageId;
        }

        public void setOriginalMessageId(long j) {
            this.originalMessageId = j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ReplyTo{originalMessageId=");
            m8728C.append(this.originalMessageId);
            m8728C.append('}');
            return m8728C.toString();
        }
    }

    public void addMessageFragment(MessageFragment messageFragment) {
        if (this.messageFragments == null) {
            this.messageFragments = new ArrayList();
        }
        if (messageFragment != null) {
            this.messageFragments.add(messageFragment);
        }
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Message message = (Message) obj;
        int m39900b = C1716k.m39900b(this.messageFragments);
        boolean z = this.marketingId == message.marketingId && this.channelId == message.channelId && this.conversationId == message.conversationId && this.messageUserType == message.messageUserType && this.source == message.source && this.read == message.read && this.createdMillis == message.createdMillis && this.uploadState == message.uploadState && this.messageType == message.messageType && C1626as.m40223o(this.alias, message.alias) && C1626as.m40223o(this.messageUserAlias, message.messageUserAlias) && m39900b == C1716k.m39900b(message.messageFragments) && C1716k.m39900b(this.replyFragments) == C1716k.m39900b(message.replyFragments) && ((this.internalMeta == null && message.internalMeta == null) || !(this.internalMeta == null || message.internalMeta == null)) && this.f4102id == message.f4102id && this.isResponded == message.isResponded && this.shouldTranslate == message.shouldTranslate && C1626as.m40223o(this.flowStepId, message.flowStepId) && C1626as.m40223o(this.messageUserName, message.messageUserName) && C1626as.m40223o(this.messageUserProfilePic, message.messageUserProfilePic);
        ReplyTo replyTo = this.replyTo;
        char c = 0;
        char c2 = replyTo != null ? replyTo.originalMessageId : (char) 0;
        ReplyTo replyTo2 = message.replyTo;
        if (replyTo2 != null) {
            c = replyTo2.originalMessageId;
        }
        if (!(z && c2 == c)) {
            return false;
        }
        if (this.messageFragments == null || message.messageFragments == null) {
            return true;
        }
        for (int i = 0; i < m39900b; i++) {
            if (!this.messageFragments.get(i).equals(message.getMessageFragments().get(i))) {
                return false;
            }
        }
        return true;
    }

    public String getAlias() {
        return this.alias;
    }

    public long getChannelId() {
        return this.channelId;
    }

    public long getConversationId() {
        return this.conversationId;
    }

    public long getCreatedMillis() {
        return this.createdMillis;
    }

    public String getFlowStepId() {
        return this.flowStepId;
    }

    public long getId() {
        return this.f4102id;
    }

    public MessageInternalMeta getInternalMeta() {
        return this.internalMeta;
    }

    public long getMarketingId() {
        return this.marketingId;
    }

    public List<MessageFragment> getMessageFragments() {
        return this.messageFragments;
    }

    public int getMessageType() {
        return this.messageType;
    }

    public String getMessageUserAlias() {
        return this.messageUserAlias;
    }

    public String getMessageUserName() {
        return this.messageUserName;
    }

    public String getMessageUserProfilePic() {
        return this.messageUserProfilePic;
    }

    public int getMessageUserType() {
        return this.messageUserType;
    }

    public List<MessageFragment> getReplyFragments() {
        return this.replyFragments;
    }

    public ReplyTo getReplyTo() {
        return this.replyTo;
    }

    public int getShouldTranslate() {
        return this.shouldTranslate;
    }

    public List<TriggeredRuleId> getTriggeredRuleIds() {
        return this.triggeredRuleIds;
    }

    public int getUploadState() {
        return this.uploadState;
    }

    public boolean isRead() {
        return this.read;
    }

    public boolean isResponded() {
        return this.isResponded;
    }

    public boolean isUploaded() {
        boolean z = true;
        if (this.uploadState != 1) {
            z = false;
        }
        return z;
    }

    public boolean isUserMessage() {
        return this.messageUserType == 0;
    }

    public void setAlias(String str) {
        this.alias = str;
    }

    public void setChannelId(long j) {
        this.channelId = j;
    }

    public void setConversationId(long j) {
        this.conversationId = j;
    }

    public void setCreatedMillis(long j) {
        this.createdMillis = j;
    }

    public void setFlowStepId(String str) {
        this.flowStepId = str;
    }

    public void setId(long j) {
        this.f4102id = j;
    }

    public void setInternalMeta(MessageInternalMeta messageInternalMeta) {
        this.internalMeta = messageInternalMeta;
    }

    public void setMarketingId(long j) {
        this.marketingId = j;
    }

    public void setMessageFragments(List<MessageFragment> list) {
        if (this.messageFragments == null) {
            this.messageFragments = new ArrayList();
        }
        if (C1716k.m39902a(list)) {
            this.messageFragments.clear();
            this.messageFragments.addAll(list);
        }
    }

    public void setMessageType(int i) {
        this.messageType = i;
    }

    public void setMessageUserAlias(String str) {
        this.messageUserAlias = str;
    }

    public void setMessageUserName(String str) {
        this.messageUserName = str;
    }

    public void setMessageUserProfilePic(String str) {
        this.messageUserProfilePic = str;
    }

    public void setMessageUserType(int i) {
        this.messageUserType = i;
    }

    public void setRead(boolean z) {
        this.read = z;
    }

    public void setReplyFragments(List<MessageFragment> list) {
        this.replyFragments = list;
    }

    public void setReplyTo(ReplyTo replyTo) {
        this.replyTo = replyTo;
    }

    public void setResponded(boolean z) {
        this.isResponded = z;
    }

    public void setShouldTranslate(int i) {
        this.shouldTranslate = i;
    }

    public void setTriggeredRuleIds(List<TriggeredRuleId> list) {
        this.triggeredRuleIds = list;
    }

    public void setUploadState(int i) {
        this.uploadState = i;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("Message{", "alias='");
        C22128a.m8678P0(m8704I, this.alias, '\'', ", marketingId=");
        m8704I.append(this.marketingId);
        m8704I.append(", id=");
        m8704I.append(this.f4102id);
        m8704I.append(", channelId='");
        m8704I.append(this.channelId);
        m8704I.append('\'');
        m8704I.append(", messageType= '");
        m8704I.append(this.messageType);
        m8704I.append('\'');
        m8704I.append(", conversationId=");
        m8704I.append(this.conversationId);
        m8704I.append(", messageUserType=");
        m8704I.append(this.messageUserType);
        m8704I.append(", messageUserAlias='");
        C22128a.m8678P0(m8704I, this.messageUserAlias, '\'', ", source=");
        m8704I.append(this.source);
        m8704I.append(", read=");
        m8704I.append(this.read);
        m8704I.append(", createdMillis=");
        m8704I.append(this.createdMillis);
        m8704I.append(", uploadState=");
        m8704I.append(this.uploadState);
        m8704I.append(", messageFragments=");
        m8704I.append(this.messageFragments);
        m8704I.append(", replyFragments=");
        m8704I.append(this.replyFragments);
        m8704I.append(", internalMeta=");
        m8704I.append(this.internalMeta);
        m8704I.append(", replyTo=");
        m8704I.append(this.replyTo);
        m8704I.append(", isResponded=");
        m8704I.append(this.isResponded);
        m8704I.append(", shouldTranslate=");
        m8704I.append(this.shouldTranslate);
        m8704I.append(", flowStepId=");
        m8704I.append(this.flowStepId);
        m8704I.append(", messageUserName=");
        m8704I.append(this.messageUserName);
        m8704I.append(", messageUserProfilePic=");
        return C22128a.m8630e(m8704I, this.messageUserProfilePic, '}');
    }
}
