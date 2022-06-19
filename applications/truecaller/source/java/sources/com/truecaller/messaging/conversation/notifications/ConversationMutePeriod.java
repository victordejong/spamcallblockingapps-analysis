package com.truecaller.messaging.conversation.notifications;

import com.truecaller.C2752R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0013\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;", "", "", "stringResId", "I", "getStringResId", "()I", "<init>", "(Ljava/lang/String;II)V", "ONE_HOUR", "TWENTY_FOUR_HOURS", "FOREVER", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/notifications/ConversationMutePeriod.class */
public enum ConversationMutePeriod {
    ONE_HOUR(C2752R.string.conversation_notification_mute_period_hour),
    TWENTY_FOUR_HOURS(C2752R.string.conversation_notification_mute_period_day),
    FOREVER(C2752R.string.conversation_notification_mute_period_forever);
    
    private final int stringResId;

    ConversationMutePeriod(int i) {
        this.stringResId = i;
    }

    public final int getStringResId() {
        return this.stringResId;
    }
}
