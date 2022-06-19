package com.truecaller.messaging.conversation;

import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0013\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/messaging/conversation/ConversationMode;", "", "", AnalyticsConstants.CONTEXT, "Ljava/lang/String;", "getContext", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "DEFAULT", "SCHEDULE", "IM", "SMS", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ConversationMode.class */
public enum ConversationMode {
    DEFAULT("conversation"),
    SCHEDULE("scheduledMessages"),
    IM("conversation"),
    SMS("conversation");
    
    private final String context;

    ConversationMode(String str) {
        this.context = str;
    }

    public final String getContext() {
        return this.context;
    }
}
