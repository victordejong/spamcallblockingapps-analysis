package com.truecaller.messaging.conversation.richtext;

import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0019\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;", "", "", "allowMultiline", "Z", "getAllowMultiline", "()Z", "", "delimiter", "Ljava/lang/String;", "getDelimiter", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;Z)V", "BOLD", "ITALIC", "UNDERLINE", "STRIKETHROUGH", "MONOSPACE_MULTILINE", "MONOSPACE", "messaging-common_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/richtext/FormattingStyle.class */
public enum FormattingStyle {
    BOLD("*", false),
    ITALIC(AnalyticsConstants.DELIMITER_MAIN, false),
    UNDERLINE("+", false),
    STRIKETHROUGH("~", false),
    MONOSPACE_MULTILINE("```", true),
    MONOSPACE("`", false);
    
    private final boolean allowMultiline;
    private final String delimiter;

    FormattingStyle(String str, boolean z) {
        this.delimiter = str;
        this.allowMultiline = z;
    }

    public final boolean getAllowMultiline() {
        return this.allowMultiline;
    }

    public final String getDelimiter() {
        return this.delimiter;
    }
}
