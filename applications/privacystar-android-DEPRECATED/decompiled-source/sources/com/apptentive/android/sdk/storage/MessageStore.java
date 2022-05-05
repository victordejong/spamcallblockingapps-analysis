package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.model.ApptentiveMessage;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/MessageStore.class */
public interface MessageStore {
    void addOrUpdateMessages(ApptentiveMessage... apptentiveMessageArr);

    void deleteAllMessages();

    void deleteMessage(String str);

    ApptentiveMessage findMessage(String str);

    List<ApptentiveMessage> getAllMessages() throws Exception;

    String getLastReceivedMessageId() throws Exception;

    int getUnreadMessageCount() throws Exception;

    void updateMessage(ApptentiveMessage apptentiveMessage);
}
