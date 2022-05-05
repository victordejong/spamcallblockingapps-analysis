package com.privacystar.core.data.sqlite.p008db.messages;
/* renamed from: com.privacystar.core.data.sqlite.db.messages.MessagesModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/messages/MessagesModel.class */
public class MessagesModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.messages.MessagesModel$Message */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/messages/MessagesModel$Message.class */
    public static class Message {
        public String batchId;
        public String expiredDate;
        public String keyFrom;
        public boolean markUnread;
        public String message;
        public String messageTitle;
        public String messageType;
        public String notifyId;
        public boolean processed;
        public long processedDts;
        public long receivedDts;
        public String tranId;

        public Message() {
        }

        public Message(String str, String str2, String str3, String str4, String str5, String str6, boolean z, long j, long j2, String str7, boolean z2, String str8) {
            this.tranId = str;
            this.notifyId = str2;
            this.keyFrom = str3;
            this.messageType = str4;
            this.messageTitle = str5;
            this.message = str6;
            this.processed = z;
            this.receivedDts = j;
            this.processedDts = j2;
            this.batchId = str7;
            this.markUnread = z2;
            this.expiredDate = str8;
        }
    }
}
