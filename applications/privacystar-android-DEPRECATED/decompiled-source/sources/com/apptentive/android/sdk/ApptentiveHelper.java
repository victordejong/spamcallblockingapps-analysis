package com.apptentive.android.sdk;

import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchQueueType;
import com.apptentive.android.sdk.util.threading.DispatchTask;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveHelper.class */
public final class ApptentiveHelper {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveHelper$Holder.class */
    public static class Holder {
        static DispatchQueue CONVERSATION_QUEUE = createConversationQueue();
        static DispatchQueue CONVERSATION_DATA_QUEUE = createConversationDataQueue();

        private Holder() {
        }

        private static DispatchQueue createConversationDataQueue() {
            try {
                return DispatchQueue.createBackgroundQueue("Apptentive Conversation Data Queue", DispatchQueueType.Serial);
            } catch (Exception e) {
                return null;
            }
        }

        private static DispatchQueue createConversationQueue() {
            try {
                return DispatchQueue.createBackgroundQueue("Apptentive Queue", DispatchQueueType.Serial);
            } catch (Exception e) {
                return null;
            }
        }
    }

    public static void checkConversationQueue() {
        Assert.assertDispatchQueue(conversationQueue());
    }

    public static DispatchQueue conversationDataQueue() {
        return Holder.CONVERSATION_DATA_QUEUE;
    }

    public static DispatchQueue conversationQueue() {
        return Holder.CONVERSATION_QUEUE;
    }

    public static void dispatchConversationTask(ConversationDispatchTask conversationDispatchTask, String str) {
        dispatchOnConversationQueue(conversationDispatchTask.setDescription(str));
    }

    public static void dispatchOnConversationQueue(DispatchTask dispatchTask) {
        conversationQueue().dispatchAsync(dispatchTask);
    }

    public static boolean dispatchOnConversationQueueOnce(DispatchTask dispatchTask, long j) {
        return conversationQueue().dispatchAsyncOnce(dispatchTask, j);
    }

    public static boolean isConversationQueue() {
        return conversationQueue().isCurrent();
    }
}
